//
//  HMFloor.swift
//  Hotel Manager
//
//  Created by Greg Salvesen on 12/31/15.
//  Copyright © 2015 Dark Vault Studios. All rights reserved.
//

import Foundation
import SpriteKit

class HMFloor: SKSpriteNode {
    
    var rooms = [HMRoom]()
    
    init(rooms: Int, posX: CGFloat, posY: CGFloat) {
        super.init(texture: nil, color: UIColor.clearColor(), size: CGSizeMake(0, 0))
        
        let leftSide = SKSpriteNode(texture: SKTexture(imageNamed: "hotelfrontleft"), color: UIColor.clearColor(), size: CGSizeMake(75, 75))
        leftSide.position = CGPointMake(posX, posY)
        addChild(leftSide)
        
        for var i = 0; i < rooms; i++ {
            let center = SKSpriteNode(texture: SKTexture(imageNamed: "hotelfrontcenter.png"), color: UIColor.clearColor(), size: CGSizeMake(75, 75))
            center.position = CGPointMake(posX + CGFloat(((i + 1) * 75)), posY)
            addChild(center)
            
            
        }
        
        let rightSide = SKSpriteNode(texture: SKTexture(imageNamed: "hotelfrontright.png"), color: UIColor.clearColor(), size: CGSizeMake(75, 75))
        rightSide.position = CGPointMake(posX + CGFloat((rooms + 1) * 75), posY)
        addChild(rightSide)
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}