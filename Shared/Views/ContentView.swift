//
//  ContentView.swift
//  Shared
//
//  Created by Yuanyuan Wang on 2021/2/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
          .environmentObject(ModelData())
    }
}
