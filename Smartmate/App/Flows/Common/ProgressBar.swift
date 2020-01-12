//
//  ProgressBar.swift
//  Smartmate
//
//  Created by Владислав Фролов on 20.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    @State var value: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geomtery in
            ZStack(alignment: .leading) {
                Rectangle()
                    .opacity(0.1)
                Rectangle()
                    .frame(minWidth: 0, idealWidth: self.getProgressBarWidth(geomtery), maxWidth: self.getProgressBarWidth(geomtery))
                    .foregroundColor(self.value < 1 ? Color.orange : Color.white)
                    .animation(.default)
            }
            .frame(height: 4)
        }
        .frame(height: 4)
    }
    
    func getProgressBarWidth(_ geometry: GeometryProxy) -> CGFloat {
        let frame = geometry.frame(in: .global)
        return frame.size.width * value
    }
}
