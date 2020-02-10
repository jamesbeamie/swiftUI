//
//  ContentView.swift
//  proj2
//
//  Created by James on 2/10/20.
//  Copyright © 2020 James. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            
            Image("user")
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .padding()
            VStack(alignment: .center){
                TextField("Username",text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Password",text:$password)
                   .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            Button(action: {
                print("\(self.username) and \(self.password)")
            }){
                Text("Login")
            }
            }.padding()
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
