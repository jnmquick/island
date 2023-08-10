//
//  CharacterMenuButtons.swift
//  mockup2
//
//  Created by Jason Quick on 7/24/23.
//

import Foundation
import SpriteKit

class CharacterMenuButtons: SKSpriteNode {
    
    var backButton: SKSpriteNode!
    var backButtonLabel: SKLabelNode!
    
    func createbackButton(view: SKView) {
        
        backButton = SKSpriteNode(imageNamed: "Asset 14")
        backButton.setScale(0.32)
        backButton.position = CGPoint(x: view.frame.minX + view.frame.size.width / 6, y: view.frame.maxY - view.frame.size.height / 10)
        backButton.zPosition = 1
        backButton.name = "Back Button"
        addChild(backButton)
        
        backButtonLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        backButtonLabel.text = "Back"
        backButtonLabel.fontSize = 10
        backButtonLabel.fontColor = forbiddenFruit
        backButtonLabel.position = CGPoint(x: backButton.frame.midX, y: backButton.frame.midY)
        backButtonLabel.zPosition = 2
        backButtonLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        backButtonLabel.name = "Back Button"
        addChild(backButtonLabel)
    }
}
