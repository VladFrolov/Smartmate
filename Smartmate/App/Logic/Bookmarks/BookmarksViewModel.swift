//
//  BookmarksViewModel.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI
import Combine

final class BookmarksViewModel: ObservableObject {
    
    // TODO: Убрать после создания БД
    private var buffer: [BookmarkModel] = []
    
    @Published var bookmarks: [BookmarkModel] = [BookmarkModel(name: "Swift 5.1", image: "swift"),
                                                 BookmarkModel(name: "RxSwift", image: "rxSwift"),
                                                 BookmarkModel(name: "Grand Central Dispatch", image: "gcd", isFavorite: true)]
    @Published var showFavorite: Bool = false {
        didSet {
            filterBookmarks()
        }
    }
    
    private func filterBookmarks() {
        if showFavorite {
            buffer = bookmarks
            bookmarks = bookmarks.filter { $0.isFavorite }
        } else {
            bookmarks = buffer
        }
    }
}
