//
//  TaskRow.swift
//  Smartmate
//
//  Created by Владислав Фролов on 07.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
    let task: TaskModel
    
    var body: some View {
        SoaringView {
            NavigationLink(destination: TaskView()) {
                VStack(alignment: .leading) {
                    Text(task.name)
                        .font(.headline)
                    if task.description != nil {
                        Text(task.description ?? "")
                    }
                }
            }
            .padding()
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: TaskModel(name: "Переписать CoreData менеджер", description: "Нужен рефакторинг."))
            .fixedSize(horizontal: false, vertical: true)
    }
}
