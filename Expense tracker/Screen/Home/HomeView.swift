//
//  HomeView.swift
//  Expense tracker
//
//  Created by Sanju on 11/09/23.
//

import SwiftUI




private struct DropDownImage: View {
    var text: String
    var body: some View {
        HStack {
            Image(name: .arrowDown)
                .frame(width: 24, height: 24)
            Text(text)
                .font(Font.appFont(weight: .light, size: 14))
                .foregroundColor(Color.appColor(.dark75))
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .addBorder(Color.appColor(.light20), cornerRadius: .infinity)
    }
    
    init(_ text: String) {
        self.text = text
    }
}



struct HomeView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                HStack {
                    ETAvatar()
                        .size(32)
                    Spacer()
                }
                    
                Menu {
                    Button {
                        print("Change country setting")
                    } label: {
                       Text("Sept")
                    }

                    Button {
                        print("Enable geolocation")
                    } label: {
                        Text("Sept")
                    }
                    
                } label: {
                    DropDownImage("October")
 
                }
                
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(name: .notifiaction)
                    }
                    .frame(width: 32, height: 32)

                }
                
            }
            .padding(.horizontal, 16)
            Spacer()
        }
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
