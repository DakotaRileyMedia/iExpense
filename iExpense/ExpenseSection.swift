//
//  ExpenseSection.swift
//  iExpense
//
//  Created by Dakota Riley on 4/25/22.
//

import SwiftUI

struct ExpenseSection: View {
    let title: String
    let expenses: [ExpenseItem]
    let deleteItems: (IndexSet) -> Void
    
    var body: some View {
        Section {
            ForEach (expenses) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(item.type)
                    }
                    
                    Spacer()
                    
                    if item.amount < 10 {
                        Text(item.amount, format: .localCurrency)
                            .style(for: item)
                            .foregroundColor(.green)
                    } else if item.amount < 100 {
                        Text(item.amount, format: .localCurrency)
                            .style(for: item)
                    } else {
                        Text(item.amount, format: .localCurrency)
                            .style(for: item)
                            .foregroundColor(.red)
                    }
                    
                }
            }
            .onDelete(perform: deleteItems)
        } header: {
            Text(title)
        }
    }
}

struct ExpenseSection_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseSection(title: "Example", expenses: []) { _ in }
    }
}
