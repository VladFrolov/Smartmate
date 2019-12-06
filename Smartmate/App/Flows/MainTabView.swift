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
    case bookmarks = 1
    case information = 2
    
    var tag: Int {
        return rawValue
    }
    
    var icon: String {
        switch self {
        case .tasks:
            return "flag.circle.fill"
        case .bookmarks:
            return "book.circle.fill"
        case .information:
            return "person.crop.circle.fill"
        }
    }
}

struct MainTabView: View {
    @State var selected: Screen = .tasks
    
    var body: some View {
        TabView(selection: $selected) {
            TaskList()
                .environmentObject(TasksViewModel())
                .tabItem({
                    TabItem(icon: Screen.tasks.icon, title: "Tasks")
                })
                .tag(Screen.tasks.tag)
            BookmarkList()
                .environmentObject(BookmarksViewModel())
                .tabItem({
                    TabItem(icon: Screen.bookmarks.icon, title: "Bookmarks")
                })
                .tag(Screen.bookmarks.tag)
            InformationView()
                .environmentObject(InformationViewModel())
                .tabItem({
                    TabItem(icon: Screen.information.icon, title: "Me")
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
