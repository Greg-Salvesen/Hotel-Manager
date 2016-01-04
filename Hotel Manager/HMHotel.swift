//
//  HMHotel.swift
//  Hotel Manager
//
//  Created by Greg Salvesen on 12/31/15.
//  Copyright © 2015 Dark Vault Studios. All rights reserved.
//

import Foundation
import SpriteKit

class HMHotel: SKSpriteNode {
    
    var floors = [HMFloor]()
    var base: SKSpriteNode!
    
    init(size: Int) {
        super.init(texture:nil, color:UIColor.clearColor(), size:CGSizeMake(0, 0))
        base = SKSpriteNode(color: UIColor.clearColor(), size:CGSizeMake(0,0))
        base.position = CGPointMake(0, 0)
        addChild(base)
        
        /*let leftBase = SKSpriteNode(texture: SKTexture(imageNamed: "hotelbaseleft.png"), color: UIColor.clearColor(), size: CGSizeMake(25, 25))
        leftBase.position = CGPointMake(0, 0)
        base.addChild(leftBase)
        
        for var i = 0; i < size; i++ {
            let centerBase = SKSpriteNode(texture: SKTexture(imageNamed: "hotelbasecenter.png"), color: UIColor.clearColor(), size: CGSizeMake(25, 25))
            centerBase.position = CGPointMake(CGFloat((i + 1) * 25), 0)
            base.addChild(centerBase)
        }
        
        let rightBase = SKSpriteNode(texture: SKTexture(imageNamed: "hotelbaseright.png"), color: UIColor.clearColor(), size: CGSizeMake(25, 25))
        rightBase.position = CGPointMake(CGFloat((size + 1) * 25), 0)
        base.addChild(rightBase)*/
        
        let baseFloor = HMFloor(rooms: size, posX: 25, posY: 50)
        addFloor(baseFloor)
        
        var secondFloor = HMFloor(rooms: size, posX: 25, posY: 125)
        addFloor(secondFloor)
        
        secondFloor = HMFloor(rooms: size, posX: 25, posY: 200)
        addFloor(secondFloor)
        
        secondFloor = HMFloor(rooms: size, posX: 25, posY: 275)
        addFloor(secondFloor)
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addFloor(floor: HMFloor) {
        floors.append(floor)
        addChild(floor)
    }
    
}