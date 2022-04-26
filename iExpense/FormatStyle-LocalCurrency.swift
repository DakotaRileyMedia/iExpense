//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Dakota Riley on 4/25/22.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currencyCode ?? "USD")
    }
}
