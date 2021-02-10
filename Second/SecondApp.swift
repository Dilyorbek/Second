//
//  SecondApp.swift
//  Second
//
//  Created by Dilyorbek on 10.02.21.
//

import SwiftUI

@main
struct SecondApp: App {
    @State var name: String = "Everyone"
    var body: some Scene {
        WindowGroup {
            ContentView(name: name)
                .onOpenURL { (url) in
                    print("URL  \(url)")
                    guard let url = URLComponents(string: url.absoluteString),
                          let name = url.queryItems?.first(where: { $0.name == "name" })?.value else { return }
                    self.name = name
                }
        }
    }
}
