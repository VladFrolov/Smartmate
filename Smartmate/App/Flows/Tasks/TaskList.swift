//
//  TaskList.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct TaskList: View {
    @EnvironmentObject var viewModel: TaskListVM
    
    var body: some View {
        List {
            Toggle("Unresolved only", isOn: $viewModel.onlyUnresolved)
            CreateElementRow(addingItemName: "Create task",
                             presentedView: Text("New task creating"))
            ForEach(viewModel.filteredTasks) { task in
                TaskRow(task: task).onAppear {
                    self.viewModel.loadPageIfNeeded(task)
                }
            }
            
            if viewModel.isLoading {
                Loader()
            }
        }
        .embedInNavigation(title: "Tasks")
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
            .environmentObject(TaskListVM())
    }
}
