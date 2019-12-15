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
    
    @Published var showedBookmarks: [Bookmark] = []
    @Published var onlyFavorite: Bool = false {
        didSet {
            filterBookmarks()
        }
    }
    
    init() {
        BookmarksAPI.listBookmarks { (bookmarks, error) in
            if let bookmarks = bookmarks {
                self.bookmarkList = bookmarks
            } else if let error = error?.localizedDescription {
                print(error)
            }
        }
    }
    
    private func filterBookmarks() {
        showedBookmarks = onlyFavorite ? bookmarkList.filter { $0.isFavorite } : bookmarkList
    }
}
