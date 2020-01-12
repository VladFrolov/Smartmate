//
//  BookmarkRow.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct BookmarkRow: View {
    @State var bookmarkShowed: Bool = false
    let bookmark: Bookmark
    
    var body: some View {
        SoaringView {
            Button(action: { self.bookmarkShowed = true }) {
                HStack {
                    Image(bookmark.imageUrl)
                        .resizable()
                        .frame(width: 36, height: 36)
                        .cornerRadius(8)
                    Text(bookmark.name)
                        .font(.headline)
                    Spacer()
                    Star(isActive: bookmark.isFavorite)
                }
            }.sheet(isPresented: self.$bookmarkShowed) {
                BookmarkView(onDismiss: { self.bookmarkShowed = false })
                    .environmentObject(BookmarkVM(link: self.bookmark.link))
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
