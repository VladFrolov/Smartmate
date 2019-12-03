//
//  ServiceList.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct ServiceList: View {
    
    @State var serviceList = [
        ServiceModel(name: "Service 1"),
        ServiceModel(name: "Service 2"),
        ServiceModel(name: "Service 3")
    ]
    
    var body: some View {
        NavigationView {
            List(serviceList) { service in
                NavigationLink(service.name, destination: ServiceView())
            }
        .navigationBarTitle("Services")
        }
    }
}

struct ServiceList_Previews: PreviewProvider {
    static var previews: some View {
        ServiceList()
    }
}
