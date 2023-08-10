//
//  SecondaryMenuForWhiteSquare4.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class Menu2ForWhiteSquare4: SKNode {
    
    var whiteSquare4Menu2: SKSpriteNode!
    
    var whiteSquare4Title2Backdrop: SKSpriteNode!
    var whiteSquare4Title2Label: SKLabelNode!
    
    var whiteSquare4MenuItem3: SKSpriteNode!
    var whiteSquare4MenuItem4: SKSpriteNode!
    
    var whiteSquare4Item3Title: SKLabelNode!
    var whiteSquare4Item4Title: SKLabelNode!
    
    var priceOfMenuItem3 = 100
    var techLevelRequirementMenuItem3 = 0
    
    var priceOfMenuItem4 = 100
    var techLevelRequirementMenuItem4 = 0
    
    var whiteSquare4MenuItem3Label1: SKLabelNode!
    var whiteSquare4MenuItem3Label2: SKLabelNode!
    
    var whiteSquare4MenuItem4Label1: SKLabelNode!
    var whiteSquare4MenuItem4Label2: SKLabelNode!
    
    var item3Label1: SKLabelNode!
    var item4Label1: SKLabelNode!
    var item4Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- Menu2
    
    func createMenu2ForWhiteSquare4(view: SKView) {
        // Menu2 BACKDROP
        whiteSquare4Menu2 = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare4Menu2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y)
        whiteSquare4Menu2.setScale(0.42)
        whiteSquare4Menu2.zPosition = 3
//        whiteSquare4Menu2.fillColor = eerieBlack
        whiteSquare4Menu2.name = "whiteSquare4Menu2"
        addChild(whiteSquare4Menu2)
        
        // Menu2 TITLE
        whiteSquare4Title2Backdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare4Title2Backdrop.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2)
        whiteSquare4Title2Backdrop.setScale(0.42)
        whiteSquare4Title2Backdrop.zPosition = 3
        addChild(whiteSquare4Title2Backdrop)
        
        whiteSquare4Title2Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4Title2Label.text = "Military"
        whiteSquare4Title2Label.fontSize = 18
        whiteSquare4Title2Label.fontColor = forbiddenFruit
        whiteSquare4Title2Label.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1)
        whiteSquare4Title2Label.zPosition = 4
        addChild(whiteSquare4Title2Label)
        
        // Menu2 ITEM 3
        whiteSquare4MenuItem3 = SKSpriteNode(imageNamed: "Location 5")
        whiteSquare4MenuItem3.setScale(0.26)
        whiteSquare4MenuItem3.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height / 3)
        whiteSquare4MenuItem3.zPosition = 4
//        whiteSquare4MenuItem3.fillColor = ghostWhite
//        whiteSquare4MenuItem3.strokeColor = SKColor.clear
        whiteSquare4MenuItem3.name = "whiteSquare4MenuItem3"
        addChild(whiteSquare4MenuItem3)
        
        whiteSquare4Item3Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4Item3Title.text = "Factory"
        whiteSquare4Item3Title.fontSize = 9
        whiteSquare4Item3Title.fontColor = forbiddenFruit
        whiteSquare4Item3Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height)
        whiteSquare4Item3Title.zPosition = 4
        addChild(whiteSquare4Item3Title)
        
        // Menu2 ITEM 3 -------- LABELS
        whiteSquare4MenuItem3Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4MenuItem3Label1.text = "Cost: \(priceOfMenuItem3)"
        whiteSquare4MenuItem3Label1.fontSize = 7.5
        whiteSquare4MenuItem3Label1.fontColor = forbiddenFruit
        whiteSquare4MenuItem3Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2)
        whiteSquare4MenuItem3Label1.zPosition = 4
        addChild(whiteSquare4MenuItem3Label1)
        
        whiteSquare4MenuItem3Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4MenuItem3Label2.text = "Tech: \(techLevelRequirementMenuItem3)"
        whiteSquare4MenuItem3Label2.fontSize = 7.5
        whiteSquare4MenuItem3Label2.fontColor = forbiddenFruit
        whiteSquare4MenuItem3Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem3Label1.frame.size.height * 1.1)
        whiteSquare4MenuItem3Label2.zPosition = 4
        addChild(whiteSquare4MenuItem3Label2)
        
        item3Label1 = createMenuItemLabels(text: "Battle Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem3Label2.frame.size.height * 3))
        addChild(item3Label1)
        
        // Menu2 ITEM 4
        whiteSquare4MenuItem4 = SKSpriteNode(imageNamed: "Location 6")
        whiteSquare4MenuItem4.setScale(0.26)
        whiteSquare4MenuItem4.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem4.frame.size.height / 3)
        whiteSquare4MenuItem4.zPosition = 4
