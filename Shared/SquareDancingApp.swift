//
//  SquareDancingApp.swift
//  Shared
//
//  Created by Yuanyuan Wang on 2021/2/16.
//

import SwiftUI

@main
struct SquareDancingApp: App {
  @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
              .environmentObject(modelData)
        }
    }
}
