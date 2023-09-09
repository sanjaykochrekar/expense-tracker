//
//  ETHomeCard.swift
//  Expense tracker
//
//  Created by Sanju on 09/09/23.
//

import SwiftUI

struct ETHomeCard: View {
    var image: ETImageName = .income
    var label: String = "Label"
    var value: String = "5000"
    
    var background: ETColor = .red100
    
    
    var body: some View {
        HStack {
            Image(name: image)
                .frame(width: 48, height: 48)
                .background(Color.appColor(.light100))
                .cornerRadius(16)
            
            VStack (alignment: .leading) {
                
                Text(label)
                  .font(Font.appFont(weight: .medium, size: 14))
                  .foregroundColor(Color.appColor(.light100))
                
                Text("$\(value)")
                  .font(Font.appFont(weight: .semiBold, size: 22))
                  .foregroundColor(Color.appColor(.light100))
                
            }
        }
        .padding(24)
        .background(Color.appColor(background))
        .cornerRadius(24)
    }
    
//    public mutating func backgroundColor(_ color: ETColor) -> Self {
//        self.background = color
//        return self
//    }
}

struct ETHomeCard_Previews: PreviewProvider {
    static var previews: some View {
        ETHomeCard(background: .green100)
    }
}
