//
//  SpendFrequencyChart.swift
//  Expense tracker
//
//  Created by Sanju on 10/09/23.
//

import SwiftUI


//TODO: - Need to make line smooth
struct SpendFrequencyChart: View {
    @State var size: CGSize = .zero
    var chartData: [Double] = []
    
    var body: some View {
        GeometryReader { proxy in
            Path { path in
                for (i, item) in chartData.enumerated() {
                    if i == 0 {
                        path.move(to: CGPoint(x: 0, y: (Int(size.height)) - Int(item * 10) * (Int(size.height / 10))))
                    }
                    else  {
                        path.addLine(to: CGPoint(x: (i * (Int(size.width)) / (chartData.count - 1)), y: (Int(size.height)) - Int(item * 10) * (Int(size.height)) / 10))
                    }
                }
            }
            .stroke(Color.appColor(.violet100), style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
            .onAppear {
                size = proxy.size
            }
        }
    }
}


struct SpendFrequencyChart_Previews: PreviewProvider {
    static var previews: some View {
        SpendFrequencyChart(chartData: [0.4, 0.9, 0.4, 0.3, 0.4])
            .frame(height: 185)
    }
}
