//
//  MenuLabelFunctions.swift
//  mockup2
//
//  Created by Jason Quick on 7/24/23.
//

import Foundation
import SpriteKit

func createMenuItemLabels(text: String, pos: CGPoint) -> SKLabelNode {
    let item = SKLabelNode(fontNamed: "Forbidden Fruit")
    item.text = text
    item.position = pos
    item.fontSize = 6
    item.fontColor = ghostWhite
    item.zPosition = 4
    
    return item
}

func moveMenuItemLabels(label: SKLabelNode, pos: CGPoint) {
    let moveAction = SKAction.move(to: pos, duration: 0.25)
    label.run(moveAction)
}

func removeMenuItemLabels(label: SKLabelNode, posY: CGFloat) {
    let moveAction = SKAction.moveTo(y: posY, duration: 0.25)
    let removeAction = SKAction.removeFromParent()
    let sequenceAction = SKAction.sequence([moveAction, removeAction])
    
    label.run(sequenceAction)
}
