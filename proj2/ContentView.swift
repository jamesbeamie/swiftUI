//
//  ContentView.swift
//  proj2
//
//  Created by James on 2/10/20.
//  Copyright © 2020 James. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Text("Hello, World!")
                .fontWeight(.heavy)
            .foregroundColor(Color.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
