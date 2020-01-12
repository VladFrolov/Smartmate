//
//  CreateBookmarkView.swift
//  Smartmate
//
//  Created by Владислав Фролов on 17.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI
import Combine

struct CreateBookmarkView: View {
    
    @EnvironmentObject var viewModel: CreateBookmarkVM
    
    @State var name: String = ""
    @State var link: String = ""
    @State var tag: String = ""
    @State var isFav: Bool = false
    
    var inputView: some View {
        List {
            ForEach(viewModel.section) { row in
                InputRow(title: row.header, placeholder: row.placeholder)
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("New bookmark")
                .font(.title)
                .padding([.top, .bottom])
            inputView
            Toggle(isOn: $isFav, label: {
                Text("Favorite")
            })
                .padding([.top, .bottom])
            
            SoaringView {
                Button(action: {
                    print("do nothing")
                }) {
                    Text("Create".uppercased())
                        .font(.headline)
                        .foregroundColor(.orange)
                }
            }
            .frame(height: 45)
            Spacer()
        }
        .padding()
    }
}


struct CreateBookmarkView_Previews : PreviewProvider {
    static var previews: some View {
        CreateBookmarkView()
            .environmentObject(CreateBookmarkVM())
    }
}
