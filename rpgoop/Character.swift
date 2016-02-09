//
//  Character.swift
//  rpgoop
//
//  Created by Brian J Glowe on 2/9/16.
//  Copyright © 2016 BG. All rights reserved.
//

import Foundation

class Character {

    private var _hp: Int = 100
    private var _attackPower: Int = 10

    // we use computed properties because we don't want to directly access the Character classes' properties, see 'private'
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPower = attackPwr
    }

    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
}