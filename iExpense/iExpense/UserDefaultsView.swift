//
//  UserDefaultsView.swift
//  iExpense
//
//  Created by naseem on 28/01/2022.
//

import SwiftUI

struct UserDefaultsView: View {
//    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @AppStorage ("tapCount") private var tapCount = 0
    var body: some View {
        VStack {
            Text("\(tapCount)")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            Button("Tap count: \(tapCount)") {
                tapCount += 1
//                UserDefaults.standard.set(self.tapCount, forKey: "Tap")
            }
        }
    }
}

struct UserDefaultsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsView()
    }
}
