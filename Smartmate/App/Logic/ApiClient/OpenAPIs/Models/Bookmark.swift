//
// Bookmark.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct Bookmark: Codable {

    public var id: Int64
    public var name: String
    public var imageUrl: String
    public var isFavorite: ModelBool
    public var tag: String?

    public init(id: Int64, name: String, imageUrl: String, isFavorite: ModelBool, tag: String?) {
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
        self.isFavorite = isFavorite
        self.tag = tag
    }


}
