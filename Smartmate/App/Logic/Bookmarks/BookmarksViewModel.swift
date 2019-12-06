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
    
    @Published var bookmarks: [BookmarkModel] = [BookmarkModel(name: "UIKit depricated")]
    
}
