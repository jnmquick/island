//
//  SecondaryMenu2ForWhiteSquare2.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class Menu2ForWhiteSquare2: SKNode {
    
    var whiteSquare2Menu2: SKSpriteNode!
    
    var whiteSquare2Title2Backdrop: SKSpriteNode!
    var whiteSquare2Title2Label: SKLabelNode!
    
    var whiteSquare2MenuItem3: SKSpriteNode!
    var whiteSquare2MenuItem4: SKSpriteNode!
    
    var whiteSquare2Item3Title: SKLabelNode!
    var whiteSquare2Item4Title: SKLabelNode!
    
    var priceOfMenuItem3 = 100
    var techLevelRequirementMenuItem3 = 0
    
    var priceOfMenuItem4 = 100
    var techLevelRequirementMenuItem4 = 0
    
    var whiteSquare2MenuItem3Label1: SKLabelNode!
    var whiteSquare2MenuItem3Label2: SKLabelNode!
    
    var whiteSquare2MenuItem4Label1: SKLabelNode!
    var whiteSquare2MenuItem4Label2: SKLabelNode!
    
    var item3Label1: SKLabelNode!
    var item4Label1: SKLabelNode!
    var item4Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- Menu2
    
    func createMenu2ForWhiteSquare2(view: SKView) {
        // Menu2 BACKDROP
        whiteSquare2Menu2 = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare2Menu2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y)
        whiteSquare2Menu2.setScale(0.42)
        whiteSquare2Menu2.zPosition = 3
//        whiteSquare2Menu2.fillColor = eerieBlack
        whiteSquare2Menu2.name = "whiteSquare2Menu2"
        addChild(whiteSquare2Menu2)
        
        // Menu2 TITLE
        whiteSquare2Title2Backdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare2Title2Backdrop.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2)
        whiteSquare2Title2Backdrop.setScale(0.42)
        whiteSquare2Title2Backdrop.zPosition = 3
        addChild(whiteSquare2Title2Backdrop)
        
        whiteSquare2Title2Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2Title2Label.text = "Military"
        whiteSquare2Title2Label.fontSize = 18
        whiteSquare2Title2Label.fontColor = forbiddenFruit
        whiteSquare2Title2Label.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1)
        whiteSquare2Title2Label.zPosition = 4
        addChild(whiteSquare2Title2Label)
        
        // Menu2 ITEM 3
        whiteSquare2MenuItem3 = SKSpriteNode(imageNamed: "Location 5")
        whiteSquare2MenuItem3.setScale(0.26)
        whiteSquare2MenuItem3.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height / 3)
        whiteSquare2MenuItem3.zPosition = 4
//        whiteSquare2MenuItem3.fillColor = ghostWhite
//        whiteSquare2MenuItem3.strokeColor = SKColor.clear
        whiteSquare2MenuItem3.name = "whiteSquare2MenuItem3"
        addChild(whiteSquare2MenuItem3)
        
        whiteSquare2Item3Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2Item3Title.text = "Factory"
        whiteSquare2Item3Title.fontSize = 9
        whiteSquare2Item3Title.fontColor = forbiddenFruit
        whiteSquare2Item3Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height)
        whiteSquare2Item3Title.zPosition = 4
        addChild(whiteSquare2Item3Title)
        
        // Menu2 ITEM 3 -------- LABELS
        whiteSquare2MenuItem3Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2MenuItem3Label1.text = "Cost: \(priceOfMenuItem3)"
        whiteSquare2MenuItem3Label1.fontSize = 7.5
        whiteSquare2MenuItem3Label1.fontColor = forbiddenFruit
        whiteSquare2MenuItem3Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2)
        whiteSquare2MenuItem3Label1.zPosition = 4
        addChild(whiteSquare2MenuItem3Label1)
        
        whiteSquare2MenuItem3Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2MenuItem3Label2.text = "Tech: \(techLevelRequirementMenuItem3)"
        whiteSquare2MenuItem3Label2.fontSize = 7.5
        whiteSquare2MenuItem3Label2.fontColor = forbiddenFruit
        whiteSquare2MenuItem3Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem3Label1.frame.size.height * 1.1)
        whiteSquare2MenuItem3Label2.zPosition = 4
        addChild(whiteSquare2MenuItem3Label2)
        
        item3Label1 = createMenuItemLabels(text: "Battle Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem3Label2.frame.size.height * 3))
        addChild(item3Label1)
        
        // Menu2 ITEM 4
        whiteSquare2MenuItem4 = SKSpriteNode(imageNamed: "Location 6")
        whiteSquare2MenuItem4.setScale(0.26)
        whiteSquare2MenuItem4.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem4.frame.size.height / 3)
        whiteSquare2MenuItem4.zPosition = 4
