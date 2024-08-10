//
//  CategoryRow.swift
//  Temp
//
//  Created by Vivek Chahal on 10/08/24.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var item: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0) {
                    ForEach(item){
                        landmark in
                        NavigationLink{
                            LandmarkDetails(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        item: Array(landmarks.prefix(3))
    )
}
