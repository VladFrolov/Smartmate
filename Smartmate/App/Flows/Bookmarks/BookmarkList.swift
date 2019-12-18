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
        List {
            Toggle("Favorite only", isOn: $viewModel.onlyFavorite)
            CreateElementRow(addingItemName: "Add bookmark",
                             presentedView: Text("New bookmark adding"))
            ForEach(viewModel.filteredBookmarks) { bookmark in
                BookmarkRow(bookmark: bookmark).onAppear {
                    self.viewModel.loadPageIfNeeded(bookmark)
                }
            }
            
            if viewModel.isLoading {
                Loader()
            }
        }
        .embedInNavigation(title: "Bookmarks")
    }
}

struct BookmarkList_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkList()
            .environmentObject(BookmarksViewModel())
    }
}
