//
//  View-ExpenseStyling.swift
//  iExpense
//
//  Created by Dakota Riley on 4/25/22.
//

import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 10 {
            return self.font(.headline.bold())
        } else if item.amount < 100 {
            return self.font(.headline.bold())
        } else {
            return self.font(.headline.bold())
        }
    }
}
