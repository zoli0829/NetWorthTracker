//
//  ContentView.swift
//  NetWorthTracker
//
//  Created by Zoltan Vegh on 20/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ValueView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                Text("Hello, DntKnow!")
                    .tabItem {
                        Label("Dont Know", systemImage: "questionmark")
                    }
                
                Text("Hello, Settings!")
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
            .tint(.brightTeal)
        }
    }
}

#Preview {
    ContentView()
}
