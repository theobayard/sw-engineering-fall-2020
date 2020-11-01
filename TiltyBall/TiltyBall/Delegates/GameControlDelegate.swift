//
//  GameControlDelegate.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 11/1/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion

/**
 The wrapper class for specific control schemas. This class monitors the game settings and makes sure the control schema always matches the settings
 */
class GameControlDelegate: GameControlProtocol {
    // **** Public Functions **** //
    
    /// Forwards UITouch to class delegate instance
    public func userTouchedScreen(userTouch: UITouch) {
        <#code#>
    }
    
    /**
     React to control setting change by setting myControlDelegate to the appropriate type
     
     - Parameters:
        - toType: The new control type
     */
    public func controlsChanged(controlType toType: GameControlTypes) {
        
    }
    
    
    init() {
        // Initialize myControlDelegate to the correct delegate based on the value of GameSettings.sharedInstance.controlType
        
        // Set up a listener on GameSettings.sharedInstance.controlType to call controlsChanged
        // Use this guide: https://developer.apple.com/documentation/swift/cocoa_design_patterns/using_key-value_observing_in_swift
    }
    
    // **** Private Variables **** //
    private let myControlDelegate: GameControlProtocol
    
    
    
    
}

/**
 A delegate in charge of user controls when the controls
 are in gyroscope mode.
 
 - Author:
 Theo Bayard de Volo
 */
fileprivate class GyroGameControlDelegate: GameControlProtocol {
    
    public func userTouchedScreen(userTouch: UITouch) {
        <#code#>
    }
    
    init() {
        
    }
    
    /**
     Calculate the neccesary gravity vector relative to the phone screen
     
     - parameters:
        - deviceAttitude: The orientation of the device relative to straight down
     */
    private func calcNewGravityVector(deviceAttitude: CMAttitude) {
        <#code#>
    }
    
}

/**
 A delegate in charge of user controls when the controls
 are in gyroscope mode.
 
 - Author:
 Theo Bayard de Volo
 */
fileprivate class TouchGameControlDelegate: GameControlProtocol {
    func userTouchedScreen(userTouch: UITouch) {
        <#code#>
    }
    
    let levelController = LevelController.sharedInstance
    
}
