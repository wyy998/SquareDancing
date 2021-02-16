//
//  ContentView.swift
//  Shared
//
//  Created by Yuanyuan Wang on 2021/2/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleImage()
                .offset(y: -60)
                .padding(.bottom, -60)
            VStack(alignment: .leading) {
                Text("Hello, SwiftUI!")
                    .font(.title)
                    .foregroundColor(Color.green)
                HStack {
                    Text("Yuanyuan")
                    Spacer()
                    Text("2020-02-16")
                }.font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("This is my first time meet with swiftUI.")
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
