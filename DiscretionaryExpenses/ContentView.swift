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
    @State private var showingAddExpenseView = false
    
    @ObservedObject var catExpenses = Expenses()

    var body: some View {
        NavigationView {
            Form { // to attach the nav stuff
                Section(header: Text("Categories")) {
                    List {
                        HStack {
                            Text("")
                        }
                    }
                }
        
                Section(header: Text("Monthly Total")) {
                    Text("")
                }
            }
            .navigationTitle("Expenses for \(currentMonth)")
            .navigationBarItems(trailing: Button(action: {
                showingAddExpenseView = true
            }) {
                Image(systemName: "plus")
                })
        }
        .onAppear(perform: getCurrentMonth)
        .sheet(isPresented: $showingAddExpenseView) {
            // pass model
            AddExpenseView()
        }
    }
    
    func getCurrentMonth() {
        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MMMM"
        currentMonth = formatter.string(from: date)
        
        formatter.dateFormat = "dd"
        let currentDay = formatter.string(from: date)
        if Int(currentDay) == 1 {
            monthlyTotal = 0.0
            
            //TODO: reset category totals
        }        
    }
    
    func getMonthlyTotal() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
