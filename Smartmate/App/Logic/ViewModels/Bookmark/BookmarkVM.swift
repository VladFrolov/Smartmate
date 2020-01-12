//
//  BookmarkVM.swift
//  Smartmate
//
//  Created by Владислав Фролов on 20.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation
import Combine

final class BookmarkVM: ObservableObject {
    
    var bookmarkLink: String
    var bookmarkUrl: URL? {
        return URL(string: bookmarkLink)
    }
    var urlIsValid: Bool {
        return bookmarkUrl != nil
    }
    
    init(link: String) {
        self.bookmarkLink = link
    }
}
