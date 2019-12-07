//
//  MainTabView.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    @State var selected: Int = Screen.bookmarks.tag
    
    var body: some View {
        TabView(selection: $selected) {
            BookmarkList()
                .environmentObject(BookmarksViewModel())
                .tabItem({
                    TabItem(icon: Screen.bookmarks.icon, title: "Bookmarks")
                })
                .tag(Screen.bookmarks.tag)
            TaskList()
                .environmentObject(TasksViewModel())
                .tabItem({
                    TabItem(icon: Screen.tasks.icon, title: "Tasks")
                })
                .tag(Screen.tasks.tag)
            InformationView()
                .environmentObject(InformationViewModel())
                .tabItem({
                    TabItem(icon: Screen.information.icon, title: "Me")
                })
                .tag(Screen.information.tag)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
