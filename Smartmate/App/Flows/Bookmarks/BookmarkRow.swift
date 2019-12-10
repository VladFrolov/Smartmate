//
//  BookmarkRow.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct BookmarkRow: View {
    let bookmark: BookmarkModel
    
    var body: some View {
        SoaringView(cornerRadius: 20, shadow: 4) {
            NavigationLink(destination: BookmarkView()) {
                HStack {
                    Image(bookmark.image)
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
        BookmarkRow(bookmark: BookmarkModel(name: "Swift", image: "swift"))
            .fixedSize(horizontal: false, vertical: true)
    }
}
