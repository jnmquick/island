//
//  SecondaryMenuForWhiteSquare5.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class Menu2ForWhiteSquare5: SKNode {
    
    var whiteSquare5Menu2: SKSpriteNode!
    
    var whiteSquare5Title2Backdrop: SKSpriteNode!
    var whiteSquare5Title2Label: SKLabelNode!
    
    var whiteSquare5MenuItem3: SKSpriteNode!
    var whiteSquare5MenuItem4: SKSpriteNode!
    
    var whiteSquare5Item3Title: SKLabelNode!
    var whiteSquare5Item4Title: SKLabelNode!
    
    var priceOfMenuItem3 = 100
    var techLevelRequirementMenuItem3 = 0
    
    var priceOfMenuItem4 = 100
    var techLevelRequirementMenuItem4 = 0
    
    var whiteSquare5MenuItem3Label1: SKLabelNode!
    var whiteSquare5MenuItem3Label2: SKLabelNode!
    
    var whiteSquare5MenuItem4Label1: SKLabelNode!
    var whiteSquare5MenuItem4Label2: SKLabelNode!
    
    var item3Label1: SKLabelNode!
    var item4Label1: SKLabelNode!
    var item4Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- Menu2
    
    func createMenu2ForWhiteSquare5(view: SKView) {
        // Menu2 BACKDROP
        whiteSquare5Menu2 = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare5Menu2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y)
        whiteSquare5Menu2.setScale(0.42)
        whiteSquare5Menu2.zPosition = 3
//        whiteSquare5Menu2.fillColor = eerieBlack
        whiteSquare5Menu2.name = "whiteSquare5Menu2"
        addChild(whiteSquare5Menu2)
        
        // Menu2 TITLE
        whiteSquare5Title2Backdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare5Title2Backdrop.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2)
        whiteSquare5Title2Backdrop.setScale(0.42)
        whiteSquare5Title2Backdrop.zPosition = 3
        addChild(whiteSquare5Title2Backdrop)
        
        whiteSquare5Title2Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5Title2Label.text = "Military"
        whiteSquare5Title2Label.fontSize = 18
        whiteSquare5Title2Label.fontColor = forbiddenFruit
        whiteSquare5Title2Label.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1)
        whiteSquare5Title2Label.zPosition = 4
        addChild(whiteSquare5Title2Label)
        
        // Menu2 ITEM 3
        whiteSquare5MenuItem3 = SKSpriteNode(imageNamed: "Location 5")
        whiteSquare5MenuItem3.setScale(0.26)
        whiteSquare5MenuItem3.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height / 3)
        whiteSquare5MenuItem3.zPosition = 4
//        whiteSquare5MenuItem3.fillColor = ghostWhite
//        whiteSquare5MenuItem3.strokeColor = SKColor.clear
        whiteSquare5MenuItem3.name = "whiteSquare5MenuItem3"
        addChild(whiteSquare5MenuItem3)
        
        whiteSquare5Item3Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5Item3Title.text = "Factory"
        whiteSquare5Item3Title.fontSize = 9
        whiteSquare5Item3Title.fontColor = forbiddenFruit
        whiteSquare5Item3Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height)
        whiteSquare5Item3Title.zPosition = 4
        addChild(whiteSquare5Item3Title)
        
        // Menu2 ITEM 3 -------- LABELS
        whiteSquare5MenuItem3Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5MenuItem3Label1.text = "Cost: \(priceOfMenuItem3)"
        whiteSquare5MenuItem3Label1.fontSize = 7.5
        whiteSquare5MenuItem3Label1.fontColor = forbiddenFruit
        whiteSquare5MenuItem3Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2)
        whiteSquare5MenuItem3Label1.zPosition = 4
        addChild(whiteSquare5MenuItem3Label1)
        
        whiteSquare5MenuItem3Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5MenuItem3Label2.text = "Tech: \(techLevelRequirementMenuItem3)"
        whiteSquare5MenuItem3Label2.fontSize = 7.5
        whiteSquare5MenuItem3Label2.fontColor = forbiddenFruit
        whiteSquare5MenuItem3Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem3Label1.frame.size.height * 1.1)
        whiteSquare5MenuItem3Label2.zPosition = 4
        addChild(whiteSquare5MenuItem3Label2)
        
        item3Label1 = createMenuItemLabels(text: "Battle Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem3Label2.frame.size.height * 3))
        addChild(item3Label1)
        
        // Menu2 ITEM 4
        whiteSquare5MenuItem4 = SKSpriteNode(imageNamed: "Location 6")
        whiteSquare5MenuItem4.setScale(0.26)
        whiteSquare5MenuItem4.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem4.frame.size.height / 3)
        whiteSquare5MenuItem4.zPosition = 4
