//
//  ETTextField.swift
//  Expense tracker
//
//  Created by Sanju on 13/09/23.
//

import SwiftUI


struct ETTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 12)
            .frame(height: 56)
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.appColor(.light20), lineWidth: 1)
            )
    }
}



private struct ExampleTextField: View {
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    
    
    var body: some View {
        TextField("Description", text: $username)
            .modifier(ETTextFieldModifier())
            .padding(24)
    }
}

struct ETTextField_Previews: PreviewProvider {
    static var previews: some View {
        ExampleTextField()
    }
}
