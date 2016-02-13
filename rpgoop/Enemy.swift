//
//  Enemy.swift
//  rpgoop
//
//  Created by Brian J Glowe on 2/10/16.
//  Copyright © 2016 BG. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            var rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}