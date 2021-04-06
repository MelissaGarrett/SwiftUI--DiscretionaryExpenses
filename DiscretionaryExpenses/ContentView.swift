//
//  ContentView.swift
//  DiscretionaryExpenses
//
//  Created by Melissa  Garrett on 4/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var currentMonth = ""
    @State private var monthlyTotal = 0.0
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Categories")) {
                    
                }
                
                Section(header: Text("Category Totals")) {
                    
                }
                
                Section(header: Text("Monthly Total")) {
                    
                }
            }
            .navigationTitle("Expenses for \(currentMonth)")
        }
        .onAppear(perform: getCurrentMonth)
    }
    
    func getCurrentMonth() {
        let currentDate = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MMMM"
        currentMonth = formatter.string(from: currentDate)
        
// TODO: if 1st, reset category and monthly totals
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
