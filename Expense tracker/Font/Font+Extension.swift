//
//  Font+Extension.swift
//  Expense tracker
//
//  Created by Sanju on 09/09/23.
//

import SwiftUI



enum ETFontName: String {
    case inter = "Inter"
}


enum ETFontWeight: String {
    case black = "Black"
    case bold = "Bold"
    case extraBold = "ExtraBold"
    case extraLight = "ExtraLight"
    case light = "Light"
    case medium = "Medium"
    case regular = "Regular"
    case semiBold = "SemiBold"
    case thin = "Thin"
}


extension Font {
    
    static func appFont(name: ETFontName = .inter, weight: ETFontWeight = .regular, size: CGFloat = 16) -> Font {
        return Font.custom("\(name.rawValue)-\(weight.rawValue)", size: size)
    }
    
}
