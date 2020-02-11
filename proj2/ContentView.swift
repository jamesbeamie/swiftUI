//
//  ContentView.swift
//  proj2
//
//  Created by James on 2/10/20.
//  Copyright © 2020 James. All rights reserved.
//

import SwiftUI
import Combine

struct serverMessage: Decodable {
    let user: String
}

class HttpAuth: ObservableObject {
//    var didChange = PassThroughSubject<HttpAuth, Never>()
     var authenticated = false
//    var authenticated = false{
//        didSet{
//            didChange.send(self)
//        }
//    }
    
//    func checkDetails(username: String, password: String){
//        guard let url = URL(string: "http://127.0.0.1:8000/api/todo/users/") else {return}
//
//        let body: [String: String] = ["username": username, "password": password]
//
//        let finalBody = try! JSONSerialization.data(withJSONObject: body)
//
//        var request = URLRequest(url: url)
//
//        request.httpMethod = "POST"
//        request.httpBody = finalBody
//
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        URLSession.shared.dataTask(with: request){(data, response, error) in
//            let data = Data.self
//
//            let finalData = try! JSONDecoder().decode(serverMessage.self, from: data!)
//            print(finalData)
//        }.resume()
//    }
}

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    
    
    @State private var isLoggedIn: Int? = nil
    
    var manager = HttpAuth()
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                NavigationLink(destination: TodoView(), tag: 1, selection: self.$isLoggedIn){
                    Text("")
                }
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
            //                    print("\(self.username) and \(self.password)")
//                                    self.manager.checkDetails(username: self.username, password: self.password)
                                    self.isLoggedIn = 1
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
                    }.background(Image("bg")
                            .resizable()
                            .scaledToFill()
                            .clipped())
                            .edgesIgnoringSafeArea([.top, .bottom])
                    }
            
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
