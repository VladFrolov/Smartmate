//
//  MainTabView.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

enum Screen: Int {
    case tasks = 0
    case services = 1
    case information = 2
    
    var tag: Int {
        return rawValue
    }
    
    var icon: String {
        switch self {
        case .tasks:
            return "flag.circle.fill"
        case .services:
            return "dollarsign.circle.fill"
        case .information:
            return "person.crop.circle.fill"
        }
    }
}

struct MainTabView: View {
    var body: some View {
        TabView {
            TaskList()
                .tabItem({
                    TabItem(icon: Screen.tasks.icon, title: "Tasks")
                })
                .tag(Screen.tasks.tag)
            ServiceList()
                .tabItem({
                    TabItem(icon: Screen.services.icon, title: "Services")
                })
                .tag(Screen.services.tag)
            InformationView()
                .tabItem({
                    TabItem(icon: Screen.information.icon, title: "Info")
                })
                .tag(Screen.information.tag)
        }
    }
}

struct TabItem: View {
    
    private var icon: String
    private var title: String
    
    init(icon: String, title: String) {
        self.icon = icon
        self.title = title
    }
    
    var body: some View {
        VStack {
            Image(systemName: icon)
            Text(title)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
