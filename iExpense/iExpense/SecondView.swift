//
//  SecondView.swift
//  iExpense
//
//  Created by naseem on 28/01/2022.
//

import SwiftUI

struct SecondView: View {
    @Environment (\.dismiss) var dismiss
    let name: String
    var body: some View {
        VStack {
            Text("Hello fam: \(name)")
            Button("Dismiss View") {
                dismiss()
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(name: "")
    }
}
