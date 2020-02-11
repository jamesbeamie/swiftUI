//
//  NetworkingManager.swift
//  proj2
//
//  Created by James on 2/11/20.
//  Copyright © 2020 James. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class NetworkingManager: ObservableObject{
    var didChange = PassthroughSubject<NetworkingManager, Never>()
    
    @Published var todoList = TodoAPIList()
    
    init(){
        guard let url = URL(string: "http://127.0.0.1:8000/api/todo/todo")else{return}
        URLSession.shared.dataTask(with: url){(data, _, _) in
//            check 2 ensure there is data from the URL
            guard let data = data else {return}
            
            let todoList = try! JSONDecoder().decode(TodoAPIList.self, from:data)
            
            DispatchQueue.main.async {
                self.todoList = todoList
            }
        }.resume()
    }
}
