//
//  ETTimePeriodSegmentController.swift
//  Expense tracker
//
//  Created by Sanju on 10/09/23.
//

import SwiftUI


//TODO: need to improve segment animation
struct ETTimePeriodSegmentController: View {
    @State var preselectedIndex: Int
    var options: [String]
    let color:ETColor = .yellow20
    var onClick: (_ index:Int) -> Void
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id:\.self) { index in
                let isSelected = preselectedIndex == index
                ZStack {
                    
                    Rectangle()
                        .fill(Color.appColor(color))
                        .cornerRadius(20)
                        .opacity(isSelected ? 1 : 0.01)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.2,
                                                             dampingFraction: 2,
                                                             blendDuration: 0.5)) {
                                preselectedIndex = index
                                onClick(index)
                            }
                        }
                }
                .overlay(
                    Text(options[index])
                        .font(Font.appFont(weight: isSelected ? .bold : .regular))
                        .foregroundColor(Color.appColor(isSelected ? .yellow100: .dark25))
                )
            }
        }
        .frame(height: 34)
        .cornerRadius(20)
    }
}
struct ETTimePeriodSegmentController_Previews: PreviewProvider {
    
    static var previews: some View {
        ETTimePeriodSegmentController(preselectedIndex: 3, options: ["Today", "Week", "Month", "Year"]) { index in
            print(index)
        }
    }
}
