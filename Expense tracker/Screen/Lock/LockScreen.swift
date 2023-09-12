//
//  LockScreen.swift
//  Expense tracker
//
//  Created by Sanju on 12/09/23.
//

import SwiftUI

struct LockScreen: View {
    @State var pin: String = ""
    
    
    private func moveNext() {
        //
    }
    
    var body: some View {
        VStack {
            Spacer()
            PinDot(total: 4, closed: pin.count)
                .frame(width: 120)
            Spacer()
            ETKeyboard { key in
                if key == .clear {
                    pin = String(pin.dropLast(1))
                } else if key == .next {
                    moveNext()
                } else if pin.count <= 4{
                    pin = pin + key.rawValue
                }
                
            }
        }
        .background(Color.appColor(.violet100))
    }
}

struct LockScreen_Previews: PreviewProvider {
    static var previews: some View {
        LockScreen()
    }
}
