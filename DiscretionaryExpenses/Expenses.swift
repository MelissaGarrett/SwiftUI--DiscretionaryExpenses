//
//  Expenses.swift
//  DiscretionaryExpenses
//
//  Created by Melissa  Garrett on 4/20/21.
//

import Foundation

class Expenses : ObservableObject {
    @Published var expenses = [ExpensesByCategory]() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(expenses) {
                UserDefaults.standard.set(encoded, forKey: "Expenses")
            }
        }
    }
    
    init() {
        if let expenses = UserDefaults.standard.data(forKey: "Expenses") {
            let decoder = JSONDecoder()
            
            if let decoded = try? decoder.decode([ExpensesByCategory].self, from: expenses) {
                self.expenses = decoded
                return
            }
        }
        self.expenses = []
    }
}
