//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kyungsoo Lee on 2022/08/26.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Faborites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //        ForEach(["iPhone SE (3rd generation)", "iPhone XS Max", "iPad Pro (12.9-inch) (5th generation)"], id: \.self) { deviceName in
        //        LandmarkList()
        //            .previewDevice(PreviewDevice(rawValue: deviceName))
        //                            .previewDisplayName(deviceName)
        //}
        LandmarkList()
    }
}

