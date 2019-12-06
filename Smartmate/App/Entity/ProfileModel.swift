//
//  ProfileModel.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

struct ProfileModel: Identifiable {
    
    let id: String = UUID().uuidString
    let name: String
    let surname: String
    
    let age: Int
    private(set) var skills: [String]
}
