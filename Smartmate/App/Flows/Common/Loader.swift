//
//  Loader.swift
//  Smartmate
//
//  Created by Владислав Фролов on 18.12.2019.
//  Copyright © 2019 Владислав Фролов. All rights reserved.
//

import SwiftUI
import Combine

struct Loader: View {
    
    @State var indicator: String = "Loading."
    @State var pointCount = 1
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        SoaringView {
            Text(indicator)
                .font(.caption)
                .onReceive(timer) { _ in
                    guard self.pointCount < 3 else {
                        self.indicator = "Loading."
                        self.pointCount = 1
                        return
                    }
                    self.indicator += "."
                    self.pointCount += 1
            }
        }
    }
}

struct Loader_Previews: PreviewProvider {
    static var previews: some View {
        Loader()
    }
}
