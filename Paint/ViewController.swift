//
//  ViewController.swift
//  Paint
//
//  Created by Evgenii KRUHLIUK on 8/15/19.
//  Copyright © 2019 Yevhenii Kruhliuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var carriarState: CarrierState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBoard.lineColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        let lines = LinesManager.shared
        carriarState = CarrierState(linesManager: lines)
    }
    

    @IBOutlet weak var viewBoard: DrawView!
    
    
    @IBAction func saveAction(_ sender: UIButton) {
    }
    
    @IBAction func loadAction(_ sender: UIButton) {
    }
    
    @IBAction func blueAction(_ sender: UIButton) {
        viewBoard.lineColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
    }
    
    @IBAction func greenAction(_ sender: UIButton) {
        viewBoard.lineColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
    }
    
    @IBAction func redAction(_ sender: UIButton) {
        viewBoard.lineColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
    }
    
    @IBAction func blackAction(_ sender: UIButton) {
        viewBoard.lineColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}

