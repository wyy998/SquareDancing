//
//  LandmarkView.swift
//  SquareDancing
//
//  Created by Yuanyuan Wang on 2021/2/17.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
