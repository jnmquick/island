//
//  SecondaryMenusToBuildOnWhiteSquare.swift
//  mockup2
//
//  Created by Jason Quick on 6/29/23.
//

import Foundation
import SpriteKit

class Menu2ForWhiteSquare1: SKNode {
    
    var whiteSquare1Menu2: SKShapeNode!
    
    var whiteSquare1MenuItem3: SKShapeNode!
    var whiteSquare1MenuItem4: SKShapeNode!
    
    var whiteSquare1MenuItem3Label1: SKLabelNode!
    var whiteSquare1MenuItem3Label2: SKLabelNode!
    
    var whiteSquare1MenuItem4Label1: SKLabelNode!
    var whiteSquare1MenuItem4Label2: SKLabelNode!
    
    var priceOfMenuItem3 = 100
    var techLevelRequirementMenuItem3 = 0
    
    var priceOfMenuItem4 = 100
    var techLevelRequirementMenuItem4 = 0
    
    func createMenu2ForWhiteSquare1(view: SKView) {
        // MENU 2 BACKDROP
        whiteSquare1Menu2 = SKShapeNode(rectOf: CGSize(width: 300, height: 300))
        whiteSquare1Menu2.position = CGPoint(x: view.frame.midX + view.bounds.size.width, y: view.frame.midY)
        whiteSquare1Menu2.zPosition = 3
        whiteSquare1Menu2.fillColor = eerieBlack
        whiteSquare1Menu2.name = "whiteSquare1Menu"
        addChild(whiteSquare1Menu2)
        
        // MENU ITEM 3
        whiteSquare1MenuItem3 = SKShapeNode(rectOf: CGSize(width: 75, height: 75))
        whiteSquare1MenuItem3.position = CGPoint(x: whiteSquare1Menu2.frame.midX - view.frame.midX / 3, y: view.frame.midY + whiteSquare1MenuItem3.frame.size.height / 2)
        whiteSquare1MenuItem3.zPosition = 4
        whiteSquare1MenuItem3.fillColor = jasmine
        whiteSquare1MenuItem3.name = "whiteSquare1MenuItem3"
        addChild(whiteSquare1MenuItem3)
        
        // MENU ITEM 3 -------- LABELS
        whiteSquare1MenuItem3Label1 = SKLabelNode(fontNamed: "BebasNeue-Regular")
        whiteSquare1MenuItem3Label1.text = "Cost: \(priceOfMenuItem3)"
        whiteSquare1MenuItem3Label1.fontSize = 20
        whiteSquare1MenuItem3Label1.fontColor = ghostWhite
        whiteSquare1MenuItem3Label1.position = CGPoint(x: whiteSquare1Menu2.frame.midX - view.frame.midX / 3, y: view.frame.midY -  whiteSquare1MenuItem3.frame.size.height / 2)
        whiteSquare1MenuItem3Label1.zPosition = 4
        addChild(whiteSquare1MenuItem3Label1)
        
        whiteSquare1MenuItem3Label2 = SKLabelNode(fontNamed: "BebasNeue-Regular")
        whiteSquare1MenuItem3Label2.text = "Tech: \(techLevelRequirementMenuItem3)"
        whiteSquare1MenuItem3Label2.fontSize = 20
        whiteSquare1MenuItem3Label2.fontColor = ghostWhite
        whiteSquare1MenuItem3Label2.position = CGPoint(x: whiteSquare1Menu2.frame.midX - view.frame.midX / 3, y: view.frame.midY -  whiteSquare1MenuItem3.frame.size.height / 2 - whiteSquare1MenuItem3Label2.frame.size.height)
        whiteSquare1MenuItem3Label2.zPosition = 4
        addChild(whiteSquare1MenuItem3Label2)
        
        // MENU ITEM 4
        whiteSquare1MenuItem4 = SKShapeNode(rectOf: CGSize(width: 75, height: 75))
        whiteSquare1MenuItem4.position = CGPoint(x: whiteSquare1Menu2.frame.midX + view.frame.midX / 3, y: view.frame.midY + whiteSquare1MenuItem4.frame.size.height / 2)
        whiteSquare1MenuItem4.zPosition = 4
        whiteSquare1MenuItem4.fillColor = xanthous
        whiteSquare1MenuItem4.name = "whiteSquare1MenuItem4"
        addChild(whiteSquare1MenuItem4)
        
        // MENU ITEM 4 -------- LABELS
        whiteSquare1MenuItem4Label1 = SKLabelNode(fontNamed: "BebasNeue-Regular")
        whiteSquare1MenuItem4Label1.text = "Cost: \(priceOfMenuItem4)"
        whiteSquare1MenuItem4Label1.fontSize = 20
        whiteSquare1MenuItem4Label1.fontColor = ghostWhite
        whiteSquare1MenuItem4Label1.position = CGPoint(x: whiteSquare1Menu2.frame.midX + view.frame.midX / 3, y: view.frame.midY -  whiteSquare1MenuItem4.frame.size.height / 2)
        whiteSquare1MenuItem4Label1.zPosition = 4
        addChild(whiteSquare1MenuItem4Label1)
        
        whiteSquare1MenuItem4Label2 = SKLabelNode(fontNamed: "BebasNeue-Regular")
        whiteSquare1MenuItem4Label2.text = "Tech: \(techLevelRequirementMenuItem4)"
        whiteSquare1MenuItem4Label2.fontSize = 20
        whiteSquare1MenuItem4Label2.fontColor = ghostWhite
        whiteSquare1MenuItem4Label2.position = CGPoint(x: whiteSquare1Menu2.frame.midX + view.frame.midX / 3, y: view.frame.midY -  whiteSquare1MenuItem4.frame.size.height / 2 - whiteSquare1MenuItem4Label2.frame.size.height)
        whiteSquare1MenuItem4Label2.zPosition = 4
        addChild(whiteSquare1MenuItem4Label2)
        
        print("Menu2", whiteSquare1Menu2.position)
        print("Menu2Item3", whiteSquare1MenuItem3.position)
        print("Menu2Item3Label1", whiteSquare1MenuItem3Label1.position)
        print("Menu2Item3Label2", whiteSquare1MenuItem3Label2.position)
        print("Menu2Item4", whiteSquare1MenuItem4.position)
        print("Menu2Item4Label1", whiteSquare1MenuItem4Label1.position)
        print("Menu2Item4Label2", whiteSquare1MenuItem4Label2.position)
    }
    func moveWhiteSquare1Menu2(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare1Menu2Action: SKAction
        
        // ITEM 3
        var whiteSquare1MenuItem3Action: SKAction
        
        // ITEM 3 LABELS
        var whiteSquare1MenuItem3Label1Action: SKAction
        var whiteSquare1MenuItem3Label2Action: SKAction
        
        // ITEM 4
        var whiteSquare1MenuItem4Action: SKAction
        
        // ITEM 4 LABELS
        var whiteSquare1MenuItem4Label1Action: SKAction
        var whiteSquare1MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare1Menu2.position)
            print("Menu2Item3", self.whiteSquare1MenuItem3.position)
            print("Menu2Item3Label1", self.whiteSquare1MenuItem3Label1.position)
            print("Menu2Item3Label2", self.whiteSquare1MenuItem3Label2.position)
            print("Menu2Item4", self.whiteSquare1MenuItem4.position)
            print("Menu2Item4Label1", self.whiteSquare1MenuItem4Label1.position)
            print("Menu2Item4Label2", self.whiteSquare1MenuItem4Label2.position)
        }
            
        whiteSquare1Menu2Action = SKAction.move(to: CGPoint(x: view.bounds.size.width / 2, y: view.frame.midY), duration: 0.25)
        whiteSquare1Menu2.run(whiteSquare1Menu2Action)
        
        whiteSquare1MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - view.frame.midX / 3, y: view.frame.midY + whiteSquare1MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem3.run(whiteSquare1MenuItem3Action)
        
        whiteSquare1MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - view.frame.midX / 3, y: view.frame.midY -  whiteSquare1MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem3Label1.run(whiteSquare1MenuItem3Label1Action)
        
        whiteSquare1MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - view.frame.midX / 3, y: view.frame.midY -  whiteSquare1MenuItem3.frame.size.height / 2 - whiteSquare1MenuItem3Label2.frame.size.height), duration: 0.25)
        whiteSquare1MenuItem3Label2.run(whiteSquare1MenuItem3Label2Action)
        
        whiteSquare1MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX + view.frame.midX / 3, y: view.frame.midY + whiteSquare1MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem4.run(whiteSquare1MenuItem4Action)
        
        whiteSquare1MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX + view.frame.midX / 3, y: view.frame.midY -  whiteSquare1MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem4Label1.run(whiteSquare1MenuItem4Label1Action)
        
        whiteSquare1MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX + view.frame.midX / 3, y: view.frame.midY -  whiteSquare1MenuItem4.frame.size.height / 2 - whiteSquare1MenuItem4Label2.frame.size.height), duration: 0.25)
        whiteSquare1MenuItem4Label2.run(SKAction.sequence([whiteSquare1MenuItem4Label2Action, printAction]))
    }
    func moveWhiteSquare1Menu2Right(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare1Menu2Action: SKAction
        
        // ITEM 3
        var whiteSquare1MenuItem3Action: SKAction
        
        // ITEM 3 LABELS
        var whiteSquare1MenuItem3Label1Action: SKAction
        var whiteSquare1MenuItem3Label2Action: SKAction
        
        // ITEM 4
        var whiteSquare1MenuItem4Action: SKAction
        
        // ITEM 4 LABELS
        var whiteSquare1MenuItem4Label1Action: SKAction
        var whiteSquare1MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare1Menu2.position)
            print("Menu2Item3", self.whiteSquare1MenuItem3.position)
            print("Menu2Item3Label1", self.whiteSquare1MenuItem3Label1.position)
            print("Menu2Item3Label2", self.whiteSquare1MenuItem3Label2.position)
            print("Menu2Item4", self.whiteSquare1MenuItem4.position)
            print("Menu2Item4Label1", self.whiteSquare1MenuItem4Label1.position)
            print("Menu2Item4Label2", self.whiteSquare1MenuItem4Label2.position)
        }
            
        whiteSquare1Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX + view.bounds.size.width, y: view.frame.midY), duration: 0.25)
        whiteSquare1Menu2.run(whiteSquare1Menu2Action)
        
        whiteSquare1MenuItem3Action = SKAction.move(to: CGPoint(x: (whiteSquare1Menu2.frame.midX - whiteSquare1Menu2.frame.midX / 3) + view.bounds.size.width, y: view.frame.midY + whiteSquare1MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem3.run(whiteSquare1MenuItem3Action)
        
        whiteSquare1MenuItem3Label1Action = SKAction.move(to: CGPoint(x: (whiteSquare1Menu2.frame.midX - whiteSquare1Menu2.frame.midX / 3) + view.bounds.size.width, y: view.frame.midY -  whiteSquare1MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem3Label1.run(whiteSquare1MenuItem3Label1Action)
        
        whiteSquare1MenuItem3Label2Action = SKAction.move(to: CGPoint(x: (whiteSquare1Menu2.frame.midX - whiteSquare1Menu2.frame.midX / 3) + view.bounds.size.width, y: view.frame.midY -  whiteSquare1MenuItem3.frame.size.height / 2 - whiteSquare1MenuItem3Label2.frame.size.height), duration: 0.25)
        whiteSquare1MenuItem3Label2.run(whiteSquare1MenuItem3Label2Action)
        
        whiteSquare1MenuItem4Action = SKAction.move(to: CGPoint(x: (whiteSquare1Menu2.frame.midX + whiteSquare1Menu2.frame.midX / 3) + view.bounds.size.width, y: view.frame.midY + whiteSquare1MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem4.run(whiteSquare1MenuItem4Action)
        
        whiteSquare1MenuItem4Label1Action = SKAction.move(to: CGPoint(x: (whiteSquare1Menu2.frame.midX + whiteSquare1Menu2.frame.midX / 3) + view.bounds.size.width, y: view.frame.midY -  whiteSquare1MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem4Label1.run(whiteSquare1MenuItem4Label1Action)
        
        whiteSquare1MenuItem4Label2Action = SKAction.move(to: CGPoint(x: (whiteSquare1Menu2.frame.midX + whiteSquare1Menu2.frame.midX / 3) + view.bounds.size.width, y: view.frame.midY -  whiteSquare1MenuItem4.frame.size.height / 2 - whiteSquare1MenuItem4Label2.frame.size.height), duration: 0.25)
        whiteSquare1MenuItem4Label2.run(SKAction.sequence([whiteSquare1MenuItem4Label2Action, printAction]))
    }
    func removeWhiteSquare1Menu2(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare1Menu2Action: SKAction // BACKDROP
        var whiteSquare1MenuItem3Action: SKAction // ITEM 1
        var whiteSquare1MenuItem3Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare1MenuItem3Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare1MenuItem4Action: SKAction // ITEM 2
        var whiteSquare1MenuItem4Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare1MenuItem4Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare1Menu2Remove: SKAction // BACKDROP
        var whiteSquare1MenuItem3Remove: SKAction // ITEM 1
        var whiteSquare1MenuItem3Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare1MenuItem3Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare1MenuItem4Remove: SKAction // ITEM 2
        var whiteSquare1MenuItem4Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare1MenuItem4Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare1Menu2Sequence: SKAction // BACKDROP
        var whiteSquare1MenuItem3Sequence: SKAction // ITEM 1
        var whiteSquare1MenuItem3Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare1MenuItem3Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare1MenuItem4Sequence: SKAction // ITEM 2
        var whiteSquare1MenuItem4Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare1MenuItem4Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare1Menu2Action = SKAction.moveTo(y: view.frame.minY - 300, duration: 0.25)
        whiteSquare1Menu2Remove = SKAction.removeFromParent()
        whiteSquare1Menu2Sequence = SKAction.sequence([whiteSquare1Menu2Action, whiteSquare1Menu2Remove])
        whiteSquare1Menu2.run(whiteSquare1Menu2Sequence)
        
        whiteSquare1MenuItem3Action = SKAction.moveTo(y: view.frame.minY - 300, duration: 0.25)
        whiteSquare1MenuItem3Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem3Sequence = SKAction.sequence([whiteSquare1MenuItem3Action, whiteSquare1MenuItem3Remove])
        whiteSquare1MenuItem3.run(whiteSquare1MenuItem3Sequence)
        
        whiteSquare1MenuItem3Label1Action = SKAction.moveTo(y: view.frame.minY - 300, duration: 0.25)
        whiteSquare1MenuItem3Label1Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem3Label1Sequence = SKAction.sequence([whiteSquare1MenuItem3Label1Action, whiteSquare1MenuItem3Label1Remove])
        whiteSquare1MenuItem3Label1.run(whiteSquare1MenuItem3Label1Sequence)
        
        whiteSquare1MenuItem3Label2Action = SKAction.moveTo(y: view.frame.minY - 300, duration: 0.25)
        whiteSquare1MenuItem3Label2Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem3Label2Sequence = SKAction.sequence([whiteSquare1MenuItem3Label2Action, whiteSquare1MenuItem3Label2Remove])
        whiteSquare1MenuItem3Label2.run(whiteSquare1MenuItem3Label2Sequence)
        
        whiteSquare1MenuItem4Action = SKAction.moveTo(y: view.frame.minY - 300, duration: 0.25)
        whiteSquare1MenuItem4Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem4Sequence = SKAction.sequence([whiteSquare1MenuItem4Action, whiteSquare1MenuItem4Remove])
        whiteSquare1MenuItem4.run(whiteSquare1MenuItem4Sequence)
        
        whiteSquare1MenuItem4Label1Action = SKAction.moveTo(y: view.frame.minY - 300, duration: 0.25)
        whiteSquare1MenuItem4Label1Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem4Label1Sequence = SKAction.sequence([whiteSquare1MenuItem4Label1Action, whiteSquare1MenuItem4Label1Remove])
        whiteSquare1MenuItem4Label1.run(whiteSquare1MenuItem4Label1Sequence)
        
        whiteSquare1MenuItem4Label2Action = SKAction.moveTo(y: view.frame.minY - 300, duration: 0.25)
        whiteSquare1MenuItem4Label2Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem4Label2Sequence = SKAction.sequence([whiteSquare1MenuItem4Label2Action, whiteSquare1MenuItem4Label2Remove])
        whiteSquare1MenuItem4Label2.run(whiteSquare1MenuItem4Label2Sequence)
    }
}
