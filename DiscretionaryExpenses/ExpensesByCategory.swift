//
//  ExpensesByCategory.swift
//  DiscretionaryExpenses
//
//  Created by Melissa  Garrett on 4/6/21.
//

import Foundation

struct ExpensesByCategory : Codable, Identifiable {
    var id = UUID()
    
    var expenseCategories = [
        "Groceries/Household" : 0.0,
        "Dining Out"          : 0.0,
        "Entertainment"       : 0.0,
        "Shopping (Personal)" : 0.0,
        "Shopping (Home)"     : 0.0
    ]    
}
