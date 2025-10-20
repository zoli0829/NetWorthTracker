//
//  ContentView.swift
//  NetWorthTracker
//
//  Created by Zoltan Vegh on 20/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Hello, Home!") // change it to some view later on
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
    }
}

#Preview {
    ContentView()
}
