//
//  ETBackNavBar.swift
//  Expense tracker
//
//  Created by Sanju on 10/09/23.
//

import SwiftUI


enum NavTint {
    case light
    case dark
}

struct ETBackNavBar: View {
    var onClick: () -> Void
    var backClick: () -> Void
    
    private var actionImage: ETImageName = .none
    private var tint: NavTint = .dark
    
    var body: some View {
        HStack (spacing: 2){
            HStack {
                Image(name: tint == .dark ? .backNavDark : .backNavLight)
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding(.leading, 16)
                Spacer()
            }
           
            Text("Expense")
                .font(Font.appFont(weight: .semiBold, size: 18))
                .foregroundColor(Color.appColor(tint == .dark ? .dark100 : .light100))
               
            HStack {
                Spacer()
                Button {
                    onClick()
                } label: {
                    Image(name: actionImage)
                        .resizable()
                        .padding(2)
                        .frame(width: 32, height: 32)
                        .padding(.trailing, 16)
                }
                .disabled(actionImage == .none)

                
            }
        }.frame(width: .infinity)
            .padding(.vertical, 12)
    }
    
    init(onClick: @escaping () -> Void, backClick: @escaping () -> Void) {
        self.onClick = onClick
        self.backClick = backClick
    }
    
    public func tint(_ tint: NavTint) -> Self {
        var returnView = self
        returnView.tint = tint
        return returnView
    }
    
    public func actionImage(_ image: ETImageName) -> Self {
        var returnView = self
        returnView.actionImage = image
        return returnView
    }
    
}


struct ETBackNavBar_Previews: PreviewProvider {
    static var previews: some View {
        ETBackNavBar {
            
        } backClick: {
            
        }.actionImage(.trashDark)

    }
}
