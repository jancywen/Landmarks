//
//  CircleImage.swift
//  Landmarks
//
//  Created by wangwenjie on 2020/3/3.
//  Copyright © 2020 Petrel. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.green, lineWidth: 4)
        ).shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
