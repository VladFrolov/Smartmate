//
//  InformationViewModel.swift
//  Smartmate
//
//  Created by Владислав Фролов on 06.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI
import Combine

final class InformationViewModel: ObservableObject {
    
    @Published var profile: ProfileModel = ProfileModel(name: "Владислав",
                                                        surname: "Фролов",
                                                        age: 22)
    
}
