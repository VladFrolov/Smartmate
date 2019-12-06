//
//  BookmarkModel.swift
//  Smartmate
//
//  Created by Владислав Фролов on 03.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

struct BookmarkModel: Identifiable {
    
    let id: String = UUID().uuidString
    var name: String
}