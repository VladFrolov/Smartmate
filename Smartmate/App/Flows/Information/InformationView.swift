//
//  InformationView.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct InformationView: View {
    
    @State private var showingProfile: Bool = false
    
    var body: some View {
        NavigationView {
            EmptyView()
            .navigationBarTitle("Information")
            .navigationBarItems(trailing: infoButton)
        }
    }
    
    var infoButton: some View {
        Button(action: {
            self.showingProfile = true
        }) {
            Text("Profile")
        }
        .sheet(isPresented: $showingProfile) {
            ProfileView()
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
