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
        VStack(alignment: .leading){
            Spacer()
            HStack{
                Spacer()
                Image("user")
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                Spacer()
                }
            VStack(alignment: .center){
                TextField("Username",text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("Password",text:$password)
                   .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                HStack{
                    Spacer()
                    Button(action: {
                    print("\(self.username) and \(self.password)")
                    }){
                        Text("Login")
                            .foregroundColor(Color.white)
                        }
                    Spacer()
                }.padding()
                    .background(Color.gray)
                    .padding(.horizontal, 80)
            }.padding()
            Spacer()
        }
        .background(Image("bg")
            .resizable()
            .scaledToFill()
            .clipped())
            .edgesIgnoringSafeArea([.top, .bottom])
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
