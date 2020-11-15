//
//  Direction.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 11/10/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import Foundation

/**
 A class that represents a direction as a point on the unit sphere
 */
class Direction {
    init(_ inclideRadians: Float, _ azimuthRadians: Float) {
        inclination = inclideRadians
        azimuth = azimuthRadians
    }
    
    private let inclination: Float
    private let azimuth: Float
    
    
    
}
