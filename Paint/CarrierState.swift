//
//  CarrierState.swift
//  Paint
//
//  Created by Evgenii KRUHLIUK on 8/15/19.
//  Copyright © 2019 Yevhenii Kruhliuk. All rights reserved.
//

import Foundation

struct CarrierState {
    var state: StateLinesMemento?
    var linesManager: LinesManager
    
    init(linesManager: LinesManager) {
        self.linesManager = linesManager
    }
    
    mutating public func saveLine() {
        state = linesManager.save()
    }
    
    mutating func loadLine() {
        guard state != nil else { return }
        linesManager.load(state: state!)
    }
}
