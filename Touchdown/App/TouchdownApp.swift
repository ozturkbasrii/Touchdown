//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Hasan Basri Öztürk on 3.10.2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
