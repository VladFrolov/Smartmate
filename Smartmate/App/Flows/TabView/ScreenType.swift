//
//  Screens.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

enum Screen: Int {
    case bookmarks = 0
    case tasks = 1
    case information = 2
    
    var tag: Int {
        return rawValue
    }
    
    var icon: String {
        switch self {
        case .bookmarks:
            return "book.circle.fill"
        case .tasks:
            return "flag.circle.fill"
        case .information:
            return "person.crop.circle.fill"
        }
    }
}
