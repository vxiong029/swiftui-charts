//
//  Investment.swift
//  swiftui-charts
//
//  Created by The Night Owl Dev on 11/9/23.
//

import Foundation

struct Investment: Identifiable {
    var name: String
    var value: Double
    var id = UUID()
    var start: Double
    var end: Double
}

extension Investment {
    static var mockData: [Investment] = [
        .init(
            name: "Cash",
            value: 34.10,
            start: 50.0,
            end: 65.0
        ),
        .init(
            name: "Income",
            value: 67.22,
            start: 30.0,
            end: 50
        ),
        .init(
            name: "Large Cap",
            value: 20.67,
            start: 5.0,
            end: 10.0
        ),
        .init(
            name: "Small Cap",
            value: 44.56,
            start: 22.0,
            end: 34.0
        )
    ]
}
