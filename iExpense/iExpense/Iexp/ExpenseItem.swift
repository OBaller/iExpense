//
//  ExpenseItem.swift
//  iExpense
//
//  Created by naseem on 30/01/2022.
//

import Foundation
struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
