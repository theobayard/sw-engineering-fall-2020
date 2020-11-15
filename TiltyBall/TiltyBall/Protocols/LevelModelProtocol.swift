//
//  LevelModelProtocol.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 11/9/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import Foundation
import SceneKit

protocol LevelModelProtocol {
    /**
     Change the direction of the level's gravity
     
     - parameters:
        - toDirection: the new direction of gravity relative to the plane of the phone. Length of vector must be about 1.
     */
    func setGravityDirection(toDirection:Direction)
    
    /**
     Change the direction of the level's gravity
     
     - parameters:
        - addDirection: the 
     */
    func modifyGravityDirection(addDirection:Direction)
    
    /**
     A wrapper class to simplfy our scene models
     
     - parameters:
        - collisionDelegate: The delegate to be called for collisions
        - scene: The scene model to wrap
     */
    init(collisionDelegate:CollisionProtocal, scene:SCNScene)
}
