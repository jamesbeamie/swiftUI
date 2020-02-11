//
//  TodoView.swift
//  proj2
//
//  Created by James on 2/11/20.
//  Copyright © 2020 James. All rights reserved.
//

import SwiftUI

struct TodoView: View {
    @State var networkingManager = NetworkingManager()
    var body: some View {
        VStack{
            Text("Items To Do")
                .font(.title)
                .fontWeight(.bold)
                
            List(networkingManager.todoList.results, id: \.self) { item in
                Text(item.title)
            }
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
