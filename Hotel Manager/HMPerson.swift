//
//  HMPerson.swift
//  Hotel Manager
//
//  Created by Greg Salvesen on 12/30/15.
//  Copyright © 2015 Dark Vault Studios. All rights reserved.
//

import Foundation
import SpriteKit

class HMPerson: SKSpriteNode {
    
    var charName: String!
    
    init(name: String, color: UIColor) {
        super.init(texture: nil, color: color, size: CGSizeMake(32, 48))
        
        charName = name
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}