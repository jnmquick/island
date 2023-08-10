//
//  SecondaryMenuForWhiteSquare3.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class Menu2ForWhiteSquare3: SKNode {
    
    var whiteSquare3Menu2: SKSpriteNode!
    
    var whiteSquare3Title2Backdrop: SKSpriteNode!
    var whiteSquare3Title2Label: SKLabelNode!
    
    var whiteSquare3MenuItem3: SKSpriteNode!
    var whiteSquare3MenuItem4: SKSpriteNode!
    
    var whiteSquare3Item3Title: SKLabelNode!
    var whiteSquare3Item4Title: SKLabelNode!
    
    var priceOfMenuItem3 = 100
    var techLevelRequirementMenuItem3 = 0
    
    var priceOfMenuItem4 = 100
    var techLevelRequirementMenuItem4 = 0
    
    var whiteSquare3MenuItem3Label1: SKLabelNode!
    var whiteSquare3MenuItem3Label2: SKLabelNode!
    
    var whiteSquare3MenuItem4Label1: SKLabelNode!
    var whiteSquare3MenuItem4Label2: SKLabelNode!
    
    var item3Label1: SKLabelNode!
    var item4Label1: SKLabelNode!
    var item4Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- Menu2
    
    func createMenu2ForWhiteSquare3(view: SKView) {
        // Menu2 BACKDROP
        whiteSquare3Menu2 = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare3Menu2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y)
        whiteSquare3Menu2.setScale(0.42)
        whiteSquare3Menu2.zPosition = 3
//        whiteSquare3Menu2.fillColor = eerieBlack
        whiteSquare3Menu2.name = "whiteSquare3Menu2"
        addChild(whiteSquare3Menu2)
        
        // Menu2 TITLE
        whiteSquare3Title2Backdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare3Title2Backdrop.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2)
        whiteSquare3Title2Backdrop.setScale(0.42)
        whiteSquare3Title2Backdrop.zPosition = 3
        addChild(whiteSquare3Title2Backdrop)
        
        whiteSquare3Title2Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3Title2Label.text = "Military"
        whiteSquare3Title2Label.fontSize = 18
        whiteSquare3Title2Label.fontColor = forbiddenFruit
        whiteSquare3Title2Label.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1)
        whiteSquare3Title2Label.zPosition = 4
        addChild(whiteSquare3Title2Label)
        
        // Menu2 ITEM 3
        whiteSquare3MenuItem3 = SKSpriteNode(imageNamed: "Location 5")
        whiteSquare3MenuItem3.setScale(0.26)
        whiteSquare3MenuItem3.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height / 3)
        whiteSquare3MenuItem3.zPosition = 4
//        whiteSquare3MenuItem3.fillColor = ghostWhite
//        whiteSquare3MenuItem3.strokeColor = SKColor.clear
        whiteSquare3MenuItem3.name = "whiteSquare3MenuItem3"
        addChild(whiteSquare3MenuItem3)
        
        whiteSquare3Item3Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3Item3Title.text = "Factory"
        whiteSquare3Item3Title.fontSize = 9
        whiteSquare3Item3Title.fontColor = forbiddenFruit
        whiteSquare3Item3Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height)
        whiteSquare3Item3Title.zPosition = 4
        addChild(whiteSquare3Item3Title)
        
        // Menu2 ITEM 3 -------- LABELS
        whiteSquare3MenuItem3Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3MenuItem3Label1.text = "Cost: \(priceOfMenuItem3)"
        whiteSquare3MenuItem3Label1.fontSize = 7.5
        whiteSquare3MenuItem3Label1.fontColor = forbiddenFruit
        whiteSquare3MenuItem3Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2)
        whiteSquare3MenuItem3Label1.zPosition = 4
        addChild(whiteSquare3MenuItem3Label1)
        
        whiteSquare3MenuItem3Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3MenuItem3Label2.text = "Tech: \(techLevelRequirementMenuItem3)"
        whiteSquare3MenuItem3Label2.fontSize = 7.5
        whiteSquare3MenuItem3Label2.fontColor = forbiddenFruit
        whiteSquare3MenuItem3Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem3Label1.frame.size.height * 1.1)
        whiteSquare3MenuItem3Label2.zPosition = 4
        addChild(whiteSquare3MenuItem3Label2)
        
        item3Label1 = createMenuItemLabels(text: "Battle Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem3Label2.frame.size.height * 3))
        addChild(item3Label1)
        
        // Menu2 ITEM 4
        whiteSquare3MenuItem4 = SKSpriteNode(imageNamed: "Location 6")
        whiteSquare3MenuItem4.setScale(0.26)
        whiteSquare3MenuItem4.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem4.frame.size.height / 3)
        whiteSquare3MenuItem4.zPosition = 4
