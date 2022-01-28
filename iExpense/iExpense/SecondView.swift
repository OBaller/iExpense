//
//  SecondView.swift
//  iExpense
//
//  Created by naseem on 28/01/2022.
//

import SwiftUI

struct SecondView: View {
    let name: String
    var body: some View {
        Text("Hello fam: \(name)")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(name: "")
    }
}
