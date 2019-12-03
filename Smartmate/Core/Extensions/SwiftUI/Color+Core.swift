//
//  Color+Core.swift
//  Smartmate
//
//  Created by Владислав Фролов on 03.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

extension Color {
    
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 0xff
        let green = Double((hex & 0xff00) >> 8) / 0xff
        let blue = Double((hex & 0xff) >> 0) / 0xff
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
    
}

extension Color {
    
    // Smoke color
    public static var smoke: Color {
        return Color(hex: 0xDFDADE)
    }
    
    // Light pink color
    public static var lightPink: Color {
        return Color(hex: 0xF1C1BD)
    }
    
    // Coral color
    public static var coral: Color {
        return Color(hex: 0xCA6D68)
    }
    
    // Dark green color
    public static var darkGreen: Color {
        return Color(hex: 0x2F4B4C)
    }
    
    // Forest sounds color
    public static var forestSounds: Color {
        return Color(hex: 0x182C2D)
    }
}
