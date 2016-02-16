//
//  Player.swift
//  rpgoop
//
//  Created by Brian J Glowe on 2/9/16.
//  Copyright © 2016 BG. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name: String = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    
    func addLootToInventory(item: String) {
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)

        _name = name
    }
}