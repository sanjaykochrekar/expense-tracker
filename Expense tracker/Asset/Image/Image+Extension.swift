//
//  Image+Extension.swift
//  Expense tracker
//
//  Created by Sanju on 09/09/23.
//

import SwiftUI


extension Image {
    init(name: ETImageName) {
        self.init(name.rawValue)
    }
}
