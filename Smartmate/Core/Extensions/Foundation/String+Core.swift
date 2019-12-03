//
//  String+Core.swift
//  Smartmate
//
//  Created by Владислав Фролов on 02.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation

public extension String {
    
    var int: Int? {
        return Int(self)
    }
    
    var isNotEmpty: Bool {
        return !isEmpty
    }
    
    var nonEmptyString: String? {
        if isEmpty {
            return nil
        }
        return self
    }
    
    func withPrefix(_ prefix: String) -> String {
        return prefix + self
    }
    
    func withPostfix(_ postfix: String) -> String {
        return self + postfix
    }
    
    func replacing(pattern: String, withTemplate: String) throws -> String {
        let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        return regex.stringByReplacingMatches(in: self, options: [], range: NSRange(0..<self.utf16.count), withTemplate: withTemplate)
    }
    
    func trunc(_ length: Int, trailing: String? = "…") -> String {
        if self.count > length {
            return self[..<index(self.startIndex, offsetBy: length)] + (trailing ?? "")
        } else {
            return self
        }
    }
    
    func range(from nsRange: NSRange) -> Range<String.Index>? {
        guard
            let from16 = utf16.index(utf16.startIndex, offsetBy: nsRange.location, limitedBy: utf16.endIndex),
            let to16 = utf16.index(from16, offsetBy: nsRange.length, limitedBy: utf16.endIndex),
            let from = String.Index(from16, within: self),
            let to = String.Index(to16, within: self)
            else { return nil }
        return from ..< to
    }
    
    func insert(separator: String, every n: Int) -> String {
        var result: String = ""
        let characters = Array(self)
        stride(from: 0, to: count, by: n).forEach {
            result += String(characters[$0..<min($0+n, count)])
            if $0+n < count {
                result += separator
            }
        }
        return result
    }
}
