//
//  TempApp.swift
//  Temp
//
//  Created by Vivek Chahal on 22/07/24.
//

import SwiftUI

@main
struct TempApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
