//
//  Color+Core.swift
//  Smartmate
//
//  Created by Владислав Фролов on 26.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

extension Color {
    
    init(hex: Int) {
        let r = (hex & 0xff0000) >> 16
        let g = (hex & 0xff00) >> 8
        let b = hex & 0xff


        self.init(red: Double(r) / 0xff, green: Double(g) / 0xff, blue: Double(b) / 0xff)

    }
}

extension Color {
    
    // Дымный цвет для фона
    static var smoke: Color = Color(hex: 0xDFDADE)
    
}
