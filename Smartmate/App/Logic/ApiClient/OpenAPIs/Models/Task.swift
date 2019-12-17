//
// Task.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct Task: Codable {

    public var id: Int64
    public var name: String
    public var description: String?
    public var isResolved: ModelBool
    public var tag: String?

    public init(id: Int64, name: String, description: String?, isResolved: ModelBool, tag: String?) {
        self.id = id
        self.name = name
        self.description = description
        self.isResolved = isResolved
        self.tag = tag
    }


}
