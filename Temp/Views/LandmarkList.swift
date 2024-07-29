//
//  LandmarkList.swift
//  Temp
//
//  Created by Vivek Chahal on 26/07/24.
//

import SwiftUI

struct LandmarkList: View{
    
    @Environment(ModelData.self) var modelData
    @State private var showFavouriteOnly : Bool = false
    
    var body : some View{
        
        var filteredLandmark: [Landmark]{
            modelData.landmarks.filter{
                landmark in ( !showFavouriteOnly || landmark.isFavorite)
            }
        }
        
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavouriteOnly){
                    Text("Favourite Only")
                }
                
                ForEach(filteredLandmark){
                    landmark in NavigationLink{
                        LandmarkDetails(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.bouncy, value: filteredLandmark)
            .navigationTitle("Landmarks")
        }
        detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
