//
//  ETPrimaryButton.swift
//  Expense tracker
//
//  Created by Sanju on 10/09/23.
//

import SwiftUI

struct ETPrimaryButton: View {
    var label: String = "Label"
    var onClick: () -> Void
    
    private var backgroundColor: ETColor = .violet100
    private var color: ETColor = .light100
    
    var body: some View {
       
            HStack {
                Button {
                    onClick()
                } label: {
                    Spacer()
                    Text(label)
                        .font(Font.appFont(weight: .semiBold, size: 18))
                        .foregroundColor(Color.appColor(color))
                    Spacer()
                }
                .frame(height: 56)
                .background(Color.appColor(backgroundColor))
            }
            .cornerRadius(16)
        
    }
    
    init(label: String, onClick: @escaping () -> Void) {
        self.label = label
        self.onClick = onClick
    }
    
    func backgroundColor(_ color: ETColor = .violet100) -> Self {
        var newView = self
        newView.backgroundColor = color
        return newView
    }
    
    func color(_ color: ETColor = .light100) -> Self {
        var newView = self
        newView.color = color
        return newView
    }
}

struct ETPrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        ETPrimaryButton(label: "+ Add") {
            
        }
        .color(.violet100)
        .backgroundColor(.violet20)
        .padding(34)
        
    }
}
