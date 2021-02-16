//
//  CircleImage.swift
//  SquareDancing
//
//  Created by Yuanyuan Wang on 2021/2/16.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("horse-face")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
