//
//  Bookmark.swift
//  Smartmate
//
//  Created by Владислав Фролов on 03.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

public struct Bookmark: Identifiable, Codable {
    
    public let id: String = UUID().uuidString
    
    public var name: String
    public var image: String
    public var isFavorite: Bool = false
}
