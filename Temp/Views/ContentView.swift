//
//  ContentView.swift
//  Temp
//
//  Created by Vivek Chahal on 22/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

