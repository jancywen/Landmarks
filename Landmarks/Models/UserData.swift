//
//  UserData.swift
//  Landmarks
//
//  Created by wangwenjie on 2020/3/4.
//  Copyright © 2020 Petrel. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
