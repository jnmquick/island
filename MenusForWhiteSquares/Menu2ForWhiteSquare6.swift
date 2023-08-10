//
//  SecondaryMenuForWhiteSquare6.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class Menu2ForWhiteSquare6: SKNode {
    
    var whiteSquare6Menu2: SKSpriteNode!
    
    var whiteSquare6Title2Backdrop: SKSpriteNode!
    var whiteSquare6Title2Label: SKLabelNode!
    
    var whiteSquare6MenuItem3: SKSpriteNode!
    var whiteSquare6MenuItem4: SKSpriteNode!
    
    var whiteSquare6Item3Title: SKLabelNode!
    var whiteSquare6Item4Title: SKLabelNode!
    
    var priceOfMenuItem3 = 100
    var techLevelRequirementMenuItem3 = 0
    
    var priceOfMenuItem4 = 100
    var techLevelRequirementMenuItem4 = 0
    
    var whiteSquare6MenuItem3Label1: SKLabelNode!
    var whiteSquare6MenuItem3Label2: SKLabelNode!
    
    var whiteSquare6MenuItem4Label1: SKLabelNode!
    var whiteSquare6MenuItem4Label2: SKLabelNode!
    
    var item3Label1: SKLabelNode!
    var item4Label1: SKLabelNode!
    var item4Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- Menu2
    
    func createMenu2ForWhiteSquare6(view: SKView) {
        // Menu2 BACKDROP
        whiteSquare6Menu2 = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare6Menu2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y)
        whiteSquare6Menu2.setScale(0.42)
        whiteSquare6Menu2.zPosition = 3
//        whiteSquare6Menu2.fillColor = eerieBlack
        whiteSquare6Menu2.name = "whiteSquare6Menu2"
        addChild(whiteSquare6Menu2)
        
        // Menu2 TITLE
        whiteSquare6Title2Backdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare6Title2Backdrop.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2)
        whiteSquare6Title2Backdrop.setScale(0.42)
        whiteSquare6Title2Backdrop.zPosition = 3
        addChild(whiteSquare6Title2Backdrop)
        
        whiteSquare6Title2Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6Title2Label.text = "Military"
        whiteSquare6Title2Label.fontSize = 18
        whiteSquare6Title2Label.fontColor = forbiddenFruit
        whiteSquare6Title2Label.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1)
        whiteSquare6Title2Label.zPosition = 4
        addChild(whiteSquare6Title2Label)
        
        // Menu2 ITEM 3
        whiteSquare6MenuItem3 = SKSpriteNode(imageNamed: "Location 5")
        whiteSquare6MenuItem3.setScale(0.26)
        whiteSquare6MenuItem3.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height / 3)
        whiteSquare6MenuItem3.zPosition = 4
//        whiteSquare6MenuItem3.fillColor = ghostWhite
//        whiteSquare6MenuItem3.strokeColor = SKColor.clear
        whiteSquare6MenuItem3.name = "whiteSquare6MenuItem3"
        addChild(whiteSquare6MenuItem3)
        
        whiteSquare6Item3Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6Item3Title.text = "Factory"
        whiteSquare6Item3Title.fontSize = 9
        whiteSquare6Item3Title.fontColor = forbiddenFruit
        whiteSquare6Item3Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height)
        whiteSquare6Item3Title.zPosition = 4
        addChild(whiteSquare6Item3Title)
        
        // Menu2 ITEM 3 -------- LABELS
        whiteSquare6MenuItem3Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6MenuItem3Label1.text = "Cost: \(priceOfMenuItem3)"
        whiteSquare6MenuItem3Label1.fontSize = 7.5
        whiteSquare6MenuItem3Label1.fontColor = forbiddenFruit
        whiteSquare6MenuItem3Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2)
        whiteSquare6MenuItem3Label1.zPosition = 4
        addChild(whiteSquare6MenuItem3Label1)
        
        whiteSquare6MenuItem3Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6MenuItem3Label2.text = "Tech: \(techLevelRequirementMenuItem3)"
        whiteSquare6MenuItem3Label2.fontSize = 7.5
        whiteSquare6MenuItem3Label2.fontColor = forbiddenFruit
        whiteSquare6MenuItem3Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem3Label1.frame.size.height * 1.1)
        whiteSquare6MenuItem3Label2.zPosition = 4
        addChild(whiteSquare6MenuItem3Label2)
        
        item3Label1 = createMenuItemLabels(text: "Battle Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem3Label2.frame.size.height * 3))
        addChild(item3Label1)
        
        // Menu2 ITEM 4
        whiteSquare6MenuItem4 = SKSpriteNode(imageNamed: "Location 6")
        whiteSquare6MenuItem4.setScale(0.26)
        whiteSquare6MenuItem4.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem4.frame.size.height / 3)
        whiteSquare6MenuItem4.zPosition = 4
