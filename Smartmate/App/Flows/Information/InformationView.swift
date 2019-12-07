//
//  InformationView.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct InformationView: View {
    @EnvironmentObject var viewModel: InformationViewModel
    @State private var changingProfileInfo: Bool = false
    
    var body: some View {
        NavigationView {
            EmptyView()
            .navigationBarTitle("About me")
            .navigationBarItems(trailing: infoButton)
        }
    }
    
    var infoButton: some View {
        Button(action: {
            self.changingProfileInfo.toggle()
        }) {
            Text("Edit")
        }
        .sheet(isPresented: $changingProfileInfo) {
            ProfileView()
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