//        whiteSquare4MenuItem4.fillColor = grape
//        whiteSquare4MenuItem4.strokeColor = SKColor.clear
        whiteSquare4MenuItem4.name = "whiteSquare4MenuItem4"
        addChild(whiteSquare4MenuItem4)
        
        whiteSquare4Item4Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4Item4Title.text = "Ship Yard"
        whiteSquare4Item4Title.fontSize = 9
        whiteSquare4Item4Title.fontColor = forbiddenFruit
        whiteSquare4Item4Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height)
        whiteSquare4Item4Title.zPosition = 4
        addChild(whiteSquare4Item4Title)
        
        // Menu2 ITEM 2 -------- LABELS
        whiteSquare4MenuItem4Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4MenuItem4Label1.text = "Cost: \(priceOfMenuItem4)"
        whiteSquare4MenuItem4Label1.fontSize = 7.5
        whiteSquare4MenuItem4Label1.fontColor = forbiddenFruit
        whiteSquare4MenuItem4Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem4.frame.size.height / 2)
        whiteSquare4MenuItem4Label1.zPosition = 4
        addChild(whiteSquare4MenuItem4Label1)
        
        whiteSquare4MenuItem4Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4MenuItem4Label2.text = "Tech: \(techLevelRequirementMenuItem4)"
        whiteSquare4MenuItem4Label2.fontSize = 7.5
        whiteSquare4MenuItem4Label2.fontColor = forbiddenFruit
        whiteSquare4MenuItem4Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem4.frame.size.height / 2 - whiteSquare4MenuItem4Label1.frame.size.height * 1.1)
        whiteSquare4MenuItem4Label2.zPosition = 4
        addChild(whiteSquare4MenuItem4Label2)
        
        item4Label1 = createMenuItemLabels(text: "Pirate Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem4Label2.frame.size.height * 3))
        addChild(item4Label1)
        
        print("Menu2", whiteSquare4Menu2.position)
        print("Menu2 Label", whiteSquare4Title2Label.position)
        print("MenuItem3", whiteSquare4MenuItem3.position)
        print("MenuItem3Label1", whiteSquare4MenuItem3Label1.position)
        print("MenuItem3Label2", whiteSquare4MenuItem3Label2.position)
        print("MenuItem4", whiteSquare4MenuItem4.position)
        print("MenuItem4Label1", whiteSquare4MenuItem4Label1.position)
        print("MenuItem4Label2", whiteSquare4MenuItem4Label2.position)
    }
    
    func moveWhiteSquare4Menu2(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare4Menu2Action: SKAction
        
        // TITLE
        var whiteSquare4Title2BackdropAction: SKAction
        var whiteSquare4Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare4MenuItem3Action: SKAction
        
        var whiteSquare4Item3TitleAction: SKAction
        var whiteSquare4Item4TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare4MenuItem3Label1Action: SKAction
        var whiteSquare4MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare4MenuItem4Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare4MenuItem4Label1Action: SKAction
        var whiteSquare4MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare4Menu2.position)
            print("Menu2 Label", self.whiteSquare4Title2Label.position)
            print("MenuItem3", self.whiteSquare4MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare4MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare4MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare4MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare4MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare4MenuItem4Label2.position)
        }
        
        whiteSquare4Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare4Menu2.run(whiteSquare4Menu2Action)
        
        whiteSquare4Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare4Title2Backdrop.run(whiteSquare4Title2BackdropAction)
        
        whiteSquare4Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare4Title2Label.run(whiteSquare4Title2LabelAction)
        
        whiteSquare4MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare4MenuItem3.run(whiteSquare4MenuItem3Action)
        
        whiteSquare4Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare4Item3Title.run(whiteSquare4Item3TitleAction)
        
        whiteSquare4MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare4MenuItem3Label1.run(whiteSquare4MenuItem3Label1Action)
        
        whiteSquare4MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare4MenuItem3Label2.run(whiteSquare4MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare4MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare4MenuItem4.run(whiteSquare4MenuItem4Action)
        
        whiteSquare4Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare4Item4Title.run(whiteSquare4Item4TitleAction)
        
        whiteSquare4MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare4MenuItem4Label1.run(whiteSquare4MenuItem4Label1Action)
        
        whiteSquare4MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem4.frame.size.height / 2 - whiteSquare4MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare4MenuItem4Label2.run(SKAction.sequence([whiteSquare4MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem4Label2.frame.size.height * 3))
        
    }
    
    func removeWhiteSquare4Menu2(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare4Menu2Action: SKAction // BACKDROP
        var whiteSquare4Title2BackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare4Title2LabelAction: SKAction // TITLE
        var whiteSquare4MenuItem3Action: SKAction // ITEM 1
        var whiteSquare4Item3TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare4MenuItem3Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare4MenuItem3Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare4MenuItem4Action: SKAction // ITEM 2
        var whiteSquare4Item4TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare4MenuItem4Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare4MenuItem4Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare4Menu2Remove: SKAction // BACKDROP
        var whiteSquare4Title2BackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare4Title2LabelRemove: SKAction // TITLE
        var whiteSquare4MenuItem3Remove: SKAction // ITEM 1
        var whiteSquare4Item3TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare4MenuItem3Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare4MenuItem3Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare4MenuItem4Remove: SKAction // ITEM 2
        var whiteSquare4Item4TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare4MenuItem4Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare4MenuItem4Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare4Menu2Sequence: SKAction // BACKDROP
        var whiteSquare4Title2BackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare4Title2LabelSequence: SKAction // TITLE
        var whiteSquare4MenuItem3Sequence: SKAction // ITEM 1
        var whiteSquare4Item3TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare4MenuItem3Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare4MenuItem3Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare4MenuItem4Sequence: SKAction // ITEM 2
        var whiteSquare4Item4TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare4MenuItem4Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare4MenuItem4Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare4Menu2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4Menu2Remove = SKAction.removeFromParent()
        whiteSquare4Menu2Sequence = SKAction.sequence([whiteSquare4Menu2Action, whiteSquare4Menu2Remove])
        whiteSquare4Menu2.run(whiteSquare4Menu2Sequence)
        
        whiteSquare4Title2BackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4Title2BackdropRemove = SKAction.removeFromParent()
        whiteSquare4Title2BackdropSequence = SKAction.sequence([whiteSquare4Title2BackdropAction, whiteSquare4Title2BackdropRemove])
        whiteSquare4Title2Backdrop.run(whiteSquare4Title2BackdropSequence)
        
        whiteSquare4Title2LabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4Title2LabelRemove = SKAction.removeFromParent()
        whiteSquare4Title2LabelSequence = SKAction.sequence([whiteSquare4Title2LabelAction, whiteSquare4Title2LabelRemove])
        whiteSquare4Title2Label.run(whiteSquare4Title2LabelSequence)
        
        whiteSquare4MenuItem3Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem3Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem3Sequence = SKAction.sequence([whiteSquare4MenuItem3Action, whiteSquare4MenuItem3Remove])
        whiteSquare4MenuItem3.run(whiteSquare4MenuItem3Sequence)
        
        whiteSquare4Item3TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4Item3TitleRemove = SKAction.removeFromParent()
        whiteSquare4Item3TitleSequence = SKAction.sequence([whiteSquare4Item3TitleAction, whiteSquare4Item3TitleRemove])
        whiteSquare4Item3Title.run(whiteSquare4Item3TitleSequence)
        
        whiteSquare4Item4TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4Item4TitleRemove = SKAction.removeFromParent()
        whiteSquare4Item4TitleSequence = SKAction.sequence([whiteSquare4Item4TitleAction, whiteSquare4Item4TitleRemove])
        whiteSquare4Item4Title.run(whiteSquare4Item4TitleSequence)
        
        whiteSquare4MenuItem3Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem3Label1Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem3Label1Sequence = SKAction.sequence([whiteSquare4MenuItem3Label1Action, whiteSquare4MenuItem3Label1Remove])
        whiteSquare4MenuItem3Label1.run(whiteSquare4MenuItem3Label1Sequence)
        
        whiteSquare4MenuItem3Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem3Label2Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem3Label2Sequence = SKAction.sequence([whiteSquare4MenuItem3Label2Action, whiteSquare4MenuItem3Label2Remove])
        whiteSquare4MenuItem3Label2.run(whiteSquare4MenuItem3Label2Sequence)
        
        whiteSquare4MenuItem4Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem4Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem4Sequence = SKAction.sequence([whiteSquare4MenuItem4Action, whiteSquare4MenuItem4Remove])
        whiteSquare4MenuItem4.run(whiteSquare4MenuItem4Sequence)
        
        whiteSquare4MenuItem4Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem4Label1Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem4Label1Sequence = SKAction.sequence([whiteSquare4MenuItem4Label1Action, whiteSquare4MenuItem4Label1Remove])
        whiteSquare4MenuItem4Label1.run(whiteSquare4MenuItem4Label1Sequence)
        
        whiteSquare4MenuItem4Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem4Label2Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem4Label2Sequence = SKAction.sequence([whiteSquare4MenuItem4Label2Action, whiteSquare4MenuItem4Label2Remove])
        whiteSquare4MenuItem4Label2.run(whiteSquare4MenuItem4Label2Sequence)
        
        removeMenuItemLabels(label: item3Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item4Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare4Menu2Right(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare4Menu2Action: SKAction
        
        // TITLE
        var whiteSquare4Title2BackdropAction: SKAction
        var whiteSquare4Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare4MenuItem3Action: SKAction
        var whiteSquare4Item3TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare4MenuItem3Label1Action: SKAction
        var whiteSquare4MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare4MenuItem4Action: SKAction
        var whiteSquare4Item4TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare4MenuItem4Label1Action: SKAction
        var whiteSquare4MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare4Menu2.position)
            print("MenuItem3", self.whiteSquare4MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare4MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare4MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare4MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare4MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare4MenuItem4Label2.position)
        }
            
        whiteSquare4Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare4Menu2.run(whiteSquare4Menu2Action)
        
        whiteSquare4Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare4Title2Backdrop.run(whiteSquare4Title2BackdropAction)
        
        whiteSquare4Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare4Title2Label.run(whiteSquare4Title2LabelAction)
        
        whiteSquare4MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare4MenuItem3.run(whiteSquare4MenuItem3Action)
        
        whiteSquare4Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare4Item3Title.run(whiteSquare4Item3TitleAction)
        
        whiteSquare4MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare4MenuItem3Label1.run(whiteSquare4MenuItem3Label1Action)
        
        whiteSquare4MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare4MenuItem3Label2.run(whiteSquare4MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare4MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare4MenuItem4.run(whiteSquare4MenuItem4Action)
        
        whiteSquare4Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare4Item4Title.run(whiteSquare4Item4TitleAction)
        
        whiteSquare4MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare4MenuItem4Label1.run(whiteSquare4MenuItem4Label1Action)
        
        whiteSquare4MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem4.frame.size.height / 2 - whiteSquare4MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare4MenuItem4Label2.run(SKAction.sequence([whiteSquare4MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem3.frame.size.height / 2 - whiteSquare4MenuItem4Label2.frame.size.height * 3))
    }
}
