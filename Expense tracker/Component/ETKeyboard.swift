//
//  ETKeyboard.swift
//  Expense tracker
//
//  Created by Sanju on 12/09/23.
//

import SwiftUI


enum ETKeyboardKey:String {
    case zere = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case next = "next"
    case clear = "clear"
}


private struct ETKeyboardButton: View {
    var text: String = ""
    
    var onClick: () -> Void
    
    var body: some View {
        Button {
            onClick()
        } label: {
            Text(text)
                .font(Font.appFont(weight: .bold, size: 48))
                .foregroundColor(Color.appColor(.light100))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
    }
    
    init(text: String, onClick: @escaping () -> Void) {
        self.text = text
        self.onClick = onClick
    }
}




struct ETKeyboard: View {
    var onClick: (_ key: ETKeyboardKey) -> Void
    
    var body: some View {
        VStack {
            HStack (alignment: .center) {
                ETKeyboardButton(text: "1") {
                    onClick(.one)
                }
                
                ETKeyboardButton(text: "2") {
                    onClick(.two)
                }
                
                ETKeyboardButton(text: "3") {
                    onClick(.three)
                }
            }
            
            HStack (alignment: .center) {
                ETKeyboardButton(text: "4") {
                    onClick(.four)
                }
                
                ETKeyboardButton(text: "5") {
                    onClick(.five)
                }
                
                ETKeyboardButton(text: "6") {
                    onClick(.six)
                }
            }
            
            HStack (alignment: .center) {
                ETKeyboardButton(text: "7") {
                    onClick(.seven)
                }
                
                ETKeyboardButton(text: "8") {
                    onClick(.eight)
                }
                
                ETKeyboardButton(text: "9") {
                    onClick(.nine)
                }
            }
            
            HStack (alignment: .center) {
                
                Button {
                    onClick(.clear)
                } label: {
                    Image(name: .clear)
                        .resizable()
                        .frame(width: 56, height: 56)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
              
                ETKeyboardButton(text: "0") {
                    onClick(.zere)
                }
                
                Button {
                    onClick(.next)
                } label: {
                    Text("->")
                        .font(Font.appFont(weight: .bold, size: 48))
                        .foregroundColor(Color.appColor(.light100))
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
            }
        }
        .frame(maxWidth: .infinity)
    }
    
    
    init(onClick: @escaping (_: ETKeyboardKey) -> Void) {
        self.onClick = onClick
    }
}

struct ETKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        ETKeyboard { key in
            print(key.rawValue)
        }
        .background(Color.appColor(.violet100))
    }
}
