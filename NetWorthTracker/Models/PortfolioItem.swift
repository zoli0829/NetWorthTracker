//
//  Portfolio.swift
//  NetWorthTracker
//
//  Created by Zoltan Vegh on 24/10/2025.
//

import Foundation

struct PortfolioItem: Codable {
    let ticker: String
    let quantity: Double
    let value: Double?
    let averagePrice: Double?
    let totalGain: Double?
    let totalGainPercent: Double?
    let name: String?
}
