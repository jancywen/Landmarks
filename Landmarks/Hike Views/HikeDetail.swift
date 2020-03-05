//
//  HikeDetail.swift
//  Landmarks
//
//  Created by wangwenjie on 2020/3/5.
//  Copyright © 2020 Petrel. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    @State var dataToShow = \Hike.Observation.elevation
    
    var buttons = [
        ("Elevation", \Hike.Observation.elevation),
        ("Heart Rate", \Hike.Observation.heartRate),
        ("Pace", \Hike.Observation.pace)
    ]
    var body: some View {
        
        VStack {
            HikeGraph(hike: hike, path: dataToShow)
                .frame(height: 200)
            HStack(spacing: 25) {
                ForEach(buttons, id:\.0) { value in
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.dataToShow = value.1
                        }
                    }) {
                        Text(value.0)
                            .font(.system(size: 15))
                            .foregroundColor(value.1 == self.dataToShow
                                ? Color.gray
                                : Color.accentColor)
                            .animation(nil)
                    }
                }
            }
        }
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: hikeData[0])
    }
}
