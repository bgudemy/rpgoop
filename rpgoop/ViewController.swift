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
        
        player = Player(name: "Hiphopanonymous", hp: 69, attackPwr: 21)
        
        generateRandEnemy()
        
        playerLbl.text = "\(player.hp) HP"
    
    }
    
    func generateRandEnemy() {
        let rand = Int(arc4random_uniform(UInt32(2)))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 45, attackPwr: 17)
        } else {
            enemy = DevilWizard(startingHp: 77, attackPwr: 33)
        }
        enemyImg.hidden = false
    }
    
    @IBAction func attackPressed(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPower) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyLbl.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attack unsuccesful"
        }
        
        if let loot = enemy.dropLoot() {
            player.addLootToInventory(loot)
            chestMessage = "\(player.name) scored \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            printLbl.text = "Killed \(enemy.type)"
            enemyLbl.text = "DEAD"
            enemyImg.hidden = true
        }
    }
    
    @IBAction func onChestPressed(sender: AnyObject) {
    
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "generateRandEnemy", userInfo: nil, repeats: false)
    }
    
}

