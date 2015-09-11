//
//  ViewController.swift
//  ManagedStats
//
//  Created by Bob Pascazio on 09/11/2015.
//  Copyright (c) 2015 Bob Pascazio. All rights reserved.
//

import UIKit
import ManagedStats

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ms = MAStats()
        ms.record()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

