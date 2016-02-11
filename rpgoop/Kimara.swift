//
//  Kimara.swift
//  rpgoop
//
//  Created by Brian J Glowe on 2/10/16.
//  Copyright © 2016 BG. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Rare Trident", "Tough Hide", "Kimara Venom"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool { 
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
}