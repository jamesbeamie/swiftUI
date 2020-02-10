//
//  ContentView.swift
//  proj2
//
//  Created by James on 2/10/20.
//  Copyright © 2020 James. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //normal variable private
    //private var variableYaState = false

    //state var
    @State private var variableYaState = false
    var body: some View {
        Text("e-kraal Task!") 
            .font(.headline)
            .fontWeight(.regular)
            .foregroundColor(Color.blue)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
