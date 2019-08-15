//
//  LinesManager.swift
//  Paint
//
//  Created by Evgenii KRUHLIUK on 8/15/19.
//  Copyright © 2019 Yevhenii Kruhliuk. All rights reserved.
//

import UIKit

struct LinesManager {
    static let shared = LinesManager()
    
    var linesArray = [LineModel]()
    
    func save() -> StateLinesMemento {
        return StateLinesMemento(lines: self.linesArray)
    }
    
    mutating func load(state: StateLinesMemento) {
        self.linesArray = state.linesArray
    }
    
    func printLines(in view: UIView) {
        for views in view.layer.sublayers! {
            views.removeFromSuperlayer()
        }

        for line in linesArray {
            let path = UIBezierPath()
            path.move(to: line.start)
            path.addLine(to: line.end)
            drawShapeLayer(path, line.color, view)
        }
    }
    
    private func drawShapeLayer(_ path: UIBezierPath, _ lineColor: UIColor, _ view: UIView) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(shapeLayer)
        view.setNeedsDisplay()
    }
}
