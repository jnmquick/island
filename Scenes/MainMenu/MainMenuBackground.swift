//
//  MainMenuBackground.swift
//  mockup2
//
//  Created by Jason Quick on 7/24/23.
//

import Foundation
import SpriteKit

class MainMenuBackground: SKSpriteNode {
    
    var background: SKSpriteNode!
    
    func createBackground(view: SKView) {
        
        background = SKSpriteNode(imageNamed: "Asset 1")
        background.setScale(0.5)
        background.zPosition = -1
        background.position = CGPoint(x: view.frame.midX, y: view.frame.midY)
        background.name = "background"
        print(background.frame.width)
        print(background.frame.height)
        addChild(background)
    }
}
