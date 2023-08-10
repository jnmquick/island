//
//  LongPressItems.swift
//  mockup2
//
//  Created by Jason Quick on 7/29/23.
//

import Foundation
import SpriteKit

class SquaresImage: SKSpriteNode {
    var whiteSquare1IsPressed = false
    
    var amethystSquare2IsPressed = false
    var grapeSquare2IsPressed = false
    var jasmineSquare2IsPressed = false
    var xanthousSquare2IsPressed = false
    var casinoSquare2IsPressed = false
    var powerPlantSquare2IsPressed = false
    
    var amethystSquare3IsPressed = false
    var grapeSquare3IsPressed = false
    var jasmineSquare3IsPressed = false
    var xanthousSquare3IsPressed = false
    var casinoSquare3IsPressed = false
    var powerPlantSquare3IsPressed = false
    
    var amethystSquare4IsPressed = false
    var grapeSquare4IsPressed = false
    var jasmineSquare4IsPressed = false
    var xanthousSquare4IsPressed = false
    var casinoSquare4IsPressed = false
    var powerPlantSquare4IsPressed = false
    
    var amethystSquare5IsPressed = false
    var grapeSquare5IsPressed = false
    var jasmineSquare5IsPressed = false
    var xanthousSquare5IsPressed = false
    var casinoSquare5IsPressed = false
    var powerPlantSquare5IsPressed = false
    
    var amethystSquare6IsPressed = false
    var grapeSquare6IsPressed = false
    var jasmineSquare6IsPressed = false
    var xanthousSquare6IsPressed = false
    var casinoSquare6IsPressed = false
    var powerPlantSquare6IsPressed = false
    
    var imageForSquare: SKSpriteNode!
    var location: CGPoint!
    
    func createTheImage(named: String, view: SKView) {
        imageForSquare = SKSpriteNode(imageNamed: named)
        imageForSquare.setScale(0.0)
        imageForSquare.position = CGPoint(x: location.x - view.scene!.camera!.position.x, y: location.y - view.scene!.camera!.position.y)
        addChild(imageForSquare)
        
        let moveAction = SKAction.move(to: CGPoint(x: view.frame.midX - view.frame.midX, y: view.frame.midY - view.frame.midY), duration: 0.25)
        let scaleUpAction = SKAction.scale(to: 0.4, duration: 0.25)
        let imageActionGroup = SKAction.group([moveAction, scaleUpAction])
        imageForSquare.run(imageActionGroup)
    }
    func removeTheImage(view: SKView) {
        whiteSquare1IsPressed = false
        amethystSquare2IsPressed = false
        grapeSquare2IsPressed = false
        jasmineSquare2IsPressed = false
        xanthousSquare2IsPressed = false
        amethystSquare3IsPressed = false
        grapeSquare3IsPressed = false
        jasmineSquare3IsPressed = false
        xanthousSquare3IsPressed = false
        amethystSquare4IsPressed = false
        grapeSquare4IsPressed = false
        jasmineSquare4IsPressed = false
        xanthousSquare4IsPressed = false
        amethystSquare5IsPressed = false
        grapeSquare5IsPressed = false
        jasmineSquare5IsPressed = false
        xanthousSquare5IsPressed = false
        amethystSquare6IsPressed = false
        grapeSquare6IsPressed = false
        jasmineSquare6IsPressed = false
        xanthousSquare6IsPressed = false
        casinoSquare2IsPressed = false
        powerPlantSquare2IsPressed = false
        casinoSquare3IsPressed = false
        powerPlantSquare3IsPressed = false
        casinoSquare4IsPressed = false
        powerPlantSquare4IsPressed = false
        casinoSquare5IsPressed = false
        powerPlantSquare5IsPressed = false
        casinoSquare6IsPressed = false
        powerPlantSquare6IsPressed = false
        
        if imageForSquare != nil {
            let scaleDownAction = SKAction.scale(to: 0.0, duration: 0.25)
            let moveAction = SKAction.move(to: CGPoint(x: location.x - view.scene!.camera!.position.x, y: location.y - view.scene!.camera!.position.y), duration: 0.25)
            let scaleActionGroup = SKAction.group([scaleDownAction, moveAction])
            let removeAction = SKAction.removeFromParent()
            let removeSequence = SKAction.sequence([scaleActionGroup, removeAction])
            imageForSquare.run(removeSequence)
        }
    }
    func touchLogicForLongPress(nodeTouched: SKNode) {
        switch nodeTouched.name {
        case "whiteSquare1":
            whiteSquare1IsPressed = true
            print("white square 1 is pressed", whiteSquare1IsPressed)
        case "amethystSquare2":
            amethystSquare2IsPressed = true
        case "grapeSquare2":
            grapeSquare2IsPressed = true
        case "jasmineSquare2":
            jasmineSquare2IsPressed = true
        case "xanthousSquare2":
            xanthousSquare2IsPressed = true
        case "amethystSquare3":
            amethystSquare3IsPressed = true
        case "grapeSquare3":
            grapeSquare3IsPressed = true
        case "jasmineSquare3":
            jasmineSquare3IsPressed = true
        case "xanthousSquare3":
            xanthousSquare3IsPressed = true
        case "amethystSquare4":
            amethystSquare4IsPressed = true
        case "grapeSquare4":
            grapeSquare4IsPressed = true
        case "jasmineSquare4":
            jasmineSquare4IsPressed = true
        case "xanthousSquare4":
            xanthousSquare4IsPressed = true
        case "amethystSquare5":
            amethystSquare5IsPressed = true
        case "grapeSquare5":
            grapeSquare5IsPressed = true
        case "jasmineSquare5":
            jasmineSquare5IsPressed = true
        case "xanthousSquare5":
            xanthousSquare5IsPressed = true
        case "amethystSquare6":
            amethystSquare6IsPressed = true
        case "grapeSquare6":
            grapeSquare6IsPressed = true
        case "jasmineSquare6":
            jasmineSquare6IsPressed = true
        case "xanthousSquare6":
            xanthousSquare6IsPressed = true
        case "casinoSquare2":
            casinoSquare2IsPressed = true
        case "powerPlantSquare2":
            powerPlantSquare2IsPressed = true
        case "casinoSquare3":
            casinoSquare3IsPressed = true
        case "powerPlantSquare3":
            powerPlantSquare3IsPressed = true
        case "casinoSquare4":
            casinoSquare4IsPressed = true
        case "powerPlantSquare4":
            powerPlantSquare4IsPressed = true
        case "casinoSquare5":
            casinoSquare5IsPressed = true
        case "powerPlantSquare5":
            powerPlantSquare5IsPressed = true
        case "casinoSquare6":
            casinoSquare6IsPressed = true
        case "powerPlantSquare6":
            powerPlantSquare6IsPressed = true
        default:
            break
        }
    }
    func findLocation(nodeTouched: SKNode) {
        location = nodeTouched.position
    }
}
