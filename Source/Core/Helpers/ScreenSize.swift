//
//  ScreenSize.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import SwiftUI

class ScreenSize: ObservableObject {
    var width: CGFloat
    var height: CGFloat
    
    init(size: CGSize) {
        self.width = size.width
        self.height = size.height
    }
    init() {
        self.width = 393
        self.height = 669
    }
}
