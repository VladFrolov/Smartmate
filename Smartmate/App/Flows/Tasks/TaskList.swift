//
//  TaskList.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct TaskList: View {
    @EnvironmentObject var viewModel: TasksViewModel
    
    var body: some View {
        NavigationView {
            List {
                CreateElementRow(addingItemName: "Создать задачу",
                                 presentedView: Text("New task creating"))
                ForEach(viewModel.tasks) { task in
                    TaskRow(task: task)
                }
            }
            .navigationBarTitle("Tasks")
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
            .environmentObject(TasksViewModel())
    }
}
