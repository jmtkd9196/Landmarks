//
//  Hike.swift
//  Landmarks
//
//  Created by Kyungsoo Lee on 2022/08/27.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
    
    static var formatter = LengthFormatter()
    
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    

}
 
