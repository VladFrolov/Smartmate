//
//  SoaringView.swift
//  Smartmate
//
//  Created by Владислав Фролов on 07.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct SoaringView<Content: View>: View {
    let content: Content
    
    let cornerRadius: CGFloat
    let shadowRadius: CGFloat
    
    init(cornerRadius: CGFloat = 16, shadow: CGFloat = 10, @ViewBuilder content: () -> Content) {
        self.content = content()
        
        self.cornerRadius = cornerRadius
        self.shadowRadius = shadow
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
            content
        }
        .cornerRadius(cornerRadius)
        .shadow(radius: shadowRadius)
    }
}

struct SoaringView_Previews: PreviewProvider {
    static var previews: some View {
        SoaringView(cornerRadius: 44) {
            HStack {
                Image("swift")
                Text("I love you, Swift..")
            }
        }
    }
}
