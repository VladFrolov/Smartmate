//
//  TabItem.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct TabItem: View {
    
    private var icon: String
    private var title: String
    
    init(icon: String, title: String) {
        self.icon = icon
        self.title = title
    }
    
    var body: some View {
        VStack {
            Image(systemName: icon)
            Text(title)
        }
    }
}
