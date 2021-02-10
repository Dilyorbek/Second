//
//  ContentView.swift
//  Second
//
//  Created by Dilyorbek on 10.02.21.
//

import SwiftUI

struct ContentView: View {
    var name: String
    var body: some View {
        Text("Hello, \(name)!").padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: "Dilyorbek")
    }
}
