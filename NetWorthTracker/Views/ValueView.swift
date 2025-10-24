//
//  ValueView.swift
//  NetWorthTracker
//
//  Created by Zoltan Vegh on 20/10/2025.
//

import SwiftUI

struct ValueView: View {
    var body: some View {
        ZStack {
            // Just needed the ZStack to have a dark background extending to infinity
            Color.darkBackground
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Value")
                        .font(.system(size: 36))
                        .fontWeight(.light)
                        .foregroundStyle(.aquamarine)
                    
                    Spacer()
                    
                    Button {
                        print("+ button pressed")
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 32))
                            .foregroundStyle(.brightTeal)
                    }
                }
                
                Text("Net worth")
                    .foregroundStyle(.aquamarine)
                
                Text("$15000.00")
                    .font(.system(size: 42))
                    .fontWeight(.light)
                    .foregroundStyle(.brightTeal)
                
                Text("Revolut Savings")
                    .foregroundStyle(.aquamarine)
                
                Text("$10000.00")
                    .font(.system(size: 32))
                    .fontWeight(.light)
                    .foregroundStyle(.brightTeal)
                
                Text("Investment Portfolio")
                    .foregroundStyle(.aquamarine)
                
                Text("$5000.00")
                    .font(.system(size: 32))
                    .fontWeight(.light)
                    .foregroundStyle(.brightTeal)
                
                VStack {
                    Text("Placeholder text for now!")
                        .foregroundStyle(.aquamarine)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 300)
                .background(.containerGrey)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    
                } label: {
                    Text("Get values")
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(.brightTeal)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(.black)
                        .font(.system(size: 25))
                }
                .padding(.vertical)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ValueView()
}
