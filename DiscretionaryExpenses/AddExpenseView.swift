//
//  AddExpenseView.swift
//  DiscretionaryExpenses
//
//  Created by Melissa  Garrett on 4/6/21.
//

import SwiftUI

struct AddExpenseView: View {
    @State private var category = ""
    @State private var amount = 0.0
    
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Category", selection: $category) {
                    
                }
                
                Picker("Amount", selection: $amount) {
                    
                }
            }
            .navigationBarItems(trailing:
                Button("Save") {
                    // Save amount to category using model
                }
            )
        }
    }
}

struct AddExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpenseView()
    }
}
