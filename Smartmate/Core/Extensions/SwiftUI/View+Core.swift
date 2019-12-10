//
//  View+Core.swift
//  Smartmate
//
//  Created by Владислав Фролов on 10.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

extension View {
    
    func embedInNavigation(title: String = "") -> some View {
        NavigationView { self.navigationBarTitle(title) }
    }
}
