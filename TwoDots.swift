//
//  Three Dots.swift
//  mockup2
//
//  Created by Jason Quick on 7/1/23.
//

import Foundation
import SpriteKit

class Dots: SKNode {
    var dotLeft: SKSpriteNode!
    var dotMiddle: SKSpriteNode!
    var dotRight: SKSpriteNode!
    
    func createDots(view: SKView, squareNamed: SKSpriteNode) {
        
        dotMiddle = SKSpriteNode(imageNamed: "Asset 34")
        dotMiddle.setScale(0.2)
        dotMiddle.position = CGPoint(x: view.frame.midX - view.frame.midX, y: view.frame.minY - view.frame.midY - squareNamed.frame.size.height / 3)
        dotMiddle.zPosition = 4
        addChild(dotMiddle)
        
        dotLeft = SKSpriteNode(imageNamed: "Asset 33")
        dotLeft.setScale(0.2)
        dotLeft.position = CGPoint(x: dotMiddle.position.x - dotLeft.frame.size.width * 1.5, y: dotMiddle.position.y)
        dotLeft.zPosition = 4
        dotLeft.setScale(0.22)
        addChild(dotLeft)
        print(dotLeft.position)

        dotRight = SKSpriteNode(imageNamed: "Asset 34")
        dotRight.setScale(0.2)
        dotRight.position = CGPoint(x: dotMiddle.position.x + dotRight.frame.size.width * 1.5, y: dotMiddle.position.y)
        dotRight.zPosition = 4
        addChild(dotRight)
        print(dotRight.position)
    }
    
    func changeDots(_ number: Int) {
        let position = dotMiddle.position
        
        switch number {
        case 0:
            dotMiddle.removeFromParent()
            dotMiddle = SKSpriteNode(imageNamed: "Asset 33")
            dotMiddle.setScale(0.2)
            dotMiddle.position = CGPoint(x: position.x, y: position.y)
            dotMiddle.zPosition = 4
            addChild(dotMiddle)
            
            dotLeft.removeFromParent()
            dotLeft = SKSpriteNode(imageNamed: "Asset 34")
            dotLeft.setScale(0.2)
            dotLeft.position = CGPoint(x: dotMiddle.position.x - dotLeft.frame.size.width * 1.5, y: dotMiddle.position.y)
            dotLeft.zPosition = 4
            dotLeft.setScale(0.22)
            addChild(dotLeft)
            print(dotLeft.position)

            dotRight.removeFromParent()
            dotRight = SKSpriteNode(imageNamed: "Asset 34")
            dotRight.setScale(0.2)
            dotRight.position = CGPoint(x: dotMiddle.position.x + dotRight.frame.size.width * 1.5, y: dotMiddle.position.y)
            dotRight.zPosition = 4
            addChild(dotRight)
            print(dotRight.position)
        case 1:
            dotMiddle.removeFromParent()
            dotMiddle = SKSpriteNode(imageNamed: "Asset 34")
            dotMiddle.setScale(0.22)
            dotMiddle.position = CGPoint(x: position.x, y: position.y)
            dotMiddle.zPosition = 4
            addChild(dotMiddle)
            
            dotLeft.removeFromParent()
            dotLeft = SKSpriteNode(imageNamed: "Asset 33")
            dotLeft.setScale(0.2)
            dotLeft.position = CGPoint(x: dotMiddle.position.x - dotLeft.frame.size.width * 1.5, y: dotMiddle.position.y)
            dotLeft.zPosition = 4
            addChild(dotLeft)
            print(dotLeft.position)

            dotRight.removeFromParent()
            dotRight = SKSpriteNode(imageNamed: "Asset 34")
            dotRight.setScale(0.2)
            dotRight.position = CGPoint(x: dotMiddle.position.x + dotRight.frame.size.width * 1.5, y: dotMiddle.position.y)
            dotRight.zPosition = 4
            addChild(dotRight)
            print(dotRight.position)
        case 2:
            dotMiddle.removeFromParent()
            dotMiddle = SKSpriteNode(imageNamed: "Asset 34")
            dotMiddle.setScale(0.2)
            dotMiddle.position = CGPoint(x: position.x, y: position.y)
            dotMiddle.zPosition = 4
            addChild(dotMiddle)
            
            dotLeft.removeFromParent()
            dotLeft = SKSpriteNode(imageNamed: "Asset 34")
            dotLeft.setScale(0.2)
            dotLeft.position = CGPoint(x: dotMiddle.position.x - dotLeft.frame.size.width * 1.5, y: dotMiddle.position.y)
            dotLeft.zPosition = 4
            addChild(dotLeft)
            print(dotLeft.position)

            dotRight.removeFromParent()
            dotRight = SKSpriteNode(imageNamed: "Asset 33")
            dotRight.setScale(0.2)
            dotRight.position = CGPoint(x: dotMiddle.position.x + dotRight.frame.size.width * 1.5, y: dotMiddle.position.y)
            dotRight.zPosition = 4
            dotRight.setScale(0.22)
            addChild(dotRight)
            print(dotRight.position)
        default:
            break
        }
    }
    
    func moveDots(view: SKView, squareNamed: SKSpriteNode) {
        
        let dotAction = SKAction.moveTo(y: view.frame.midY - view.frame.midY - squareNamed.frame.size.height / 3, duration: 0.25)
        
        dotMiddle.run(dotAction)
        dotLeft.run(dotAction)
        dotRight.run(dotAction)
    }
    
    func removeDots(view: SKView, squareNamed: SKSpriteNode) {
        
        let dotAction = SKAction.moveTo(y: view.frame.minY - view.frame.midY - squareNamed.frame.size.height / 3, duration: 0.25)
        let dotRemoveAction = SKAction.removeFromParent()
        let dotSequence = SKAction.sequence([dotAction, dotRemoveAction])
        
        dotMiddle.run(dotSequence)
        dotLeft.run(dotSequence)
        dotRight.run(dotSequence)
    }
}
