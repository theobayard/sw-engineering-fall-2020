//
//  GameSettings.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 10/30/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import Foundation

/**
 A global class for storing game setting information
 */
struct GameSettings {
    private init() {}
    static let sharedInstance = GameSettings()
    let controlType: GameControlTypes
    let radiansToRotatePerPixelPanned: Float
}
