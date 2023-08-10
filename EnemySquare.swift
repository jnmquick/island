//
//  EnemySquare.swift
//  mockup2
//
//  Created by Jason Quick on 7/11/23.
//

import Foundation
import SpriteKit

class EnemySquare: SKNode {
    
    var enemyIsland: SKSpriteNode!
    var palmTree: SKSpriteNode!
    var enemySquare: SKSpriteNode!
    
    var enemyIsland2: SKSpriteNode!
    var palmTree2: SKSpriteNode!
    var palmTree3: SKSpriteNode!
    var enemySquare2: SKSpriteNode!
    
    func createEnemyIsland(view: SKView) {
        enemyIsland = SKSpriteNode(imageNamed: "Artboard 2")
        enemyIsland.setScale(0.25)
        enemyIsland.position = CGPoint(x: view.frame.minX - view.frame.maxX * 1.2, y: view.frame.midY + enemyIsland.frame.size.width)
        enemyIsland.zPosition = -1
        enemyIsland.zRotation = Double.pi / 2
        addChild(enemyIsland)
        
        palmTree = SKSpriteNode(imageNamed: "palmTree1")
        palmTree.position = CGPoint(x: enemyIsland.position.x - enemyIsland.frame.size.width / 8, y: enemyIsland.position.y + enemyIsland.frame.size.height / 4.5)
        palmTree.xScale = -1
        palmTree.setScale(1.0)
        palmTree.zPosition = 0
        addChild(palmTree)
        
        createEnemySquare()
    }
    
    func createEnemySquare() {
        enemySquare = SKSpriteNode(imageNamed: "Asset 78")
        enemySquare.setScale(0.08)
        enemySquare.zRotation = Double.pi / 2
        enemySquare.zPosition = 0
        enemySquare.position = CGPoint(x: enemyIsland.frame.midX, y: enemyIsland.frame.midY)
        addChild(enemySquare)
    }
    
    func createEnemyIsland2(view: SKView) {
        enemyIsland2 = SKSpriteNode(imageNamed: "Artboard 2")
        enemyIsland2.setScale(0.25)
        enemyIsland2.position = CGPoint(x: view.frame.maxX + view.frame.maxX * 1.2, y: view.frame.midY + enemyIsland2.frame.size.width * 2)
        enemyIsland2.zPosition = -1
        enemyIsland2.zRotation = -Double.pi / 2
        addChild(enemyIsland2)
        
        palmTree2 = SKSpriteNode(imageNamed: "palmTree2")
        palmTree2.xScale = -1
        palmTree2.setScale(0.7)
        palmTree2.position = CGPoint(x: enemyIsland2.position.x + enemyIsland2.frame.size.width / 8, y: enemyIsland2.position.y - enemyIsland2.frame.size.height / 8)
        palmTree2.zPosition = 2
        addChild(palmTree2)
        
        palmTree3 = SKSpriteNode(imageNamed: "palmTree1")
        palmTree3.setScale(0.8)
        palmTree3.position = CGPoint(x: enemyIsland2.position.x + enemyIsland2.frame.size.width / 6, y: enemyIsland2.position.y + palmTree2.frame.size.height / 2)
        palmTree3.zPosition = 1
        addChild(palmTree3)
        
        createEnemySquare2()
    }
    
    func createEnemySquare2() {
        enemySquare2 = SKSpriteNode(imageNamed: "Asset 78")
        enemySquare2.setScale(0.08)
        enemySquare2.zRotation = -Double.pi / 2
        enemySquare2.zPosition = 0
        enemySquare2.position = CGPoint(x: enemyIsland2.frame.midX, y: enemyIsland2.frame.midY)
        addChild(enemySquare2)
    }
}
