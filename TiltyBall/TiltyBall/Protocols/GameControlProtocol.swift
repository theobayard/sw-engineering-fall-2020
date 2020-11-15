//
//  ControlProtocal.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 10/30/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import UIKit
import Foundation

/**
 The protocol for listening to our game controls
 
 - Author:
 Theo Bayard de Volo
 */
protocol GameControlProtocol {
    
    /**
     A function for alerting the delegate of a double tap
     - parameters:
        - gestureRecognizer: the recognizer that recognized the action
     */
    func userDoubleTappedScreen(_ gestureRecognizer : UITapGestureRecognizer )
    
    /**
     A function for alerting the delegate of a pan
     - parameters:
        - gestureRecognizer: the recognizer that recognized the action
     */
    func userPannedScreen(_ gestureRecognizer : UIPanGestureRecognizer)
}
