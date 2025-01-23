//
//  ContentView.swift
//  FuelEfficiencyCalculator
//
//  Created by Harshan Dhindsa on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    @State private var distance: String = ""
    @State private var fuelUsed: String = ""
    @State private var result: String = ""
    @State private var history: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Fuel Efficiency Calculator")
                    .font(.title)
                    .padding()
                
                TextField("Distance Traveled (km)", text: $distance)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                
                TextField("Fuel Used (liters)", text: $fuelUsed)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
