//
//  Treasure.swift
//  mockup2
//
//  Created by Jason Quick on 8/2/23.
//

import Foundation
import SpriteKit

class Treasure: SKNode {
    
    var goldCoin: SKSpriteNode!
    var crystals: SKSpriteNode!
    var treasureChest: SKSpriteNode!
    var time: Int!
    
    func randNum() -> Int {
        Int.random(in: 1...100)
    }
    
    func createTreasure(location: CGPoint, number: Int) {
        goldCoin = SKSpriteNode(imageNamed: "Asset 42")
        goldCoin.setScale(0.3)
        goldCoin.zPosition = 1
        goldCoin.name = "Gold Coin"
        
        crystals = SKSpriteNode(imageNamed: "Asset 43")
        crystals.setScale(0.2)
        crystals.zPosition = 1
        crystals.name = "Crystal"
        
        treasureChest = SKSpriteNode(imageNamed: "Chest2")
        treasureChest.setScale(0.18)
        treasureChest.zPosition = 1
        treasureChest.name = "Treasure Chest"
        
        switch number {
        case 1...64:
            goldCoin.position = location
            addChild(goldCoin)
        case 65...95:
            crystals.position = location
            addChild(crystals)
        case 95...100:
            treasureChest.position = location
            addChild(treasureChest)
        default:
            break
        }
    }
    func findLocation(rect: SKShapeNode) -> CGPoint {
        let randomX = random(min: CGRectGetMinX(rect.frame), max: CGRectGetMaxX(rect.frame))
        let randomY = random(min: CGRectGetMinY(rect.frame), max: CGRectGetMaxY(rect.frame))
        return CGPoint(x: randomX, y: randomY)
    }
    
    func random() -> CGFloat {
        return CGFloat(Float(arc4random())) / 0xFFFFFFFF
    }
    
    func random(min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
}
