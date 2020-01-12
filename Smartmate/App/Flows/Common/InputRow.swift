//
//  InputRow.swift
//  Smartmate
//
//  Created by Владислав Фролов on 26.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct InputRow: View {
    let title: String
    let placeholder: String
    @State var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            TextField("Enter bookmark name", text: $text)
        }
    }
}

struct InputRow_Previews: PreviewProvider {
    static var previews: some View {
        InputRow(title: "Name", placeholder: "Enter name")
    }
}
