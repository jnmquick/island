//
//  ActionForLightPurple.swift
//  mockup2
//
//  Created by Jason Quick on 6/28/23.
//

import Foundation
import SpriteKit

class ActionsForLightPurple: SKAction {
    var increaseCurrency: SKAction!
    var waitingTime: SKAction!
    var lightPurpleSequence: SKAction!
    var numberOfLightPurples = 0.0
    
    func implementLightPurpleAction(itemToBuildOnWhiteSquare: SKSpriteNode) {
        increaseCurrency = SKAction.run {
            labels.currency += 1
        }
        for node in whiteSquares.children {
            if node.name != nil {
                if node.name!.hasPrefix("amethyst") || node.name!.hasPrefix("casino") {
                    node.removeAction(forKey: "lightPurpleAction")
                }
            }
        }
        numberOfLightPurples += 1.0
        waitingTime = SKAction.wait(forDuration: 1 / numberOfLightPurples)
        lightPurpleSequence = SKAction.sequence([waitingTime, increaseCurrency])
        itemToBuildOnWhiteSquare.run(SKAction.repeatForever(lightPurpleSequence), withKey: "lightPurpleAction")
        for node in whiteSquares.children {
            if node.name == itemToBuildOnWhiteSquare.name {
                node.action(forKey: "lightPurpleAction")
            }
        }
    }
}
