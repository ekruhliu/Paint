//
//  StateFileMemento.swift
//  Paint
//
//  Created by Evgenii KRUHLIUK on 8/15/19.
//  Copyright © 2019 Yevhenii Kruhliuk. All rights reserved.
//

import Foundation

class StateFileMemento {
    
    var linesArray: [LineModel]
    
    init(lines: [LineModel]) {
        self.linesArray = lines
    }
}