//        whiteSquare3MenuItem4.fillColor = grape
//        whiteSquare3MenuItem4.strokeColor = SKColor.clear
        whiteSquare3MenuItem4.name = "whiteSquare3MenuItem4"
        addChild(whiteSquare3MenuItem4)
        
        whiteSquare3Item4Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3Item4Title.text = "Ship Yard"
        whiteSquare3Item4Title.fontSize = 9
        whiteSquare3Item4Title.fontColor = forbiddenFruit
        whiteSquare3Item4Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height)
        whiteSquare3Item4Title.zPosition = 4
        addChild(whiteSquare3Item4Title)
        
        // Menu2 ITEM 2 -------- LABELS
        whiteSquare3MenuItem4Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3MenuItem4Label1.text = "Cost: \(priceOfMenuItem4)"
        whiteSquare3MenuItem4Label1.fontSize = 7.5
        whiteSquare3MenuItem4Label1.fontColor = forbiddenFruit
        whiteSquare3MenuItem4Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem4.frame.size.height / 2)
        whiteSquare3MenuItem4Label1.zPosition = 4
        addChild(whiteSquare3MenuItem4Label1)
        
        whiteSquare3MenuItem4Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3MenuItem4Label2.text = "Tech: \(techLevelRequirementMenuItem4)"
        whiteSquare3MenuItem4Label2.fontSize = 7.5
        whiteSquare3MenuItem4Label2.fontColor = forbiddenFruit
        whiteSquare3MenuItem4Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem4.frame.size.height / 2 - whiteSquare3MenuItem4Label1.frame.size.height * 1.1)
        whiteSquare3MenuItem4Label2.zPosition = 4
        addChild(whiteSquare3MenuItem4Label2)
        
        item4Label1 = createMenuItemLabels(text: "Pirate Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem4Label2.frame.size.height * 3))
        addChild(item4Label1)
        
        print("Menu2", whiteSquare3Menu2.position)
        print("Menu2 Label", whiteSquare3Title2Label.position)
        print("MenuItem3", whiteSquare3MenuItem3.position)
        print("MenuItem3Label1", whiteSquare3MenuItem3Label1.position)
        print("MenuItem3Label2", whiteSquare3MenuItem3Label2.position)
        print("MenuItem4", whiteSquare3MenuItem4.position)
        print("MenuItem4Label1", whiteSquare3MenuItem4Label1.position)
        print("MenuItem4Label2", whiteSquare3MenuItem4Label2.position)
    }
    
    func moveWhiteSquare3Menu2(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare3Menu2Action: SKAction
        
        // TITLE
        var whiteSquare3Title2BackdropAction: SKAction
        var whiteSquare3Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare3MenuItem3Action: SKAction
        
        var whiteSquare3Item3TitleAction: SKAction
        var whiteSquare3Item4TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare3MenuItem3Label1Action: SKAction
        var whiteSquare3MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare3MenuItem4Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare3MenuItem4Label1Action: SKAction
        var whiteSquare3MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare3Menu2.position)
            print("Menu2 Label", self.whiteSquare3Title2Label.position)
            print("MenuItem3", self.whiteSquare3MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare3MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare3MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare3MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare3MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare3MenuItem4Label2.position)
        }
        
        whiteSquare3Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare3Menu2.run(whiteSquare3Menu2Action)
        
        whiteSquare3Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare3Title2Backdrop.run(whiteSquare3Title2BackdropAction)
        
        whiteSquare3Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare3Title2Label.run(whiteSquare3Title2LabelAction)
        
        whiteSquare3MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare3MenuItem3.run(whiteSquare3MenuItem3Action)
        
        whiteSquare3Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare3Item3Title.run(whiteSquare3Item3TitleAction)
        
        whiteSquare3MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare3MenuItem3Label1.run(whiteSquare3MenuItem3Label1Action)
        
        whiteSquare3MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare3MenuItem3Label2.run(whiteSquare3MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare3MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare3MenuItem4.run(whiteSquare3MenuItem4Action)
        
        whiteSquare3Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare3Item4Title.run(whiteSquare3Item4TitleAction)
        
        whiteSquare3MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare3MenuItem4Label1.run(whiteSquare3MenuItem4Label1Action)
        
        whiteSquare3MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem4.frame.size.height / 2 - whiteSquare3MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare3MenuItem4Label2.run(SKAction.sequence([whiteSquare3MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem4Label2.frame.size.height * 3))
        
    }
    
    func removeWhiteSquare3Menu2(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare3Menu2Action: SKAction // BACKDROP
        var whiteSquare3Title2BackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare3Title2LabelAction: SKAction // TITLE
        var whiteSquare3MenuItem3Action: SKAction // ITEM 1
        var whiteSquare3Item3TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare3MenuItem3Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare3MenuItem3Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare3MenuItem4Action: SKAction // ITEM 2
        var whiteSquare3Item4TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare3MenuItem4Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare3MenuItem4Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare3Menu2Remove: SKAction // BACKDROP
        var whiteSquare3Title2BackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare3Title2LabelRemove: SKAction // TITLE
        var whiteSquare3MenuItem3Remove: SKAction // ITEM 1
        var whiteSquare3Item3TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare3MenuItem3Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare3MenuItem3Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare3MenuItem4Remove: SKAction // ITEM 2
        var whiteSquare3Item4TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare3MenuItem4Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare3MenuItem4Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare3Menu2Sequence: SKAction // BACKDROP
        var whiteSquare3Title2BackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare3Title2LabelSequence: SKAction // TITLE
        var whiteSquare3MenuItem3Sequence: SKAction // ITEM 1
        var whiteSquare3Item3TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare3MenuItem3Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare3MenuItem3Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare3MenuItem4Sequence: SKAction // ITEM 2
        var whiteSquare3Item4TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare3MenuItem4Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare3MenuItem4Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare3Menu2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3Menu2Remove = SKAction.removeFromParent()
        whiteSquare3Menu2Sequence = SKAction.sequence([whiteSquare3Menu2Action, whiteSquare3Menu2Remove])
        whiteSquare3Menu2.run(whiteSquare3Menu2Sequence)
        
        whiteSquare3Title2BackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3Title2BackdropRemove = SKAction.removeFromParent()
        whiteSquare3Title2BackdropSequence = SKAction.sequence([whiteSquare3Title2BackdropAction, whiteSquare3Title2BackdropRemove])
        whiteSquare3Title2Backdrop.run(whiteSquare3Title2BackdropSequence)
        
        whiteSquare3Title2LabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3Title2LabelRemove = SKAction.removeFromParent()
        whiteSquare3Title2LabelSequence = SKAction.sequence([whiteSquare3Title2LabelAction, whiteSquare3Title2LabelRemove])
        whiteSquare3Title2Label.run(whiteSquare3Title2LabelSequence)
        
        whiteSquare3MenuItem3Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem3Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem3Sequence = SKAction.sequence([whiteSquare3MenuItem3Action, whiteSquare3MenuItem3Remove])
        whiteSquare3MenuItem3.run(whiteSquare3MenuItem3Sequence)
        
        whiteSquare3Item3TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3Item3TitleRemove = SKAction.removeFromParent()
        whiteSquare3Item3TitleSequence = SKAction.sequence([whiteSquare3Item3TitleAction, whiteSquare3Item3TitleRemove])
        whiteSquare3Item3Title.run(whiteSquare3Item3TitleSequence)
        
        whiteSquare3Item4TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3Item4TitleRemove = SKAction.removeFromParent()
        whiteSquare3Item4TitleSequence = SKAction.sequence([whiteSquare3Item4TitleAction, whiteSquare3Item4TitleRemove])
        whiteSquare3Item4Title.run(whiteSquare3Item4TitleSequence)
        
        whiteSquare3MenuItem3Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem3Label1Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem3Label1Sequence = SKAction.sequence([whiteSquare3MenuItem3Label1Action, whiteSquare3MenuItem3Label1Remove])
        whiteSquare3MenuItem3Label1.run(whiteSquare3MenuItem3Label1Sequence)
        
        whiteSquare3MenuItem3Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem3Label2Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem3Label2Sequence = SKAction.sequence([whiteSquare3MenuItem3Label2Action, whiteSquare3MenuItem3Label2Remove])
        whiteSquare3MenuItem3Label2.run(whiteSquare3MenuItem3Label2Sequence)
        
        whiteSquare3MenuItem4Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem4Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem4Sequence = SKAction.sequence([whiteSquare3MenuItem4Action, whiteSquare3MenuItem4Remove])
        whiteSquare3MenuItem4.run(whiteSquare3MenuItem4Sequence)
        
        whiteSquare3MenuItem4Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem4Label1Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem4Label1Sequence = SKAction.sequence([whiteSquare3MenuItem4Label1Action, whiteSquare3MenuItem4Label1Remove])
        whiteSquare3MenuItem4Label1.run(whiteSquare3MenuItem4Label1Sequence)
        
        whiteSquare3MenuItem4Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem4Label2Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem4Label2Sequence = SKAction.sequence([whiteSquare3MenuItem4Label2Action, whiteSquare3MenuItem4Label2Remove])
        whiteSquare3MenuItem4Label2.run(whiteSquare3MenuItem4Label2Sequence)
        
        removeMenuItemLabels(label: item3Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item4Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare3Menu2Right(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare3Menu2Action: SKAction
        
        // TITLE
        var whiteSquare3Title2BackdropAction: SKAction
        var whiteSquare3Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare3MenuItem3Action: SKAction
        var whiteSquare3Item3TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare3MenuItem3Label1Action: SKAction
        var whiteSquare3MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare3MenuItem4Action: SKAction
        var whiteSquare3Item4TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare3MenuItem4Label1Action: SKAction
        var whiteSquare3MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare3Menu2.position)
            print("MenuItem3", self.whiteSquare3MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare3MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare3MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare3MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare3MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare3MenuItem4Label2.position)
        }
            
        whiteSquare3Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare3Menu2.run(whiteSquare3Menu2Action)
        
        whiteSquare3Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare3Title2Backdrop.run(whiteSquare3Title2BackdropAction)
        
        whiteSquare3Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare3Title2Label.run(whiteSquare3Title2LabelAction)
        
        whiteSquare3MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare3MenuItem3.run(whiteSquare3MenuItem3Action)
        
        whiteSquare3Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare3Item3Title.run(whiteSquare3Item3TitleAction)
        
        whiteSquare3MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare3MenuItem3Label1.run(whiteSquare3MenuItem3Label1Action)
        
        whiteSquare3MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare3MenuItem3Label2.run(whiteSquare3MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare3MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare3MenuItem4.run(whiteSquare3MenuItem4Action)
        
        whiteSquare3Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare3Item4Title.run(whiteSquare3Item4TitleAction)
        
        whiteSquare3MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare3MenuItem4Label1.run(whiteSquare3MenuItem4Label1Action)
        
        whiteSquare3MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem4.frame.size.height / 2 - whiteSquare3MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare3MenuItem4Label2.run(SKAction.sequence([whiteSquare3MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem3.frame.size.height / 2 - whiteSquare3MenuItem4Label2.frame.size.height * 3))
    }
}

