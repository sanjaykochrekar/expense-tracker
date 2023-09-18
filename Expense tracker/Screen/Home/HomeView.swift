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



private struct Header: View {
    var body: some View {
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
        .padding(4)
    }
}



private struct ChartPart: View {
    var body: some View {
        VStack(spacing: 0) {
            SpendFrequencyChart(chartData: [0.4, 0.9, 0.4, 0.3, 0.8, 0.4])
                .frame(height: 200)
                .padding(.top, 12)
            
            ETTimePeriodSegmentController(preselectedIndex: 0, options: ["Today", "Week", "Month", "Year"]) { index in
                print(index)
            }
            .padding(.horizontal, 16)
        }
    }
}


private struct List: View {
    var body: some View {
        VStack {
            HStack {
                Text("Recent Transaction")
                    .font(Font.appFont(weight: .semiBold, size: 18))
                    .foregroundColor(Color.appColor(.dark75))
                Spacer()
                Button {
                    
                } label: {
                    Text("See All")
                        .foregroundColor(Color.appColor(.violet100))
                        .font(Font.appFont(weight: .medium, size: 14))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.appColor(.violet20))
                        .cornerRadius(.infinity)
                }
            }
            .padding(.horizontal, 18)
            ForEach(0..<100) {_ in
                ETHomeListItem(title: "Shopping", detail: "Buy some grocery", value: "- $80", time: "03:30 PM")
            }
        }
    }
}



struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                Header()
                    .padding(.horizontal, 12)
                
                Text("Account Balance")
                    .font(Font.appFont(weight: .medium, size: 14))
                    .padding(.top, 12)
                    .foregroundColor(Color.appColor(.dark25))
                
                Text("$9400")
                    .font(Font.appFont(weight: .semiBold, size: 40))
                    .padding(.top, 10)
                    .foregroundColor(Color.appColor(.dark100))
                
                HStack(spacing: 16) {
                    ETHomeCard(label: "Income", value: "5000")
                        .image(.income)
                        .backgroundColor(.green100)
                    ETHomeCard(label: "Expenses", value: "1200")
                        .image(.expense)
                        .backgroundColor(.red100)
                }
                .padding(.top, 28)
                
                HStack{
                    Text("Spend Frequency")
                        .font(Font.appFont(weight: .semiBold, size: 18))
                        .foregroundColor(Color.appColor(.dark75))
                    Spacer()
                }
                .padding(.leading, 16)
                .padding(.top, 36)
                
                ChartPart()
                List()
                    .padding(.top, 20)
                Spacer()
            }
        }
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
