//
//  LevelController.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 10/29/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import Foundation
import UIKit.UITouch
import CoreMotion
import SceneKit

/**
 The protocol for listening to our game controls
 
 - Author:
 Theo Bayard de Volo
 */
protocol GameControlsDelegate {
    /**
     A method to be called when pause is pressed
    */
    func pauseWasPressed()
    
    /**
     A function for alerting the delegate of new motion information
     - parameters:
        - motionInformation: Information about the motion of the device
     */
    func newGyroscopeUpdate(motionInformation: CMDeviceMotion)
    
    /**
     A function for alerting the delegate of a screen touch
     - parameters:
        - userTouch: A touch event
     */
    func userTouchedScreen(userTouch: UITouch)
}

/**
 The protocol for listening to Level Model events
 
 - Author:
 Theo Bayard de Volo
 */
protocol LevelModelDelegate {
    /**
     A function for alerting the delegate of a collision between marble and some other node
     - parameters:
        - collidedWith: The node that the marble collided with
     */
    func marbleCollision(collidedWith: SCNNode)
}


/**
 
 A class responsible for gameplay logic/events
 
 - TODO:
 Make a new class for handling controls seperate from this one
 
 - Note:
 This class is a singleton
 
 - Note:
 This class conforms to the LevelModelDelegate and GameControlsDelegate protocols
 
 - Author:
 Theo Bayard de Volo
 
 */
class LevelController: LevelModelDelegate, GameControlsDelegate {
    /**
     Get the shared singleton instance
     */
    static let sharedInstance = LevelController()
    private init() {}
    
    // Public Methods
    public func marbleCollision(collidedWith: SCNNode) {
        <#code#>
    }
    
    public func pauseWasPressed() {
        <#code#>
    }
    
    public func newGyroscopeUpdate(motionInformation: CMDeviceMotion) {
        // Calc new gravity vector
        
        // Update LevelModel's gravity vector
    }
    
    public func userTouchedScreen(userTouch: UITouch) {
        <#code#>
    }
    
    // Private Methods
    
    /**
     Calculate the neccesary gravity vector relative to the phone screen
     
     - parameters:
        - deviceAttitude: The orientation of the device relative to straight down
     */
    private func calcNewGravityVector(deviceAttitude: CMAttitude) {
        <#code#>
    }
    
}
