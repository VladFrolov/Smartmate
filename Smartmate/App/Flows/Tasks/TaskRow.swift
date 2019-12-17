//
//  TaskRow.swift
//  Smartmate
//
//  Created by Владислав Фролов on 07.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
    let task: Task
    
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
        TaskRow(task: Task(id: 1, name: "Super Task", description: "", isResolved: false, dateCreate: Date(), dateCompetion: nil, tag: nil))
            .fixedSize(horizontal: false, vertical: true)
    }
}
