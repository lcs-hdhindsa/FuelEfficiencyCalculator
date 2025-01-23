//
//  ContentView.swift
//  FuelEfficiencyCalculator
//
//  Created by Harshan Dhindsa on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    @State var distance: String = ""
    @State var fuelUsed: String = ""
    @State var result: String = ""
    @State var history: [String] = []
    
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
                
            HStack {
                Button("Calculate") {
                    calculateEfficiency()
                }
                .buttonStyle(.borderedProminent)
                    
                Button("Reset") {
                    resetInputs()
                }
                .buttonStyle(.bordered)
                    
                Text("Result: \(result)")
                .font(.headline)
                
                
                    
                 
               }
            }
        }
    }
}

#Preview {
    ContentView()
}
