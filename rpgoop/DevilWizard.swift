//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Brian J Glowe on 2/11/16.
//  Copyright © 2016 BG. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        
        return ["Salted Pork", "Dark Amulet", "Magic Wand"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
    
}