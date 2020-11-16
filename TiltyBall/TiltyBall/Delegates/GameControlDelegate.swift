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
    
    /**
     React to the double tap user interaction by telling LevelModel to rotate pi/2 radians towards the quadrant where the double tap occured.
     
     # Preconditions:
     - A level is currently running
     
     # Postconditions:
     - The level has been rotated pi/2 radians toward the quardant where the double tap occured.
    */
    func userDoubleTappedScreen(_ gestureRecognizer: UITapGestureRecognizer) {
        // Double taps are always the same, so handle it here
        
        // Figure out what quadrant of the screen the tap was in (defined by drawing lines from opposite corners of the screen). If the tap is right on a line, default to the quadrant further clockwise.
        
        // Rotate the model using LevelModel.rotate in the desired direction
    }
    
    /**
     Forward pan gestures to the subGameControlDelegate. The effect on gameplay is then determined by delegate carrying out the SubGameControlProtocol.
     
     # Preconditions:
     - A level is currently running
     
     # Postconditions:
     - the gesture is forwarded to myControlDelegate
    */
    func userPannedScreen(_ gestureRecognizer: UIPanGestureRecognizer) {
        // Forward to subControl
        <#code#>
    }
    
    /**
     Get a new instance of GameControlDelegate
     
     # Postconditions
     - myControlDelegate is initialized and the type matches what GameSettings.sharedInstance.controlType specifies
     - A listener is set up to change myControlDelegate is controlType changes
     - self.levelModel is set to levelModel
     */
    init(levelModel withModel: LevelModelProtocol) {
        // Initialize myControlDelegate to the correct delegate based on the value of GameSettings.sharedInstance.controlType
        
        // Set up a listener on GameSettings.sharedInstance.controlType to call controlsChanged
        // Use this guide to set up listener: https://developer.apple.com/documentation/swift/cocoa_design_patterns/using_key-value_observing_in_swift
    }
    
    /**
     React to control setting change by setting myControlDelegate to the appropriate type
     
     - Parameters:
        - toType: The new control type
     
     # Postconditions
     - Type of myControlDelegate is the type specified by toType
     */
    private func controlsChanged(controlType toType: GameControlTypes) {
        
    }
    
    // **** Private Variables **** //
    /**
     This is the delegate that determines how variable game controls act
    */
    private let myControlDelegate: SubGameControlProtocol
    
    private let levelModel: LevelModelProtocol
}



/********************* SubControllers *********************/



fileprivate protocol SubGameControlProtocol {
    func userPannedScreen(_ gestureRecognizer: UIPanGestureRecognizer)
}

/**
 A delegate in charge of user controls when the controls
 are in gyroscope mode. In this mode panning will do nothing and the down direction of the level will be updated according to the attitude of the phone.
 
 - Author:
 Theo Bayard de Volo
 */
fileprivate class GyroGameControls: SubGameControlProtocol {
    
    /// Do nothing
    func userPannedScreen(_ gestureRecognizer: UIPanGestureRecognizer) {
        // Nothing to do here as this control is disabled when this object is active
    }
    
    /**
     # Postconditions:
     - Gryoscope events are being sent to self.queue to be processed
     - self.levelModel is set to levelModel
     */
    init(levelModel withModel: LevelModelProtocol) {
        // Start listening to device gyroscope using this guide: https://developer.apple.com/documentation/coremotion/getting_processed_device-motion_data
        // Make life easier by setting the reference attitude to be straight down here. This will avoid having to convert to that over and over again later.
    }
    
    /**
     # Postconditions:
     - The gryoscope hardware is no longer active
     - All member variables are deinitiated
     */
    deinit {
        // Turn off device gyroscope
    }
    
    /**
     Update gravity direction relative to the phone screen
     
     # Postconditions:
     - LevelModel has been instructed to change it's down direction to match true down direction.
     
     - parameters:
        - deviceAttitude: The orientation of the device relative to horizontal north
     */
    private func updateDownDirection(deviceAttitude: CMAttitude) {
        // Use the roll and pitch of CMAAttitude to determine where the back of the phone is pointing relative to straight down. See this for more information on what roll and pitch mean: https://developer.apple.com/documentation/coremotion/getting_processed_device-motion_data/understanding_reference_frames_and_device_attitude
        
        // Update the down direction of the level to the inverse of where the phone is pointing using interface LevelModel.setDownDirection
        
    }
    
    private let levelModel: LevelModelProtocol
}

/**
 A delegate in charge of user controls when the controls are in touch mode.
 
 - Author:
 Theo Bayard de Volo
 */
fileprivate class TouchGameControls: SubGameControlProtocol {
    
    // Public Members //

    /**
     Tilt screen based on position relative to begining of touch
     
     - parameters:
        - gestureRecognizer: The gesture recogniser that holds information about the pan event.
     
     # Postconditions:
     - LevelModel has been instructed to modify it's down direction towards the opposite direction of pan and proportionally to GameSettings.sharedInstance.radiansToRotatePerPixelPanned
        - For example, a pan 1 pixel up and 2 pixels right should cause a rotation of 1\*radiansToRotatePerPixelPanned down and 2\*radiansToRotatePerPixelPanned left
     */
    func userPannedScreen(_ gestureRecognizer: UIPanGestureRecognizer) {
        // Use this tutorial: https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/handling_uikit_gestures/handling_pan_gestures
        
        // Set previousPanPoint to current pan point if this is the beginning of a pan
        
        // Update down direction relative to distance from previous pan location using LevelModel.modifyDownDirection and accoring to GameSettings.sharedInstance.radiansToRotatePerPixelPanned
        
        // Set previousPanPoint to current pan point
    }
    
    /**
     # Postconditions:
     - self.levelModel is set to levelModel
    */
    init(levelModel withModel: LevelModelProtocol) {
        <#code#>
    }
    
    //// Private Members ////
    private let previousPanPoint: CGPoint
    private let levelModel: LevelModelProtocol
    
}
