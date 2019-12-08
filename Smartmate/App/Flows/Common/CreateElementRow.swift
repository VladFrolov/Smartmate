//
//  CreateElementRow.swift
//  Smartmate
//
//  Created by Владислав Фролов on 08.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct CreateElementRow<Content: View>: View {
    @State private var addingProcess: Bool = false
    
    let addingItemName: String
    let presentedView: Content
    
    var body: some View {
        SoaringView {
            Button(action: {
                self.addingProcess.toggle()
            }, label: {
                HStack {
                    Image(systemName: "plus")
                    Text(addingItemName)
                        .font(.headline)
                    Spacer()
                }
            })
            .padding()
            .sheet(isPresented: $addingProcess) {
                self.presentedView
            }
        }
    }
}

struct CreateElementRow_Previews: PreviewProvider {
    static var previews: some View {
        CreateElementRow(addingItemName: "Новый элемент", presentedView: Text("Создание новго элемента"))
    }
}
