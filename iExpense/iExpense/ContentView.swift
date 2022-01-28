//
//  ContentView.swift
//  iExpense
//
//  Created by naseem on 28/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = User()
    @State var showsheet = false
    
    var body: some View {
        VStack {
            Text("my name is \(user.firstName) \(user.lastName)")
                .padding()
            
            TextField("First Name", text: $user.firstName)
                .padding()
            TextField("Last Name", text: $user.lastName)
                .padding()
            
            Button("Show Sheet") {
                showsheet.toggle()
            }
            .frame(width: 100, height: 40)
            .background(Color.purple)
            .foregroundColor(.white)
        }
        .sheet(isPresented: $showsheet) {
            SecondView(name: "Senior Comrade")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class User: ObservableObject {
   @Published var firstName = "Naseem"
   @Published var lastName = "Oyebola"
}
