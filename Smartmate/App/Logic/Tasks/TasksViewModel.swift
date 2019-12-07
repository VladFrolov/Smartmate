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
    
    @Published var tasks: [TaskModel] = [TaskModel(name: "Сделать вьюхи с описанием", description: "Сделать описание bookmarks, tasks и profile"),
                                         TaskModel(name: "Добавить CoreData"),
                                         TaskModel(name: "Написать mock-сервер", description: "Написать небольшой mock-сервер для имитации загрузки данных"),
                                         TaskModel(name: "Доработать UI"),
                                         TaskModel(name: "Попить кофе")]
    
}
