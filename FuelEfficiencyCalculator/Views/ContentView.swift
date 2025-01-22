//
//  ContentView.swift
//  FuelEfficiencyCalculator
//
//  Created by Harshan Dhindsa on 2025-01-20.
//

import SwiftUI

struct ContentView: View {
    
    @State var givenInput = ""
    @State var targetfuel = Int.random(in: 1...100)
    @State var feedback = ""
    @State var FuelUsageMade: [Int] = []
    
    
    
    
    var body: some View {
        
        NavigationStack {
            VStack{
                HStack {
                    
                    Text("")
                    
                    Text("Distanced Travelled")
                        .font(.headline)
                    TextField("Km", text: $givenInput)
                    Spacer ()
                    Text("Fuel Used")
                        .font(.headline)
                    TextField("L", text: $givenInput)
                }
                .padding()
                .navigationTitle("Fuel Usage Calculator")
            }
        }
    }
}

#Preview {
    ContentView()
}
