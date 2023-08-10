//
//  ActionForDarkPurple.swift
//  mockup2
//
//  Created by Jason Quick on 6/28/23.
//

import Foundation
import SpriteKit

class ActionsForDarkPurple: SKAction {
    var plusOneTechLevel: SKAction!
    
    func implementDarkPurpleAction(itemToBuildOnWhiteSquare: SKSpriteNode) {
        plusOneTechLevel = SKAction.run {
            labels.techLevel += 1
        }
        itemToBuildOnWhiteSquare.run(plusOneTechLevel)
    }
}
