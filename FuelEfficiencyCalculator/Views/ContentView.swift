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
                }
                
                Text("Result: \(result)")
                    .font(.headline)
                
                Divider()
                Text("History")
                    .font(.headline)
                
                List(history, id: \.self) { entry in
                    Text(entry)
                }
            }
            .padding()
        }
    }
    
func calculateEfficiency() {
    guard let distanceValue = Double(distance),
          let fuelUsedValue = Double(fuelUsed),
              distanceValue > 0,
              fuelUsedValue > 0 else {
            result = "Invalid input. Please enter valid numbers."
            return
        }
        
    let efficiency = (fuelUsedValue / distanceValue) * 100
        result = String(format: "%.2f L/100km", efficiency)
        
    let historyEntry = "Distance: \(distance) km, Fuel: \(fuelUsed) L, Result: \(result)"
        history.insert(historyEntry, at: 0)
    }
    
    func resetInputs() {
        distance = ""
        fuelUsed = ""
        result = ""
        
    }
}

#Preview {
    ContentView()
    
}

