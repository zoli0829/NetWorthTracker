//
//  Pie.swift
//  NetWorthTracker
//
//  Created by Zoltan Vegh on 24/10/2025.
//

import Foundation

struct Pie: Codable {
    let cash: Double
    let dividendDetails: [String: Double]
    let id: Int
    let progress: Double
    let result: [String: Double]
    let status: String
}
