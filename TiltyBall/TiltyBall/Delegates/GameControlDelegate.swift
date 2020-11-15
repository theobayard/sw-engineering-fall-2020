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
    
    func userDoubleTappedScreen(_ gestureRecognizer: UITapGestureRecognizer) {
        // Double taps are always the same, so handle it here
        
        // Figure out what quadrant of the screen the tap was in (defined by drawing lines from opposite corners of the screen)
        
        // Rotate gravity pi/2 radians towards the tapped quadrant
    }
    
    func userPannedScreen(_ gestureRecognizer: UIPanGestureRecognizer) {
        // Forward to subControl
        <#code#>
    }
    
    init() {
        // Initialize myControlDelegate to the correct delegate based on the value of GameSettings.sharedInstance.controlType
        
        // Set up a listener on GameSettings.sharedInstance.controlType to call controlsChanged
        // Use this guide: https://developer.apple.com/documentation/swift/cocoa_design_patterns/using_key-value_observing_in_swift
    }
    
    /**
     React to control setting change by setting myControlDelegate to the appropriate type
     
     - Parameters:
     - toType: The new control type
     */
    private func controlsChanged(controlType toType: GameControlTypes) {
        
    }
    
    // **** Private Variables **** //
    private let myControlDelegate: SubGameControlProtocol
}

fileprivate protocol SubGameControlProtocol {
    func userPannedScreen(_ gestureRecognizer: UIPanGestureRecognizer)
}

/**
 A delegate in charge of user controls when the controls
 are in gyroscope mode.
 
 - Author:
 Theo Bayard de Volo
 */
fileprivate class GyroGameControls: SubGameControlProtocol {
    
    /// Do nothing
    func userPannedScreen(_ gestureRecognizer: UIPanGestureRecognizer) {
        // Nothing to do here as this control is disabled when this object is active
    }
    
    init() {
        // Start listening to device gyroscope using this guide: https://developer.apple.com/documentation/coremotion/getting_processed_device-motion_data
    }
    
    deinit {
        // Stop listening to device gyroscope
    }
    
    /**
     Update gravity direction relative to the phone screen
     
     - parameters:
        - deviceAttitude: The orientation of the device relative to straight down
     */
    private func updateGravityDirection(deviceAttitude: CMAttitude) {
        
    }
    
}

/**
 A delegate in charge of user controls when the controls
 are in gyroscope mode.
 
 - Author:
 Theo Bayard de Volo
 */
fileprivate class TouchGameControls: SubGameControlProtocol {

    /// Tilt screen based on position relative to begining of touch
    func userPannedScreen(_ gestureRecognizer: UIPanGestureRecognizer) {
        // Use this tutorial: https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/handling_uikit_gestures/handling_pan_gestures
        // Update gravity relative to distance from initial touch
    }
    
    init() {
        
    }
    
}
