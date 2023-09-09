//
//  ETHomeCard.swift
//  Expense tracker
//
//  Created by Sanju on 09/09/23.
//

import SwiftUI

struct ETHomeCard: View {
    var label: String = "Label"
    var value: String = "5000"
    
    private var image: ETImageName = .income
    private var background: ETColor = .red100
    
    
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
    
    init(label: String, value: String) {
        self.label = label
        self.value = value

    }
    
    public func backgroundColor(_ color: ETColor) -> Self {
        var returnView = self
        returnView.background = color
        return returnView
    }
    
    public func image(_ image: ETImageName) -> Self {
        var returnView = self
        returnView.image = image
        return returnView
    }
}

struct ETHomeCard_Previews: PreviewProvider {
    static var previews: some View {
        ETHomeCard(label: "Income", value: "1000")
            .image(.expense)
            .backgroundColor(.red100)
           
    }
}
