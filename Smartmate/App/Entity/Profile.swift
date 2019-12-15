//
//  Profile.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

public struct Profile: Identifiable, Codable {
    
    public let id: String = UUID().uuidString
    public let name: String
    public let surname: String
    public let age: Int
    
    private(set) var skills: [String] = []
    private(set) var links: [String] = []
    
    mutating func addSkills(skills: String...) {
        self.skills.append(contentsOf: skills)
    }
    
    mutating func addLinks(links: String...) {
        self.links.append(contentsOf: links)
    }
}
