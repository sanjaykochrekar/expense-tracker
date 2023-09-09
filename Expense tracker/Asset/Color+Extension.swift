//
//  Color+Extension.swift
//  Expense tracker
//
//  Created by Sanju on 09/09/23.
//

import SwiftUI


extension Color {
    
    static func appColor(_ color: ETColor, opacity: Double = 1.0) -> Color {
        return Color(color.rawValue).opacity(opacity)
    }
    
}
