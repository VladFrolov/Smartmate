//
//  BookmarkList.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct BookmarkList: View {
    @EnvironmentObject var viewModel: BookmarksViewModel
    
    var body: some View {
        NavigationView {
            List {
                Toggle("Favorite only", isOn: $viewModel.showFavorite)
                ForEach(viewModel.bookmarks) { bookmark in
                    BookmarkRow(bookmark: bookmark)
                }
            }
            .navigationBarTitle("Bookmarks")
        }
    }
}

struct BookmarkList_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkList()
    }
}
