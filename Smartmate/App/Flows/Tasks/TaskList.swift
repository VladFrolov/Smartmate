//
//  TaskList.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct TaskList: View {
    
    @State var tasks = [
        TaskModel(name: "Task №1"),
        TaskModel(name: "Task №2"),
        TaskModel(name: "Task №3")
    ]
    
    var body: some View {
        NavigationView {
            List(tasks) { task in
                NavigationLink(task.name, destination: TaskView())
            }
            .navigationBarTitle("Tasks")
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
    }
}
