//
//  ModalRequestProtocol.swift
//  TiltyBall
//
//  Created by Theo Bayard de Volo on 11/1/20.
//  Copyright © 2020 TiltyBallTeam. All rights reserved.
//

import Foundation

/**
 The protocol for requestion modals
 
 - Author:
 Aryana
 */
protocol ModalRequestProtocol {
    func requestPauseModal()
    func requestEndModal(isLevelComplete : Bool)
}
