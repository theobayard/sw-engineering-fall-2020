//
//  CollisionProtocal.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 10/30/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import Foundation
import SceneKit

/**
 The protocol for listening to Level Model events
 
 - Author:
 Theo Bayard de Volo
 */
protocol CollisionProtocal {
    /**
     A function for alerting the delegate of a collision between marble and some other node
     - parameters:
        - collidedWith: The node that the marble collided with
     */
    func marbleCollision(collidedWith: SCNNode)
}
