//
//  GameScene.swift
//  Hotel Manager
//
//  Created by Greg Salvesen on 12/29/15.
//  Copyright (c) 2015 Dark Vault Studios. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var hotel: HMHotel!
    
    override func didMoveToView(view: SKView) {
        let background = SKSpriteNode(texture: SKTexture(imageNamed: "sky.png"), color: UIColor.clearColor(), size: view.frame.size)
        background.position = CGPointMake(self.size.width / 2, self.size.height / 2)
        addChild(background)
    
        hotel = HMHotel(size: 3)
        addChild(hotel)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
