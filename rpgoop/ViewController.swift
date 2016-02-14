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
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!

    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Hiphopanonymous", hp: 117, attackPwr: 21)
        
        generateRandEnemy()
        
        playerLbl.text = "\(player.hp) HP"
    
    }
    
    func generateRandEnemy() {
        var rand = Int(arc4random_uniform(UInt32(2)))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 100, attackPwr: 17)
        } else {
            enemy = DevilWizard(startingHp: 130, attackPwr: 33)
        }
        enemyImg.hidden = false
    }
    
    @IBAction func attackPressed(sender: AnyObject) {
    }
    
    @IBAction func onChestPressed(sender: AnyObject) {
    }
    
}








