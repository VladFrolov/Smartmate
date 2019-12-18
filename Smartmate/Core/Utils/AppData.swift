//
//  AppData.swift
//  Smartmate
//
//  Created by Владислав Фролов on 19.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

struct AppData {
    
    @DefaultStorage(key: "show_only_favorite", defaultValue: false)
    static var showOnlyFav: Bool
    
    @DefaultStorage(key: "show_only_unresolved", defaultValue: false)
    static var showOnlyUnresolved: Bool
}
