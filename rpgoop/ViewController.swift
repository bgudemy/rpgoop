//
//  ViewController.swift
//  rpgoop
//
//  Created by Brian J Glowe on 2/9/16.
//  Copyright © 2016 BG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerLbl: UILabel!
    
    @IBOutlet weak var enemyLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var chestBtn: UIButton!

    @IBAction func onChestPressed(sender: AnyObject) {
    }
    
}

