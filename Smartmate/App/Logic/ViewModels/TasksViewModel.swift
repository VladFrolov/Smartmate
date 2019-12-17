//
//  TasksViewModel.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI
import Combine

final class TasksViewModel: ObservableObject {
    
    private var tasksList: [Task] = []
    
    @Published var showedTasks: [Task] = []
    @Published var onlyUnresolved: Bool = false {
        didSet {
            filterTasks()
        }
    }
    
    init() {
        TasksAPI.listTasks { (tasks, error) in
            if let tasks = tasks {
                self.tasksList = tasks
            } else if let error = error?.localizedDescription {
                print(error)
            }
        }
    }
    
    private func filterTasks() {
        showedTasks = onlyUnresolved ? tasksList.filter { ($0.isResolved) } : tasksList
    }
}
