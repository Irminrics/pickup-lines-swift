//
//  PickupLinesApp.swift
//  PickupLines
//
//  Created by Jun Kang on 1/8/21.
//

import SwiftUI

@main
struct PickupLinesApp: App {
    @AppStorage("name") var name = "User"
    @AppStorage("registered") var registered = false
    
    var body: some Scene {
        WindowGroup {
            if registered {
                LoginView(name: name)
            }
            else {
            ContentView()
            }
        }
    }
}
