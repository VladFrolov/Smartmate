//
//  Task.swift
//  Smartmate
//
//  Created by Владислав Фролов on 03.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

public struct Task: Identifiable, Codable {
    
    public let id: String = UUID().uuidString
    
    public var name: String
    public var description: String?
    public var isResolved: Bool = false
}
