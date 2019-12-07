//
//  Star.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct Star: View {
    var isActive: Bool
    
    var body: some View {
        Image(systemName: isActive ? "star.fill" : "star")
            .imageScale(.medium)
            .foregroundColor(isActive ? .yellow : .gray)
    }
}
