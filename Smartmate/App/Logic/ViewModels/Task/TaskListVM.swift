//
//  TaskListVM.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI
import Combine

final class TaskListVM: ObservableObject {
    
    private var tasksList: [Task] = []
    
    @Published private(set) var lastPage: Int = 0
    @Published private(set) var isLoading: Bool = false
    @Published var filteredTasks: [Task] = []
    @Published var onlyUnresolved: Bool = AppData.showOnlyUnresolved {
        didSet {
            AppData.showOnlyUnresolved = onlyUnresolved
            filterTasks()
        }
    }
    
    init() {
        requestData()
    }
    
    func loadPageIfNeeded(_ item: Task) {
        guard self.filteredTasks.isLastItem(item) else { return }
        requestData()
    }
    
    func requestData(limit: Int? = nil) {
        let limit = limit ?? 10
        requestData(page: lastPage + 1, limit: limit)
    }
    
    private func requestData(page: Int, limit: Int) {
        guard !isLoading else { return }
        isLoading = true
        
        TasksAPI.listTasks(page: page, per: limit) { [weak self] (tasks, error) in
            guard let self = self else { return }
            self.isLoading = false
            
            if let tasks = tasks {
                self.tasksList.append(contentsOf: tasks.data)
                self.filterTasks()
                
                self.lastPage = tasks.page.position.current
            } else if let error = error?.localizedDescription {
                print(error)
            }
        }
    }
    
    private func filterTasks() {
        filteredTasks = onlyUnresolved ? tasksList.filter { (!$0.isResolved) } : tasksList
    }
}
