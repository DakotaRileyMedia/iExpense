//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Dakota Riley on 4/24/22.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    // Generate new UUID for each item
    var id = UUID()
    
    // Expense item variables
    let name: String
    let type: String
    let amount: Double
}
