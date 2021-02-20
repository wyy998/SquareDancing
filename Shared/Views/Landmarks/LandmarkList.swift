//
//  LandmarkView.swift
//  SquareDancing
//
//  Created by Yuanyuan Wang on 2021/2/17.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavoritesOnly = false
    var body: some View {
        NavigationView {
          List {
            Toggle(isOn: $showFavoritesOnly) {
              Text("Favorites only")
            }
            ForEach(filteredLanmarks) { landmark in
                  NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                      LandmarkRow(landmark: landmark)
                  }
              }.navigationTitle("Landmarks")
          }
        }
    }

  var filteredLanmarks: [Landmark] {
    modelData.landmarks.filter{ landmark in
      (!showFavoritesOnly || landmark.isFavorite)
    }
  }
}

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
          .environmentObject(ModelData())
    }
}
