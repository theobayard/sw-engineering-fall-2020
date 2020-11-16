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
     Change the direction of the level's down vector.
     
     - parameters:
     - toDirection: the new direction of down relative to the plane of the phone.
     */
    func setDownDirection(_ toDirection:Direction)
    
    /**
     Rotate the model 90 degrees in the specified direction
     */
    func rotate(rotationDirection byRotating: RotationDirection)
    
    /**
     Change the direction of the level's down vector
     
     - parameters:
     - addDirection: the direction to add to the current down direction
     */
    func modifyDownDirection(_ addDirection:Direction)
    
    /**
     Load a new level into LevelModel
     
     - parameters:
     - collisionDelegate: The delegate to be called for collisions
     - scene: The scene model to wrap
     */
    func loadLevel(_ collisionDelegate:CollisionProtocal, _ scene:SCNScene)
}
