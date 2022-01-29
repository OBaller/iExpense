//
//  ExpenseList.swift
//  iExpense
//
//  Created by naseem on 28/01/2022.
//

import SwiftUI

struct ExpenseList: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ExpenseList_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseList()
    }
}

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}


class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
