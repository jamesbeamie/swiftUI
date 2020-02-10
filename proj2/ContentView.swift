//
//  ContentView.swift
//  proj2
//
//  Created by James on 2/10/20.
//  Copyright © 2020 James. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    normal private variable
//    private var aVariable = false

//    state variable
    @State private var variableYaState = ""
    @State private var batonState = ""
    var body: some View {
//
        VStack(spacing: 20){
            Text("ToDo App")
                .font(.title)
                .fontWeight(.bold)
                
            HStack(alignment: .center, spacing: 20){
                VStack(alignment: .leading, spacing: 40){
                    HStack{
                        TextField("Enter ToDo Item",text: $variableYaState)
                    }
                    HStack{
                        Text("I will: \(variableYaState)")
                        Button(action: {
                            self.batonState = "Added"
                        }){
                            Text("Add")
                        }.disabled(batonState == "Added")
                    }
                }
            }

        }
    .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