//        whiteSquare6MenuItem4.fillColor = grape
//        whiteSquare6MenuItem4.strokeColor = SKColor.clear
        whiteSquare6MenuItem4.name = "whiteSquare6MenuItem4"
        addChild(whiteSquare6MenuItem4)
        
        whiteSquare6Item4Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6Item4Title.text = "Ship Yard"
        whiteSquare6Item4Title.fontSize = 9
        whiteSquare6Item4Title.fontColor = forbiddenFruit
        whiteSquare6Item4Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height)
        whiteSquare6Item4Title.zPosition = 4
        addChild(whiteSquare6Item4Title)
        
        // Menu2 ITEM 2 -------- LABELS
        whiteSquare6MenuItem4Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6MenuItem4Label1.text = "Cost: \(priceOfMenuItem4)"
        whiteSquare6MenuItem4Label1.fontSize = 7.5
        whiteSquare6MenuItem4Label1.fontColor = forbiddenFruit
        whiteSquare6MenuItem4Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem4.frame.size.height / 2)
        whiteSquare6MenuItem4Label1.zPosition = 4
        addChild(whiteSquare6MenuItem4Label1)
        
        whiteSquare6MenuItem4Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6MenuItem4Label2.text = "Tech: \(techLevelRequirementMenuItem4)"
        whiteSquare6MenuItem4Label2.fontSize = 7.5
        whiteSquare6MenuItem4Label2.fontColor = forbiddenFruit
        whiteSquare6MenuItem4Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem4.frame.size.height / 2 - whiteSquare6MenuItem4Label1.frame.size.height * 1.1)
        whiteSquare6MenuItem4Label2.zPosition = 4
        addChild(whiteSquare6MenuItem4Label2)
        
        item4Label1 = createMenuItemLabels(text: "Pirate Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem4Label2.frame.size.height * 3))
        addChild(item4Label1)
        
        print("Menu2", whiteSquare6Menu2.position)
        print("Menu2 Label", whiteSquare6Title2Label.position)
        print("MenuItem3", whiteSquare6MenuItem3.position)
        print("MenuItem3Label1", whiteSquare6MenuItem3Label1.position)
        print("MenuItem3Label2", whiteSquare6MenuItem3Label2.position)
        print("MenuItem4", whiteSquare6MenuItem4.position)
        print("MenuItem4Label1", whiteSquare6MenuItem4Label1.position)
        print("MenuItem4Label2", whiteSquare6MenuItem4Label2.position)
    }
    
    func moveWhiteSquare6Menu2(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare6Menu2Action: SKAction
        
        // TITLE
        var whiteSquare6Title2BackdropAction: SKAction
        var whiteSquare6Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare6MenuItem3Action: SKAction
        
        var whiteSquare6Item3TitleAction: SKAction
        var whiteSquare6Item4TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare6MenuItem3Label1Action: SKAction
        var whiteSquare6MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare6MenuItem4Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare6MenuItem4Label1Action: SKAction
        var whiteSquare6MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare6Menu2.position)
            print("Menu2 Label", self.whiteSquare6Title2Label.position)
            print("MenuItem3", self.whiteSquare6MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare6MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare6MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare6MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare6MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare6MenuItem4Label2.position)
        }
        
        whiteSquare6Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare6Menu2.run(whiteSquare6Menu2Action)
        
        whiteSquare6Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare6Title2Backdrop.run(whiteSquare6Title2BackdropAction)
        
        whiteSquare6Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare6Title2Label.run(whiteSquare6Title2LabelAction)
        
        whiteSquare6MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare6MenuItem3.run(whiteSquare6MenuItem3Action)
        
        whiteSquare6Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare6Item3Title.run(whiteSquare6Item3TitleAction)
        
        whiteSquare6MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare6MenuItem3Label1.run(whiteSquare6MenuItem3Label1Action)
        
        whiteSquare6MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare6MenuItem3Label2.run(whiteSquare6MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare6MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare6MenuItem4.run(whiteSquare6MenuItem4Action)
        
        whiteSquare6Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare6Item4Title.run(whiteSquare6Item4TitleAction)
        
        whiteSquare6MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare6MenuItem4Label1.run(whiteSquare6MenuItem4Label1Action)
        
        whiteSquare6MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem4.frame.size.height / 2 - whiteSquare6MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare6MenuItem4Label2.run(SKAction.sequence([whiteSquare6MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem4Label2.frame.size.height * 3))
        
    }
    
    func removeWhiteSquare6Menu2(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare6Menu2Action: SKAction // BACKDROP
        var whiteSquare6Title2BackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare6Title2LabelAction: SKAction // TITLE
        var whiteSquare6MenuItem3Action: SKAction // ITEM 1
        var whiteSquare6Item3TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare6MenuItem3Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare6MenuItem3Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare6MenuItem4Action: SKAction // ITEM 2
        var whiteSquare6Item4TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare6MenuItem4Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare6MenuItem4Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare6Menu2Remove: SKAction // BACKDROP
        var whiteSquare6Title2BackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare6Title2LabelRemove: SKAction // TITLE
        var whiteSquare6MenuItem3Remove: SKAction // ITEM 1
        var whiteSquare6Item3TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare6MenuItem3Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare6MenuItem3Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare6MenuItem4Remove: SKAction // ITEM 2
        var whiteSquare6Item4TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare6MenuItem4Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare6MenuItem4Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare6Menu2Sequence: SKAction // BACKDROP
        var whiteSquare6Title2BackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare6Title2LabelSequence: SKAction // TITLE
        var whiteSquare6MenuItem3Sequence: SKAction // ITEM 1
        var whiteSquare6Item3TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare6MenuItem3Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare6MenuItem3Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare6MenuItem4Sequence: SKAction // ITEM 2
        var whiteSquare6Item4TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare6MenuItem4Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare6MenuItem4Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare6Menu2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6Menu2Remove = SKAction.removeFromParent()
        whiteSquare6Menu2Sequence = SKAction.sequence([whiteSquare6Menu2Action, whiteSquare6Menu2Remove])
        whiteSquare6Menu2.run(whiteSquare6Menu2Sequence)
        
        whiteSquare6Title2BackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6Title2BackdropRemove = SKAction.removeFromParent()
        whiteSquare6Title2BackdropSequence = SKAction.sequence([whiteSquare6Title2BackdropAction, whiteSquare6Title2BackdropRemove])
        whiteSquare6Title2Backdrop.run(whiteSquare6Title2BackdropSequence)
        
        whiteSquare6Title2LabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6Title2LabelRemove = SKAction.removeFromParent()
        whiteSquare6Title2LabelSequence = SKAction.sequence([whiteSquare6Title2LabelAction, whiteSquare6Title2LabelRemove])
        whiteSquare6Title2Label.run(whiteSquare6Title2LabelSequence)
        
        whiteSquare6MenuItem3Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem3Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem3Sequence = SKAction.sequence([whiteSquare6MenuItem3Action, whiteSquare6MenuItem3Remove])
        whiteSquare6MenuItem3.run(whiteSquare6MenuItem3Sequence)
        
        whiteSquare6Item3TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6Item3TitleRemove = SKAction.removeFromParent()
        whiteSquare6Item3TitleSequence = SKAction.sequence([whiteSquare6Item3TitleAction, whiteSquare6Item3TitleRemove])
        whiteSquare6Item3Title.run(whiteSquare6Item3TitleSequence)
        
        whiteSquare6Item4TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6Item4TitleRemove = SKAction.removeFromParent()
        whiteSquare6Item4TitleSequence = SKAction.sequence([whiteSquare6Item4TitleAction, whiteSquare6Item4TitleRemove])
        whiteSquare6Item4Title.run(whiteSquare6Item4TitleSequence)
        
        whiteSquare6MenuItem3Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem3Label1Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem3Label1Sequence = SKAction.sequence([whiteSquare6MenuItem3Label1Action, whiteSquare6MenuItem3Label1Remove])
        whiteSquare6MenuItem3Label1.run(whiteSquare6MenuItem3Label1Sequence)
        
        whiteSquare6MenuItem3Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem3Label2Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem3Label2Sequence = SKAction.sequence([whiteSquare6MenuItem3Label2Action, whiteSquare6MenuItem3Label2Remove])
        whiteSquare6MenuItem3Label2.run(whiteSquare6MenuItem3Label2Sequence)
        
        whiteSquare6MenuItem4Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem4Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem4Sequence = SKAction.sequence([whiteSquare6MenuItem4Action, whiteSquare6MenuItem4Remove])
        whiteSquare6MenuItem4.run(whiteSquare6MenuItem4Sequence)
        
        whiteSquare6MenuItem4Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem4Label1Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem4Label1Sequence = SKAction.sequence([whiteSquare6MenuItem4Label1Action, whiteSquare6MenuItem4Label1Remove])
        whiteSquare6MenuItem4Label1.run(whiteSquare6MenuItem4Label1Sequence)
        
        whiteSquare6MenuItem4Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem4Label2Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem4Label2Sequence = SKAction.sequence([whiteSquare6MenuItem4Label2Action, whiteSquare6MenuItem4Label2Remove])
        whiteSquare6MenuItem4Label2.run(whiteSquare6MenuItem4Label2Sequence)
        
        removeMenuItemLabels(label: item3Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item4Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare6Menu2Right(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare6Menu2Action: SKAction
        
        // TITLE
        var whiteSquare6Title2BackdropAction: SKAction
        var whiteSquare6Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare6MenuItem3Action: SKAction
        var whiteSquare6Item3TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare6MenuItem3Label1Action: SKAction
        var whiteSquare6MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare6MenuItem4Action: SKAction
        var whiteSquare6Item4TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare6MenuItem4Label1Action: SKAction
        var whiteSquare6MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare6Menu2.position)
            print("MenuItem3", self.whiteSquare6MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare6MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare6MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare6MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare6MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare6MenuItem4Label2.position)
        }
            
        whiteSquare6Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare6Menu2.run(whiteSquare6Menu2Action)
        
        whiteSquare6Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare6Title2Backdrop.run(whiteSquare6Title2BackdropAction)
        
        whiteSquare6Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare6Title2Label.run(whiteSquare6Title2LabelAction)
        
        whiteSquare6MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare6MenuItem3.run(whiteSquare6MenuItem3Action)
        
        whiteSquare6Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare6Item3Title.run(whiteSquare6Item3TitleAction)
        
        whiteSquare6MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare6MenuItem3Label1.run(whiteSquare6MenuItem3Label1Action)
        
        whiteSquare6MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare6MenuItem3Label2.run(whiteSquare6MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare6MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare6MenuItem4.run(whiteSquare6MenuItem4Action)
        
        whiteSquare6Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare6Item4Title.run(whiteSquare6Item4TitleAction)
        
        whiteSquare6MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare6MenuItem4Label1.run(whiteSquare6MenuItem4Label1Action)
        
        whiteSquare6MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem4.frame.size.height / 2 - whiteSquare6MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare6MenuItem4Label2.run(SKAction.sequence([whiteSquare6MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem3.frame.size.height / 2 - whiteSquare6MenuItem4Label2.frame.size.height * 3))
    }
}

