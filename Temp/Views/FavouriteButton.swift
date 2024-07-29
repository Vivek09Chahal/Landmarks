//
//  FavouriteButton.swift
//  Temp
//
//  Created by Vivek Chahal on 27/07/24.
//

import SwiftUI

struct FavouriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        }label: {
            Label("Toggle Favourite", systemImage: isSet ? "heart.fill" : "heart")
            .labelStyle(.iconOnly)
            .foregroundColor(isSet ? .red : .black)
        }
    }
}

#Preview {
    FavouriteButton(isSet: .constant(false))
}
