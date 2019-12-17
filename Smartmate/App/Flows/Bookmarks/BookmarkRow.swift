//
//  BookmarkRow.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct BookmarkRow: View {
    let bookmark: Bookmark
    
    var body: some View {
        SoaringView(cornerRadius: 20, shadow: 4) {
            NavigationLink(destination: BookmarkView()) {
                HStack {
                    Image(bookmark.imageUrl)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(12)
                    Text(bookmark.name)
                        .font(.headline)
                    Spacer()
                    Star(isActive: bookmark.isFavorite)
                }
            }
            .padding()
        }
    }
}

struct BookmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkRow(bookmark: Bookmark(id: 1, name: "Swift", link: "", imageUrl: "", isFavorite: false, dateCreate: Date(), tag: ""))
            .fixedSize(horizontal: false, vertical: true)
    }
}
