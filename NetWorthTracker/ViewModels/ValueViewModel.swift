//
//  ValueViewModel.swift
//  NetWorthTracker
//
//  Created by Zoltan Vegh on 24/10/2025.
//

import Foundation

struct ValueViewModel {
    static func main() async {
        let url = URL(string: "https://live.trading212.com/api/v0/equity/portfolio")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Basic Auth
        let username = Trading212.apiKey
        let password = Trading212.apiSecret
        let loginString = "\(username):\(password)"
        if let loginData = loginString.data(using: .utf8) {
            let base64Login = loginData.base64EncodedString()
            request.addValue("Basic \(base64Login)", forHTTPHeaderField: "Authorization")
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            if let httpResponse = response as? HTTPURLResponse {
                print("Status code:", httpResponse.statusCode)
                print(httpResponse)
            }
            
            // Decode response
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let portfolio = try decoder.decode([PortfolioItem].self, from: data)
            
            // Print results
            for item in portfolio {
                print("Ticker: \(item.ticker), Quantity: \(item.quantity), Value: \(item.value ?? 0)")
            }
            
        } catch {
            print("Error:", error.localizedDescription)
        }
    }
}
