//
//  BarChartView.swift
//  SwiftUI Charts
//
//  Created by The Night Owl Dev on 11/9/23.
//

import SwiftUI
import Charts

struct BarChartView: View {
    var body: some View {
        Chart {
            ForEach(Investment.mockData) { investment in
                // Mark the name and value
                BarMark(
                    x: .value("Name", investment.name),
                    y: .value("Amount", investment.value),
                    width: 25
                )
                .annotation {
                    Text(String(format: "%.f", investment.value))
                }
                .annotation(
                    alignment: .center,
                    spacing: 0,
                    content: {
                        Rectangle()
                            .frame(
                                width: 45,
                                height: 1
                            )
                    }
                )
                // Mark the suggestion start and end values
                RectangleMark(
                    x: .value("Type", investment.name),
                    yStart: .value("Start", investment.start),
                    yEnd: .value("End", investment.end),
                    width: 40
                )
                .foregroundStyle(.red.opacity(0.6))
            }
        }
        .chartYAxis{
            AxisMarks(
                format: Decimal.FormatStyle.Percent.percent.scale(1),
                position: .leading,
                values: [0, 25, 50, 75, 100]
            )
        }
        .frame(height: 400)
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
