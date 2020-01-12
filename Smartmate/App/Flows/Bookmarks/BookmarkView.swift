//
//  BookmarkView.swift
//  Smartmate
//
//  Created by Владислав Фролов on 03.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct BookmarkView: View {
    var onDismiss: () -> ()
    
    @EnvironmentObject var viewModel: BookmarkVM
    @State var openUrlButtonHidden: Bool = false
    @State var progress: CGFloat = 0.0
    
    var openSafariView: some View {
        HStack() {
            Button(action: { self.openUrlButtonHidden.toggle() }) {
                Image(systemName: "xmark")
            }
            Button(action: {
                guard let url = self.viewModel.bookmarkUrl else { return }
                UIApplication.shared.open(url, options: [:])
            }) {
                Text("Open in Safari")
            }
            .padding(.leading)
            Spacer()
        }
        .padding([.top, .leading, .trailing])
    }
    
    var body: some View {
        VStack {
            if !openUrlButtonHidden {
                openSafariView
            }
            if viewModel.urlIsValid {
                WebView(request: URLRequest(url: viewModel.bookmarkUrl!))
            } else {
                Text("Invalidate link")
            }
        }
    }
}
struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView(onDismiss: { print("dismissed") })
            .environmentObject(BookmarkVM(link: "https://www.apple.com/"))
    }
}
