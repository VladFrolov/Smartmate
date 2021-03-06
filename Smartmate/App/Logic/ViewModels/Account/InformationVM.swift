//
//  InformationVM.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI
import Combine

final class InformationVM: ObservableObject {
    
    @Published var profile: Profile = Profile(name: "Владислав",
                                              surname: "Фролов",
                                              age: 22)
    
}
