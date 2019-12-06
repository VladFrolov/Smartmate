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
    
    @Published var tasks: [TaskModel] = [TaskModel(name: "Попить кофе")]
    
}
