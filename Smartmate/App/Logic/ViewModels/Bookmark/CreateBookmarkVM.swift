//
//  CreateBookmarkVM.swift
//  Smartmate
//
//  Created by Владислав Фролов on 17.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import Foundation
import Combine

class CreateBookmarkVM: ObservableObject {
    
    enum InputRow: String, Identifiable {
        
        case title
        case link
        case tag
        
        var id: String {
            return rawValue
        }
        
        var header: String {
            return rawValue.capitalized
        }
        
        var placeholder: String {
            switch self {
            case .title:
                return "Enter bookmark name"
            case .link:
                return "Paste link to bookmark"
            case .tag:
                return "#notheme_bookmark"
            }
        }
    }
    
    @Published var section: [InputRow] = [.title, .link, .tag]
    
}
