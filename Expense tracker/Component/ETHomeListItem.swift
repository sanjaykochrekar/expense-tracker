//
//  ETHomeListItem.swift
//  Expense tracker
//
//  Created by Sanju on 09/09/23.
//

import SwiftUI



struct ETHomeListItem: View {
    private var image: ETImageName = .recurringBill
    private var title: String = "Subscription"
    private var detail: String = "Buy some grocery"
    private var value: String = "- $120"
    private var time: String = "03:30 PM"
    private var background: ETColor = .violet20
    
    var body: some View {
        HStack {
            Image(name: image)
                .frame(width: 60, height: 60)
                .background(Color.appColor(background))
                .cornerRadius(16)
                
            VStack {
                HStack {
                    Text(title)
                        .font(Font.appFont(weight: .medium, size: 16))
                        .foregroundColor(Color.appColor(.dark75))
                    Spacer()
                    Text(value)
                        .font(Font.appFont(weight: .medium, size: 16))
                        .foregroundColor(Color.appColor(.red100))
                }
                Spacer()
                HStack {
                    Text(detail)
                        .font(Font.appFont(weight: .medium, size: 13))
                        .foregroundColor(Color.appColor(.dark25))
                    Spacer()
                    Text(time)
                        .font(Font.appFont(weight: .medium, size: 13))
                        .foregroundColor(Color.appColor(.dark25))
                }
            }
            .frame(height: 56)
            
        }
        .padding(16)
        .background(Color.appColor(.light80))
        .cornerRadius(24)
    }
    
    init(title: String, detail: String, value: String, time: String) {
        self.title = title
        self.detail = detail
        self.value = value
        self.time = time
    }
    
    public func backgroundColor(_ color: ETColor) -> Self {
        var returnView = self
        returnView.background = color
        return returnView
    }
    
    public func image(_ image: ETImageName) -> Self {
        var returnView = self
        returnView.image = image
        return returnView
    }
    
    
}

struct ETHomeListItem_Previews: PreviewProvider {
    
    
    static var previews: some View {
        VStack (spacing: 12){
            ETHomeListItem(title: "Shopping", detail: "Buy some grocery", value: "- $120", time: "10:00 AM")
                .image(.shoppingBag)
                .backgroundColor(.yellow20)
            
            ETHomeListItem(title: "Subscription", detail: "Disney+ Annual..", value: "- $80", time: "03:30 PM")
                .image(.recurringBill)
                .backgroundColor(.violet20)
            
            ETHomeListItem(title: "Food", detail: "Buy a ramen", value: "- $32", time: "07:30 PM")
                .image(.restaurant)
                .backgroundColor(.red20)
            
            ETHomeListItem(title: "Transportation", detail: "Charging Tesla", value: "- $18", time: "08:30 PM")
                .image(.car)
                .backgroundColor(.blue20)
            
             ETHomeListItem(title: "Salary", detail: "Salary for july", value: "- $5000", time: "09:30 PM")
                .image(.salary)
                .backgroundColor(.green20)
           
          
        }.padding(12)
    }
}
