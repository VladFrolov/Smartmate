//
//  CreateBookmarkView.swift
//  Smartmate
//
//  Created by Владислав Фролов on 17.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct CreateBookmarkView: View {
    
    @EnvironmentObject var viewModel: CreateBookmarkViewModel
    
    @State var name: 
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Title:")
            TextField("Enter bookmark name", text: <#T##Binding<String>#>)
        }
    }
}


struct CreateBookmarkView_Previews : PreviewProvider {
    static var previews: some View {
        CreateBookmarkView()
    }
}
