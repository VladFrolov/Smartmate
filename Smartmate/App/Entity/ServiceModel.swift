//
//  ServiceModel.swift
//  Smartmate
//
//  Created by Владислав Фролов on 03.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

struct ServiceModel: Identifiable {
    
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
