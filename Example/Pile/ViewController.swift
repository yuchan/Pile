//
//  ViewController.swift
//  Pile
//
//  Created by yuchan on 08/29/2017.
//  Copyright (c) 2017 yuchan. All rights reserved.
//

import UIKit
import Pile

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Pile.add(vc: self)
        Pile.dump()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

