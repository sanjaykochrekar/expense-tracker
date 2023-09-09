//
//  ETAvatar.swift
//  Expense tracker
//
//  Created by Sanju on 09/09/23.
//

import SwiftUI



struct ETAvatar: View {
    
    private var size: CGFloat = 80
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.appColor(.violet100), lineWidth: size / 25)
            Image("avatar")
                .resizable()
                .cornerRadius(.infinity)
                .padding(size / 12)
        }
        .frame(width: size, height: size)
    }
    
    /// Sets the height and width of the avatar
    public func size(_ size: CGFloat) -> Self {
        return ETAvatar(size: size)
    }
}


struct ETAvatar_Previews: PreviewProvider {
    static var previews: some View {
        ETAvatar()
            .size(100)
    }
}