//        whiteSquare5MenuItem4.fillColor = grape
//        whiteSquare5MenuItem4.strokeColor = SKColor.clear
        whiteSquare5MenuItem4.name = "whiteSquare5MenuItem4"
        addChild(whiteSquare5MenuItem4)
        
        whiteSquare5Item4Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5Item4Title.text = "Ship Yard"
        whiteSquare5Item4Title.fontSize = 9
        whiteSquare5Item4Title.fontColor = forbiddenFruit
        whiteSquare5Item4Title.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height)
        whiteSquare5Item4Title.zPosition = 4
        addChild(whiteSquare5Item4Title)
        
        // Menu2 ITEM 2 -------- LABELS
        whiteSquare5MenuItem4Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5MenuItem4Label1.text = "Cost: \(priceOfMenuItem4)"
        whiteSquare5MenuItem4Label1.fontSize = 7.5
        whiteSquare5MenuItem4Label1.fontColor = forbiddenFruit
        whiteSquare5MenuItem4Label1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem4.frame.size.height / 2)
        whiteSquare5MenuItem4Label1.zPosition = 4
        addChild(whiteSquare5MenuItem4Label1)
        
        whiteSquare5MenuItem4Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5MenuItem4Label2.text = "Tech: \(techLevelRequirementMenuItem4)"
        whiteSquare5MenuItem4Label2.fontSize = 7.5
        whiteSquare5MenuItem4Label2.fontColor = forbiddenFruit
        whiteSquare5MenuItem4Label2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem4.frame.size.height / 2 - whiteSquare5MenuItem4Label1.frame.size.height * 1.1)
        whiteSquare5MenuItem4Label2.zPosition = 4
        addChild(whiteSquare5MenuItem4Label2)
        
        item4Label1 = createMenuItemLabels(text: "Pirate Ships", pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem4Label2.frame.size.height * 3))
        addChild(item4Label1)
        
        print("Menu2", whiteSquare5Menu2.position)
        print("Menu2 Label", whiteSquare5Title2Label.position)
        print("MenuItem3", whiteSquare5MenuItem3.position)
        print("MenuItem3Label1", whiteSquare5MenuItem3Label1.position)
        print("MenuItem3Label2", whiteSquare5MenuItem3Label2.position)
        print("MenuItem4", whiteSquare5MenuItem4.position)
        print("MenuItem4Label1", whiteSquare5MenuItem4Label1.position)
        print("MenuItem4Label2", whiteSquare5MenuItem4Label2.position)
    }
    
    func moveWhiteSquare5Menu2(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare5Menu2Action: SKAction
        
        // TITLE
        var whiteSquare5Title2BackdropAction: SKAction
        var whiteSquare5Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare5MenuItem3Action: SKAction
        
        var whiteSquare5Item3TitleAction: SKAction
        var whiteSquare5Item4TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare5MenuItem3Label1Action: SKAction
        var whiteSquare5MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare5MenuItem4Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare5MenuItem4Label1Action: SKAction
        var whiteSquare5MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare5Menu2.position)
            print("Menu2 Label", self.whiteSquare5Title2Label.position)
            print("MenuItem3", self.whiteSquare5MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare5MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare5MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare5MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare5MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare5MenuItem4Label2.position)
        }
        
        whiteSquare5Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare5Menu2.run(whiteSquare5Menu2Action)
        
        whiteSquare5Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare5Title2Backdrop.run(whiteSquare5Title2BackdropAction)
        
        whiteSquare5Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare5Title2Label.run(whiteSquare5Title2LabelAction)
        
        whiteSquare5MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare5MenuItem3.run(whiteSquare5MenuItem3Action)
        
        whiteSquare5Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare5Item3Title.run(whiteSquare5Item3TitleAction)
        
        whiteSquare5MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare5MenuItem3Label1.run(whiteSquare5MenuItem3Label1Action)
        
        whiteSquare5MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare5MenuItem3Label2.run(whiteSquare5MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare5MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare5MenuItem4.run(whiteSquare5MenuItem4Action)
        
        whiteSquare5Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare5Item4Title.run(whiteSquare5Item4TitleAction)
        
        whiteSquare5MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare5MenuItem4Label1.run(whiteSquare5MenuItem4Label1Action)
        
        whiteSquare5MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem4.frame.size.height / 2 - whiteSquare5MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare5MenuItem4Label2.run(SKAction.sequence([whiteSquare5MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem4Label2.frame.size.height * 3))
        
    }
    
    func removeWhiteSquare5Menu2(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare5Menu2Action: SKAction // BACKDROP
        var whiteSquare5Title2BackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare5Title2LabelAction: SKAction // TITLE
        var whiteSquare5MenuItem3Action: SKAction // ITEM 1
        var whiteSquare5Item3TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare5MenuItem3Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare5MenuItem3Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare5MenuItem4Action: SKAction // ITEM 2
        var whiteSquare5Item4TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare5MenuItem4Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare5MenuItem4Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare5Menu2Remove: SKAction // BACKDROP
        var whiteSquare5Title2BackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare5Title2LabelRemove: SKAction // TITLE
        var whiteSquare5MenuItem3Remove: SKAction // ITEM 1
        var whiteSquare5Item3TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare5MenuItem3Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare5MenuItem3Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare5MenuItem4Remove: SKAction // ITEM 2
        var whiteSquare5Item4TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare5MenuItem4Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare5MenuItem4Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare5Menu2Sequence: SKAction // BACKDROP
        var whiteSquare5Title2BackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare5Title2LabelSequence: SKAction // TITLE
        var whiteSquare5MenuItem3Sequence: SKAction // ITEM 1
        var whiteSquare5Item3TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare5MenuItem3Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare5MenuItem3Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare5MenuItem4Sequence: SKAction // ITEM 2
        var whiteSquare5Item4TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare5MenuItem4Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare5MenuItem4Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare5Menu2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5Menu2Remove = SKAction.removeFromParent()
        whiteSquare5Menu2Sequence = SKAction.sequence([whiteSquare5Menu2Action, whiteSquare5Menu2Remove])
        whiteSquare5Menu2.run(whiteSquare5Menu2Sequence)
        
        whiteSquare5Title2BackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5Title2BackdropRemove = SKAction.removeFromParent()
        whiteSquare5Title2BackdropSequence = SKAction.sequence([whiteSquare5Title2BackdropAction, whiteSquare5Title2BackdropRemove])
        whiteSquare5Title2Backdrop.run(whiteSquare5Title2BackdropSequence)
        
        whiteSquare5Title2LabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5Title2LabelRemove = SKAction.removeFromParent()
        whiteSquare5Title2LabelSequence = SKAction.sequence([whiteSquare5Title2LabelAction, whiteSquare5Title2LabelRemove])
        whiteSquare5Title2Label.run(whiteSquare5Title2LabelSequence)
        
        whiteSquare5MenuItem3Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem3Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem3Sequence = SKAction.sequence([whiteSquare5MenuItem3Action, whiteSquare5MenuItem3Remove])
        whiteSquare5MenuItem3.run(whiteSquare5MenuItem3Sequence)
        
        whiteSquare5Item3TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5Item3TitleRemove = SKAction.removeFromParent()
        whiteSquare5Item3TitleSequence = SKAction.sequence([whiteSquare5Item3TitleAction, whiteSquare5Item3TitleRemove])
        whiteSquare5Item3Title.run(whiteSquare5Item3TitleSequence)
        
        whiteSquare5Item4TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5Item4TitleRemove = SKAction.removeFromParent()
        whiteSquare5Item4TitleSequence = SKAction.sequence([whiteSquare5Item4TitleAction, whiteSquare5Item4TitleRemove])
        whiteSquare5Item4Title.run(whiteSquare5Item4TitleSequence)
        
        whiteSquare5MenuItem3Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem3Label1Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem3Label1Sequence = SKAction.sequence([whiteSquare5MenuItem3Label1Action, whiteSquare5MenuItem3Label1Remove])
        whiteSquare5MenuItem3Label1.run(whiteSquare5MenuItem3Label1Sequence)
        
        whiteSquare5MenuItem3Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem3Label2Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem3Label2Sequence = SKAction.sequence([whiteSquare5MenuItem3Label2Action, whiteSquare5MenuItem3Label2Remove])
        whiteSquare5MenuItem3Label2.run(whiteSquare5MenuItem3Label2Sequence)
        
        whiteSquare5MenuItem4Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem4Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem4Sequence = SKAction.sequence([whiteSquare5MenuItem4Action, whiteSquare5MenuItem4Remove])
        whiteSquare5MenuItem4.run(whiteSquare5MenuItem4Sequence)
        
        whiteSquare5MenuItem4Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem4Label1Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem4Label1Sequence = SKAction.sequence([whiteSquare5MenuItem4Label1Action, whiteSquare5MenuItem4Label1Remove])
        whiteSquare5MenuItem4Label1.run(whiteSquare5MenuItem4Label1Sequence)
        
        whiteSquare5MenuItem4Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem4Label2Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem4Label2Sequence = SKAction.sequence([whiteSquare5MenuItem4Label2Action, whiteSquare5MenuItem4Label2Remove])
        whiteSquare5MenuItem4Label2.run(whiteSquare5MenuItem4Label2Sequence)
        
        removeMenuItemLabels(label: item3Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item4Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare5Menu2Right(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare5Menu2Action: SKAction
        
        // TITLE
        var whiteSquare5Title2BackdropAction: SKAction
        var whiteSquare5Title2LabelAction: SKAction
        
        // ITEM 1
        var whiteSquare5MenuItem3Action: SKAction
        var whiteSquare5Item3TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare5MenuItem3Label1Action: SKAction
        var whiteSquare5MenuItem3Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare5MenuItem4Action: SKAction
        var whiteSquare5Item4TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare5MenuItem4Label1Action: SKAction
        var whiteSquare5MenuItem4Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu2", self.whiteSquare5Menu2.position)
            print("MenuItem3", self.whiteSquare5MenuItem3.position)
            print("MenuItem3Label1", self.whiteSquare5MenuItem3Label1.position)
            print("MenuItem3Label2", self.whiteSquare5MenuItem3Label2.position)
            print("MenuItem4", self.whiteSquare5MenuItem4.position)
            print("MenuItem4Label1", self.whiteSquare5MenuItem4Label1.position)
            print("MenuItem4Label2", self.whiteSquare5MenuItem4Label2.position)
        }
            
        whiteSquare5Menu2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare5Menu2.run(whiteSquare5Menu2Action)
        
        whiteSquare5Title2BackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare5Title2Backdrop.run(whiteSquare5Title2BackdropAction)
        
        whiteSquare5Title2LabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare5Title2Label.run(whiteSquare5Title2LabelAction)
        
        whiteSquare5MenuItem3Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height / 3), duration: 0.25)
        whiteSquare5MenuItem3.run(whiteSquare5MenuItem3Action)
        
        whiteSquare5Item3TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare5Item3Title.run(whiteSquare5Item3TitleAction)
        
        whiteSquare5MenuItem3Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2), duration: 0.25)
        whiteSquare5MenuItem3Label1.run(whiteSquare5MenuItem3Label1Action)
        
        whiteSquare5MenuItem3Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem3Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare5MenuItem3Label2.run(whiteSquare5MenuItem3Label2Action)
        
        moveMenuItemLabels(label: item3Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem3Label2.frame.size.height * 3))
        
        whiteSquare5MenuItem4Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem4.frame.size.height / 3), duration: 0.25)
        whiteSquare5MenuItem4.run(whiteSquare5MenuItem4Action)
        
        whiteSquare5Item4TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem3.frame.size.height), duration: 0.25)
        whiteSquare5Item4Title.run(whiteSquare5Item4TitleAction)
        
        whiteSquare5MenuItem4Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem4.frame.size.height / 2), duration: 0.25)
        whiteSquare5MenuItem4Label1.run(whiteSquare5MenuItem4Label1Action)
        
        whiteSquare5MenuItem4Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem4.frame.size.height / 2 - whiteSquare5MenuItem4Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare5MenuItem4Label2.run(SKAction.sequence([whiteSquare5MenuItem4Label2Action, printAction]))
        
        moveMenuItemLabels(label: item4Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 + view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem3.frame.size.height / 2 - whiteSquare5MenuItem4Label2.frame.size.height * 3))
    }
}
