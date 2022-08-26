//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kyungsoo Lee on 2022/08/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
