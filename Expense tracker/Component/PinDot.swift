//
//  PinDot.swift
//  Expense tracker
//
//  Created by Sanju on 11/09/23.
//

import SwiftUI

struct PinDot: View {
    
    private var tint: Color = Color.appColor(.light100)
    
    var total: Int  = 4
    var closed: Int = 3
    
    
    var body: some View {
        HStack {
            ForEach((0..<total), id: \.self) { i in
                Circle()
                    .strokeBorder(tint,lineWidth: 4)
                    .background(Circle().foregroundColor(i < closed ? tint : .clear))
            }
        }
    }
    
    
    init(total: Int, closed: Int) {
        self.total = total
        self.closed = closed
    }
    
    public func tint1(_ tint: Color) -> Self {
        var returnView = self
        returnView.tint = tint
        return returnView
    }
}

struct PinDot_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            PinDot(total: 4, closed: 3)
                .tint1(Color.appColor(.green100))
                .padding(12)
                .frame(width: 200, height: 48)
        }
        .frame(width: .infinity, height: .infinity)
    }
}
