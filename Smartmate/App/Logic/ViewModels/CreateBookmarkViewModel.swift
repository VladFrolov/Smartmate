//
//  CreateBookmarkViewModel.swift
//  Smartmate
//
//  Created by Владислав Фролов on 17.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Combine

class CreateBookmarkViewModel: ObservableObject {
    
    func createNewBookmark(name: String, link: String, imageUrl: String) {
        let bookmark = Bookmark(name: name, image: imageUrl, isFavorite: false)
        BookmarksAPI.createBookmarks(completion: <#T##((Void?, Error?) -> Void)##((Void?, Error?) -> Void)##(Void?, Error?) -> Void#>)
    }
    
}