//        whiteSquare2MenuItem4.fillColor = grape
//        whiteSquare2MenuItem4.strokeColor = SKColor.clear
        whiteSquare2MenuItem4.name = "whiteSquare2MenuItem4"
        addChild(whiteSquare2MenuItem4)
        
        whiteSquare2Item4Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2Item4Title.text = "Ship Yard"
        whiteSquare2Item4Title.fontSize = 9
        whiteSquare2Item4Title.fontColor = forbiddenFruit
        whiteSquare2Item4Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height)
        whiteSquare2Item4Title.zPosition = 4
        addChild(whiteSquare2Item4Title)
        
        // Menu2 ITEM 2 -------- LABELS
        whiteSquare2MenuItem4Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2MenuItem4Label1.text = "Cost: \(priceOfMenuItem4)"
        whiteSquare2MenuItem4Label1.fontSize = 7.5
        whiteSquare2MenuItem4Label1.fontColor = forbiddenFruit
        whiteSquare2MenuItem4Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem4.frame.size.height / 2)
        whiteSquare2MenuItem4Label1.zPosition = 4
        addChild(whiteSquare2MenuItem4Label1)
        
        whiteSquare2MenuItem4Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2MenuItem4Label2.text = "Tech: \(techLevelRequirementMenuItem4)"
        whiteSquare2MenuItem4Label2.fontSize = 7.5
        whiteSquare2MenuItem4Label2.fontColor = forbiddenFruit
        whiteSquare2MenuItem4Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem4.frame.size.height / 2 - whiteSquare2MenuItem4Label1.frame.size.height * 1.1)
        whiteSquare2MenuItem4Label2.zPosition = 4
        addChild(whiteSquare2MenuItem4Label2)
        
        item4Label1 = createMenuItemLabels(text: "Pirate Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem4Label2.frame.size.height * 3))
        addChild(item4Label1)
        
        print("Menu2", whiteSquare2Menu2.position)
        print("Menu2 Label", whiteSquare2Title2Label.position)
        print("MenuItem3", whiteSquare2MenuItem3.position)
        print("MenuItem3Label1", whiteSquare2MenuItem3Label1.position)
        print("MenuItem3Label2", whiteSquare2MenuItem3Label2.position)
        print("MenuItem4", whiteSquare2MenuItem4.position)
        print("MenuItem4Label1", whiteSquare2MenuItem4Label1.position)
        print("MenuItem4Label2", whiteSquare2MenuItem4Label2.position)
    }
    
    func moveWhiteSquare2Menu2(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare2Menu2Action: SKAction
        
        // TITLE
        var whiteSquare2Title2BackdropAction: SKAction
        var whiteSquare2Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare2MenuItem3Action: SKAction
        
        var whiteSquare2Item3TitleAction: SKAction
        var whiteSquare2Item4TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare2MenuItem3Label1Action: SKAction
        var whiteSquare2MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare2MenuItem4Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare2MenuItem4Label1Action: SKAction
        var whiteSquare2MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare2Menu2.position)
            print("Menu2 Label", self.whiteSquare2Title2Label.position)
            print("MenuItem3", self.whiteSquare2MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare2MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare2MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare2MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare2MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare2MenuItem4Label2.position)
        }
        
        whiteSquare2Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare2Menu2.run(whiteSquare2Menu2Action)
        
        whiteSquare2Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare2Title2Backdrop.run(whiteSquare2Title2BackdropAction)
        
        whiteSquare2Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare2Title2Label.run(whiteSquare2Title2LabelAction)
        
        whiteSquare2MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare2MenuItem3.run(whiteSquare2MenuItem3Action)
        
        whiteSquare2Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare2Item3Title.run(whiteSquare2Item3TitleAction)
        
        whiteSquare2MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare2MenuItem3Label1.run(whiteSquare2MenuItem3Label1Action)
        
        whiteSquare2MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare2MenuItem3Label2.run(whiteSquare2MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare2MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare2MenuItem4.run(whiteSquare2MenuItem4Action)
        
        whiteSquare2Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare2Item4Title.run(whiteSquare2Item4TitleAction)
        
        whiteSquare2MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare2MenuItem4Label1.run(whiteSquare2MenuItem4Label1Action)
        
        whiteSquare2MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem4.frame.size.height / 2 - whiteSquare2MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare2MenuItem4Label2.run(SKAction.sequence([whiteSquare2MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem4Label2.frame.size.height * 3))
        
    }
    
    func removeWhiteSquare2Menu2(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare2Menu2Action: SKAction // BACKDROP
        var whiteSquare2Title2BackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare2Title2LabelAction: SKAction // TITLE
        var whiteSquare2MenuItem3Action: SKAction // ITEM 1
        var whiteSquare2Item3TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare2MenuItem3Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare2MenuItem3Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare2MenuItem4Action: SKAction // ITEM 2
        var whiteSquare2Item4TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare2MenuItem4Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare2MenuItem4Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare2Menu2Remove: SKAction // BACKDROP
        var whiteSquare2Title2BackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare2Title2LabelRemove: SKAction // TITLE
        var whiteSquare2MenuItem3Remove: SKAction // ITEM 1
        var whiteSquare2Item3TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare2MenuItem3Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare2MenuItem3Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare2MenuItem4Remove: SKAction // ITEM 2
        var whiteSquare2Item4TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare2MenuItem4Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare2MenuItem4Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare2Menu2Sequence: SKAction // BACKDROP
        var whiteSquare2Title2BackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare2Title2LabelSequence: SKAction // TITLE
        var whiteSquare2MenuItem3Sequence: SKAction // ITEM 1
        var whiteSquare2Item3TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare2MenuItem3Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare2MenuItem3Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare2MenuItem4Sequence: SKAction // ITEM 2
        var whiteSquare2Item4TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare2MenuItem4Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare2MenuItem4Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare2Menu2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2Menu2Remove = SKAction.removeFromParent()
        whiteSquare2Menu2Sequence = SKAction.sequence([whiteSquare2Menu2Action, whiteSquare2Menu2Remove])
        whiteSquare2Menu2.run(whiteSquare2Menu2Sequence)
        
        whiteSquare2Title2BackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2Title2BackdropRemove = SKAction.removeFromParent()
        whiteSquare2Title2BackdropSequence = SKAction.sequence([whiteSquare2Title2BackdropAction, whiteSquare2Title2BackdropRemove])
        whiteSquare2Title2Backdrop.run(whiteSquare2Title2BackdropSequence)
        
        whiteSquare2Title2LabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2Title2LabelRemove = SKAction.removeFromParent()
        whiteSquare2Title2LabelSequence = SKAction.sequence([whiteSquare2Title2LabelAction, whiteSquare2Title2LabelRemove])
        whiteSquare2Title2Label.run(whiteSquare2Title2LabelSequence)
        
        whiteSquare2MenuItem3Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem3Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem3Sequence = SKAction.sequence([whiteSquare2MenuItem3Action, whiteSquare2MenuItem3Remove])
        whiteSquare2MenuItem3.run(whiteSquare2MenuItem3Sequence)
        
        whiteSquare2Item3TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2Item3TitleRemove = SKAction.removeFromParent()
        whiteSquare2Item3TitleSequence = SKAction.sequence([whiteSquare2Item3TitleAction, whiteSquare2Item3TitleRemove])
        whiteSquare2Item3Title.run(whiteSquare2Item3TitleSequence)
        
        whiteSquare2Item4TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2Item4TitleRemove = SKAction.removeFromParent()
        whiteSquare2Item4TitleSequence = SKAction.sequence([whiteSquare2Item4TitleAction, whiteSquare2Item4TitleRemove])
        whiteSquare2Item4Title.run(whiteSquare2Item4TitleSequence)
        
        whiteSquare2MenuItem3Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem3Label1Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem3Label1Sequence = SKAction.sequence([whiteSquare2MenuItem3Label1Action, whiteSquare2MenuItem3Label1Remove])
        whiteSquare2MenuItem3Label1.run(whiteSquare2MenuItem3Label1Sequence)
        
        whiteSquare2MenuItem3Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem3Label2Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem3Label2Sequence = SKAction.sequence([whiteSquare2MenuItem3Label2Action, whiteSquare2MenuItem3Label2Remove])
        whiteSquare2MenuItem3Label2.run(whiteSquare2MenuItem3Label2Sequence)
        
        whiteSquare2MenuItem4Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem4Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem4Sequence = SKAction.sequence([whiteSquare2MenuItem4Action, whiteSquare2MenuItem4Remove])
        whiteSquare2MenuItem4.run(whiteSquare2MenuItem4Sequence)
        
        whiteSquare2MenuItem4Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem4Label1Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem4Label1Sequence = SKAction.sequence([whiteSquare2MenuItem4Label1Action, whiteSquare2MenuItem4Label1Remove])
        whiteSquare2MenuItem4Label1.run(whiteSquare2MenuItem4Label1Sequence)
        
        whiteSquare2MenuItem4Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem4Label2Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem4Label2Sequence = SKAction.sequence([whiteSquare2MenuItem4Label2Action, whiteSquare2MenuItem4Label2Remove])
        whiteSquare2MenuItem4Label2.run(whiteSquare2MenuItem4Label2Sequence)
        
        removeMenuItemLabels(label: item3Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item4Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare2Menu2Right(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare2Menu2Action: SKAction
        
        // TITLE
        var whiteSquare2Title2BackdropAction: SKAction
        var whiteSquare2Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare2MenuItem3Action: SKAction
        var whiteSquare2Item3TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare2MenuItem3Label1Action: SKAction
        var whiteSquare2MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare2MenuItem4Action: SKAction
        var whiteSquare2Item4TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare2MenuItem4Label1Action: SKAction
        var whiteSquare2MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare2Menu2.position)
            print("MenuItem3", self.whiteSquare2MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare2MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare2MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare2MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare2MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare2MenuItem4Label2.position)
        }
            
        whiteSquare2Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare2Menu2.run(whiteSquare2Menu2Action)
        
        whiteSquare2Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare2Title2Backdrop.run(whiteSquare2Title2BackdropAction)
        
        whiteSquare2Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare2Title2Label.run(whiteSquare2Title2LabelAction)
        
        whiteSquare2MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare2MenuItem3.run(whiteSquare2MenuItem3Action)
        
        whiteSquare2Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare2Item3Title.run(whiteSquare2Item3TitleAction)
        
        whiteSquare2MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare2MenuItem3Label1.run(whiteSquare2MenuItem3Label1Action)
        
        whiteSquare2MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare2MenuItem3Label2.run(whiteSquare2MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare2MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare2MenuItem4.run(whiteSquare2MenuItem4Action)
        
        whiteSquare2Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare2Item4Title.run(whiteSquare2Item4TitleAction)
        
        whiteSquare2MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare2MenuItem4Label1.run(whiteSquare2MenuItem4Label1Action)
        
        whiteSquare2MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem4.frame.size.height / 2 - whiteSquare2MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare2MenuItem4Label2.run(SKAction.sequence([whiteSquare2MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem3.frame.size.height / 2 - whiteSquare2MenuItem4Label2.frame.size.height * 3))
    }
}

