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
    
    @Published var tasks: [Task] = [Task(name: "Сделать вьюхи с описанием", description: "Сделать описание bookmarks, tasks и profile"),
                                    Task(name: "Добавить CoreData"),
                                    Task(name: "Написать mock-сервер", description: "Написать небольшой mock-сервер для имитации загрузки данных"),
                                    Task(name: "Доработать UI"),
                                    Task(name: "Попить кофе")]
    
}
