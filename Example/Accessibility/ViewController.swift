//
//  ViewController.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

import UIKit
import Appt

class ViewController: UIViewController {

    @IBOutlet private var label1: UILabel!
    @IBOutlet private var label2: UILabel!
    @IBOutlet private var label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        Accessibility.announce("Example")
        
        label1.accessibility.label = "Custom accessibility label"
        label1.accessibility.action = "Custom accessibility action description"
        
        accessibility.elements = [label1, label3, label2]
    }
}
