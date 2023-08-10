//
//  Island.swift
//  mockup2
//
//  Created by Jason Quick on 7/18/23.
//

import Foundation
import SpriteKit

class Island: SKSpriteNode {
    var homeIsland: SKSpriteNode!
    var islandNode: SKShapeNode!
    
    var palmTree: SKSpriteNode!
    var palmTree2: SKSpriteNode!
    var palmTree3: SKSpriteNode!
    var palmTree4: SKSpriteNode!
    var palmTree5: SKSpriteNode!
    
    func createHomeIsland(view: SKView) {
        homeIsland = SKSpriteNode(imageNamed: "Artboard 2")
        homeIsland.position = CGPoint(x: view.bounds.size.width / 2, y: view.bounds.size.height / 3.2)
        homeIsland.setScale(0.5)
        homeIsland.zPosition = -1
        homeIsland.name = "island"
        addChild(homeIsland)
        
        islandNode = SKShapeNode(rectOf: CGSize(width: homeIsland.frame.size.width / 1.8, height: homeIsland.frame.size.height / 1.8), cornerRadius: homeIsland.size.width / 8)
        islandNode.strokeColor = SKColor.clear
        islandNode.fillColor = SKColor.clear
        islandNode.position = homeIsland.position
        islandNode.zPosition = 0
        islandNode.name = "island"
        addChild(islandNode)
        
        palmTree = SKSpriteNode(imageNamed: "palmTree1")
        palmTree.position = CGPoint(x: homeIsland.position.x / 3, y: homeIsland.position.y * 1.5)
        palmTree.setScale(2.0)
        palmTree.zPosition = 3
        addChild(palmTree)
        
        palmTree2 = SKSpriteNode(imageNamed: "palmTree1")
        palmTree2.position = CGPoint(x: homeIsland.position.x + homeIsland.position.x / 3, y: homeIsland.position.y * 1.5)
        palmTree2.setScale(1.0)
        palmTree2.zPosition = 0
        addChild(palmTree2)
        
        palmTree3 = SKSpriteNode(imageNamed: "palmTree2")
        palmTree3.position = CGPoint(x: homeIsland.position.x + homeIsland.position.x / 2, y: homeIsland.position.y * 1.4)
        palmTree3.setScale(1.0)
        palmTree3.zPosition = 2
        addChild(palmTree3)
        
        palmTree4 = SKSpriteNode(imageNamed: "palmTree2")
        palmTree4.position = CGPoint(x: homeIsland.position.x / 1.8, y: homeIsland.position.y - homeIsland.position.y / 3)
        palmTree4.setScale(0.76)
        palmTree4.zPosition = 3
        addChild(palmTree4)
        
        palmTree5 = SKSpriteNode(imageNamed: "palmTree2")
        palmTree5.position = CGPoint(x: homeIsland.position.x * 1.65, y: homeIsland.position.y * 1.5)
        palmTree5.setScale(0.9)
        palmTree5.zPosition = 1
        addChild(palmTree5)
    }
}
