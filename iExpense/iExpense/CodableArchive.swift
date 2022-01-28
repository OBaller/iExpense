//
//  CodableArchive.swift
//  iExpense
//
//  Created by naseem on 28/01/2022.
//

import SwiftUI

struct CodableArchive: View {
    @State private var user = MUser(firstName: "Ayinde", lastName: "Ololade")
    var body: some View {
        VStack {
            Text("Candidate Name: \(user.firstName) \(user.lastName)")
            TextField("First Name", text: $user.firstName)
                .padding()
            TextField("Last Name", text: $user.lastName)
                .padding()
            
            Button("save user") {
                if let data = try? JSONEncoder().encode(user) {
                    UserDefaults.standard.set(data, forKey: "UserData")
                }
            }
        }
    }
}

struct CodableArchive_Previews: PreviewProvider {
    static var previews: some View {
        CodableArchive()
    }
}

struct MUser: Codable {
    var firstName: String
    var lastName: String
}
