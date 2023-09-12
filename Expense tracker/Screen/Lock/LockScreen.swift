//
//  LockScreen.swift
//  Expense tracker
//
//  Created by Sanju on 12/09/23.
//

import SwiftUI

struct LockScreen: View {
    var body: some View {
        VStack {
            Spacer()
            PinDot(total: 4, closed: 3)
                .frame(width: 120)
            Spacer()
            ETKeyboard { key in
                print(key)
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
