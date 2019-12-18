//
//  BookmarksViewModel.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Alamofire
import SwiftUI
import Combine

final class BookmarksViewModel: ObservableObject {
    
    private var bookmarkList: [Bookmark] = []
    
    @Published private(set) var lastPage: Int = 0
    @Published private(set) var isLoading: Bool = false
    @Published var filteredBookmarks: [Bookmark] = []
    @Published var onlyFavorite: Bool = AppData.showOnlyFav {
        didSet {
            AppData.showOnlyFav = onlyFavorite
            filterBookmarks()
        }
    }
    
    init() {
        requestData()
    }
    
    func loadPageIfNeeded(_ item: Bookmark) {
        guard self.filteredBookmarks.isLastItem(item) else { return }
        requestData()
    }
    
    func requestData(limit: Int? = nil) {
        let limit = limit ?? 10
        requestData(page: lastPage + 1, limit: limit)
    }
    
    private func requestData(page: Int, limit: Int) {
        guard !isLoading else { return }
        isLoading = true
        
        BookmarksAPI.listBookmarks(page: page, per: limit) { [weak self] (bookmarks, error) in
            guard let self = self else { return }
            self.isLoading = false
            
            if let bookmarks = bookmarks {
                self.bookmarkList.append(contentsOf: bookmarks.data)
                self.filterBookmarks()
                
                self.lastPage = bookmarks.page.position.current
            } else {
                print(error?.localizedDescription ?? "---->> Error")
            }
        }
    }
    
    private func filterBookmarks() {
        filteredBookmarks = onlyFavorite ? bookmarkList.filter { $0.isFavorite } : bookmarkList
    }
}
