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
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
