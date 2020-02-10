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
    var body: some View {
        VStack{
            TextField("Task",text: $variableYaState)
                .font(.body)
            Text("The input is: \(variableYaState)")

        }
    .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
