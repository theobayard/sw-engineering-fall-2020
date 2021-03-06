//
//  LevelController.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 10/30/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import Foundation

/**
 The class responsible for the highlevel gameplay events
 
 - Note:
 This class is a singleton
 
 - Author:
 Theo Bayard de Volo
 
 # Broadly, this class is responsible for:
 - starting a level
 - completing a level
 - restarting a level
 - pausing/unpausing a level
 
 */
class LevelController{
    // **** Public Variables **** //
    
    /// Singleton instance to be used by everything
    static let sharedInstance = LevelController()
    
    /// The active EffectController
    public let effectController: EffectController
    
    /// The class responsible for handling game controls
    public let gameControlDelegate: GameControlDelegate
    
    /// The active LevelAttemptRecordController
    public let levelAttemptRecordController: LevelAttemptRecordController
    
    /// The delegate responsible for carrying out ModalRequestProtocol functions
    public let modalRequestDelegate: ModalRequestProtocol
    
    // **** Public Methods **** //
    
    /**
     A function to be called when the level has been succesfully completed
     
     # Preconditions
     - A level is active
     
     # Postconditions
     - The level record has been submitted
     - The level completed modal has been activated
    */
    public func completedLevel() {
        <#code#>
    }
    
    /**
     A function to be called to restart the current level
     
     # Preconditions
     - A level is active
     
     # Postconditions
     - The levelAttemptRecordConroller instance variable has been reset
     - The LevelModel has been reset
     - effectController has been freshly initialized
     */
    public func restartLevel() {
        <#code#>
    }
    
    /**
     Pauses gameplay when called
     
     - throws:
        - levelAlreadyPaused
     
     # Preconditions
     - A level is loaded and unpaused
     
     # Postconditions:
     - The levelModel has been paused
     - The pause modal has been activated
     - The timer in this.levelAttemptRecordController has been paused
     
     */
    public func pause() {
        <#code#>
    }
    
    /**
     Unpauses gameplay when called
     
     - throws:
        - gameNotPaused
     
     # Preconditions
     - The levelModel is paused
     - The timer in this.levelAttemptRecordController is paused
     
     # Postconditions
     - The levelModel is unpaused
     - The timer in this.levelAttemptRecordController is unpaused
     */
    public func unpause() {
        <#code#>
    }
    
    /**
     Calls pause if to is true and unpause if false
    */
    public func setPause(setPauseTo to: Bool) {
        <#code#>
    }
    
    /**
     Begins a new level
     
     - Parameters:
        - levelName: The name of the level to start
     
     - throws:
        - levelNameInvalid when the given levelName is not the name of any known level
     
     # Postconditions
     - LevelModel has loaded the given level
     - this.levelAttemptRecordController has been freshly initialized
     - this.effectController has been freshly initialized
     */
    public func startLevel(levelName: String) {
        <#code#>
    }
    // **** Private Variables **** //
    
    /// Indicates whether or not the game is paused
    private let isPaused: Bool
    
    // **** Private Methods **** //
    
    // Enforce singleton usage
    private init() {
        isPaused = false
        effectController = EffectController()
        levelAttemptRecordController = LevelAttemptRecordController()
        gameControlDelegate = GameControlDelegate()
    }
}
