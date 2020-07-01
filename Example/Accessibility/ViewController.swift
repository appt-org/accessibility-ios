//
//  ViewController.swift
//  Accessibility
//
//  Created by Jan Jaap de Groot on 07/01/2020.
//  Copyright (c) 2020 Abra BV. All rights reserved.
//

import UIKit
import Accessibility

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        Accessibility.announce("Example")
    }
}
