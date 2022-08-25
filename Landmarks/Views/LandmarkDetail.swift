//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Kyungsoo Lee on 2022/08/26.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
        MapView()
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
        CircleImage()
            .offset(y: -130)
            .padding(.bottom, -130)
        VStack(alignment: .leading) {
            Text("Turtle rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            Divider()
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here.")
        }
        .padding()
        Spacer()
    }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}