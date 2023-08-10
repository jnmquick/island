//
//  MenuForWhiteSquare4.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class MenuForWhiteSquare4: SKNode {
    
    var whiteSquare4Menu: SKSpriteNode!
    
    var whiteSquare4TitleBackdrop: SKSpriteNode!
    var whiteSquare4TitleLabel: SKLabelNode!
    
    var whiteSquare4MenuItem1: SKSpriteNode!
    var whiteSquare4MenuItem2: SKSpriteNode!
    
    var whiteSquare4Item1Title: SKLabelNode!
    var whiteSquare4Item2Title: SKLabelNode!
    
    var priceOfMenuItem1 = 100
    var techLevelRequirementMenuItem1 = 0
    
    var priceOfMenuItem2 = 100
    var techLevelRequirementMenuItem2 = 0
    
    var whiteSquare4MenuItem1Label1: SKLabelNode!
    var whiteSquare4MenuItem1Label2: SKLabelNode!
    
    var whiteSquare4MenuItem2Label1: SKLabelNode!
    var whiteSquare4MenuItem2Label2: SKLabelNode!
    
    var item1Label1: SKLabelNode!
    var item2Label1: SKLabelNode!
    var item2Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- MENU
    
    func createMenuForWhiteSquare4(view: SKView) {
        // MENU BACKDROP
        whiteSquare4Menu = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare4Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare4Menu.setScale(0.42)
        whiteSquare4Menu.zPosition = 3
//        whiteSquare4Menu.fillColor = eerieBlack
        whiteSquare4Menu.name = "whiteSquare4Menu"
        addChild(whiteSquare4Menu)
        
        // MENU TITLE
        whiteSquare4TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare4TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare4TitleBackdrop.setScale(0.42)
        whiteSquare4TitleBackdrop.zPosition = 3
        addChild(whiteSquare4TitleBackdrop)
        
        whiteSquare4TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4TitleLabel.text = "Resources"
        whiteSquare4TitleLabel.fontSize = 18
        whiteSquare4TitleLabel.fontColor = forbiddenFruit
        whiteSquare4TitleLabel.position = CGPoint(x: whiteSquare4TitleBackdrop.frame.midX, y: whiteSquare4TitleBackdrop.frame.maxY - whiteSquare4TitleLabel.frame.size.height)
        whiteSquare4TitleLabel.zPosition = 4
        addChild(whiteSquare4TitleLabel)
        
        // MENU ITEM 1
        whiteSquare4MenuItem1 = SKSpriteNode(imageNamed: "Location 4")
        whiteSquare4MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: whiteSquare4Menu.position.y)
        whiteSquare4MenuItem1.zPosition = 4
        whiteSquare4MenuItem1.setScale(0.26)
//        whiteSquare4MenuItem1.fillColor = ghostWhite
//        whiteSquare4MenuItem1.strokeColor = SKColor.clear
        whiteSquare4MenuItem1.name = "whiteSquare4MenuItem1"
        addChild(whiteSquare4MenuItem1)
        
        whiteSquare4Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4Item1Title.text = "Tavern"
        whiteSquare4Item1Title.fontSize = 9
        whiteSquare4Item1Title.fontColor = forbiddenFruit
        whiteSquare4Item1Title.position = CGPoint(x: whiteSquare4MenuItem1.frame.midX, y: whiteSquare4MenuItem1.frame.maxY + whiteSquare4Item1Title.frame.size.height)
        whiteSquare4Item1Title.zPosition = 4
        addChild(whiteSquare4Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        whiteSquare4MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        whiteSquare4MenuItem1Label1.fontSize = 7.5
        whiteSquare4MenuItem1Label1.fontColor = forbiddenFruit
        whiteSquare4MenuItem1Label1.position = CGPoint(x: whiteSquare4MenuItem1.frame.midX, y: whiteSquare4MenuItem1.frame.midY - whiteSquare4MenuItem1.frame.size.height)
        whiteSquare4MenuItem1Label1.zPosition = 4
        addChild(whiteSquare4MenuItem1Label1)
        
        whiteSquare4MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        whiteSquare4MenuItem1Label2.fontSize = 7.5
        whiteSquare4MenuItem1Label2.fontColor = forbiddenFruit
        whiteSquare4MenuItem1Label2.position = CGPoint(x: whiteSquare4MenuItem1.frame.midX, y: whiteSquare4MenuItem1.frame.midY - whiteSquare4MenuItem1.frame.size.height - whiteSquare4MenuItem1Label2.frame.size.height)
        whiteSquare4MenuItem1Label2.zPosition = 4
        addChild(whiteSquare4MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: whiteSquare4MenuItem1.frame.midX, y: whiteSquare4MenuItem1.frame.midY - whiteSquare4MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        // MENU ITEM 2
        whiteSquare4MenuItem2 = SKSpriteNode(imageNamed: "Location 1")
        whiteSquare4MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: whiteSquare4Menu.position.y)
        whiteSquare4MenuItem2.zPosition = 4
        whiteSquare4MenuItem2.setScale(0.26)
//        whiteSquare4MenuItem2.fillColor = grape
//        whiteSquare4MenuItem2.strokeColor = SKColor.clear
        whiteSquare4MenuItem2.name = "whiteSquare4MenuItem2"
        addChild(whiteSquare4MenuItem2)
        
        whiteSquare4Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4Item2Title.text = "Reactor"
        whiteSquare4Item2Title.fontSize = 9
        whiteSquare4Item2Title.fontColor = forbiddenFruit
        whiteSquare4Item2Title.position = CGPoint(x: whiteSquare4MenuItem2.frame.midX, y: whiteSquare4MenuItem2.frame.maxY + whiteSquare4Item2Title.frame.size.height)
        whiteSquare4Item2Title.zPosition = 4
        addChild(whiteSquare4Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        whiteSquare4MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        whiteSquare4MenuItem2Label1.fontSize = 7.5
        whiteSquare4MenuItem2Label1.fontColor = forbiddenFruit
        whiteSquare4MenuItem2Label1.position = CGPoint(x: whiteSquare4MenuItem2.frame.midX, y: whiteSquare4MenuItem2.frame.midY - whiteSquare4MenuItem2.frame.size.height)
        whiteSquare4MenuItem2Label1.zPosition = 4
        addChild(whiteSquare4MenuItem2Label1)
        
        whiteSquare4MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare4MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        whiteSquare4MenuItem2Label2.fontSize = 7.5
        whiteSquare4MenuItem2Label2.fontColor = forbiddenFruit
        whiteSquare4MenuItem2Label2.position = CGPoint(x: whiteSquare4MenuItem2.frame.midX, y: whiteSquare4MenuItem2.frame.midY - whiteSquare4MenuItem2.frame.size.height - whiteSquare4MenuItem2Label2.frame.size.height)
        whiteSquare4MenuItem2Label2.zPosition = 4
        addChild(whiteSquare4MenuItem2Label2)
        
        item2Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: whiteSquare4MenuItem2.frame.midX, y: whiteSquare4MenuItem1.frame.midY - whiteSquare4MenuItem2.frame.size.height * 2))
        addChild(item2Label1)
        
//        item2Label2 = createMenuItemLabels(text: "Level", pos: CGPoint(x: whiteSquare4MenuItem2.frame.midX, y: whiteSquare4MenuItem1.frame.midY - whiteSquare4MenuItem2.frame.size.height * 2 + item2Label1.frame.size.height * 1.1))
//        addChild(item2Label2)
        
        print("Menu", whiteSquare4Menu.position)
        print("Menu Label", whiteSquare4TitleLabel.position)
        print("MenuItem1", whiteSquare4MenuItem1.position)
        print("MenuItem1Label1", whiteSquare4MenuItem1Label1.position)
        print("MenuItem1Label2", whiteSquare4MenuItem1Label2.position)
        print("MenuItem2", whiteSquare4MenuItem2.position)
        print("MenuItem2Label1", whiteSquare4MenuItem2Label1.position)
        print("MenuItem2Label2", whiteSquare4MenuItem2Label2.position)
    }
    
    func moveWhiteSquare4Menu(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare4MenuAction: SKAction
        
        // TITLE
        var whiteSquare4TitleBackdropAction: SKAction
        var whiteSquare4TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare4MenuItem1Action: SKAction
        
        var whiteSquare4Item1TitleAction: SKAction
        var whiteSquare4Item2TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare4MenuItem1Label1Action: SKAction
        var whiteSquare4MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare4MenuItem2Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare4MenuItem2Label1Action: SKAction
        var whiteSquare4MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare4Menu.position)
            print("Menu Label", self.whiteSquare4TitleLabel.position)
            print("MenuItem1", self.whiteSquare4MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare4MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare4MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare4MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare4MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare4MenuItem2Label2.position)
        }
        
        whiteSquare4MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare4Menu.run(whiteSquare4MenuAction)
        
        whiteSquare4TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare4TitleBackdrop.run(whiteSquare4TitleBackdropAction)
        
        whiteSquare4TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare4TitleLabel.run(whiteSquare4TitleLabelAction)
        
        whiteSquare4MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare4MenuItem1.run(whiteSquare4MenuItem1Action)
        
        whiteSquare4Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare4Item1Title.run(whiteSquare4Item1TitleAction)
        
        whiteSquare4MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare4MenuItem1Label1.run(whiteSquare4MenuItem1Label1Action)
        
        whiteSquare4MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem1.frame.size.height / 2 - whiteSquare4MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare4MenuItem1Label2.run(whiteSquare4MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem1.frame.size.height / 2 - whiteSquare4MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare4MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare4MenuItem2.run(whiteSquare4MenuItem2Action)
        
        whiteSquare4Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare4Item2Title.run(whiteSquare4Item2TitleAction)
        
        whiteSquare4MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare4MenuItem2Label1.run(whiteSquare4MenuItem2Label1Action)
        
        whiteSquare4MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem2.frame.size.height / 2 - whiteSquare4MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare4MenuItem2Label2.run(SKAction.sequence([whiteSquare4MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem1.frame.size.height / 2 - whiteSquare4MenuItem2Label2.frame.size.height * 3))
        
//        moveMenuItemLabels(label: item2Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem2Label1.frame.size.height * 2.5 - whiteSquare4MenuItem2Label2.frame.size.height - item2Label1.frame.size.height * 1.1))
    }
    
    func removeWhiteSquare4Menu(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare4MenuAction: SKAction // BACKDROP
        var whiteSquare4TitleBackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare4TitleLabelAction: SKAction // TITLE
        var whiteSquare4MenuItem1Action: SKAction // ITEM 1
        var whiteSquare4Item1TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare4MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare4MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare4MenuItem2Action: SKAction // ITEM 2
        var whiteSquare4Item2TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare4MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare4MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare4MenuRemove: SKAction // BACKDROP
        var whiteSquare4TitleBackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare4TitleLabelRemove: SKAction // TITLE
        var whiteSquare4MenuItem1Remove: SKAction // ITEM 1
        var whiteSquare4Item1TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare4MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare4MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare4MenuItem2Remove: SKAction // ITEM 2
        var whiteSquare4Item2TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare4MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare4MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare4MenuSequence: SKAction // BACKDROP
        var whiteSquare4TitleBackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare4TitleLabelSequence: SKAction // TITLE
        var whiteSquare4MenuItem1Sequence: SKAction // ITEM 1
        var whiteSquare4Item1TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare4MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare4MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare4MenuItem2Sequence: SKAction // ITEM 2
        var whiteSquare4Item2TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare4MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare4MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare4MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuRemove = SKAction.removeFromParent()
        whiteSquare4MenuSequence = SKAction.sequence([whiteSquare4MenuAction, whiteSquare4MenuRemove])
        whiteSquare4Menu.run(whiteSquare4MenuSequence)
        
        whiteSquare4TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4TitleBackdropRemove = SKAction.removeFromParent()
        whiteSquare4TitleBackdropSequence = SKAction.sequence([whiteSquare4TitleBackdropAction, whiteSquare4TitleBackdropRemove])
        whiteSquare4TitleBackdrop.run(whiteSquare4TitleBackdropSequence)
        
        whiteSquare4TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4TitleLabelRemove = SKAction.removeFromParent()
        whiteSquare4TitleLabelSequence = SKAction.sequence([whiteSquare4TitleLabelAction, whiteSquare4TitleLabelRemove])
        whiteSquare4TitleLabel.run(whiteSquare4TitleLabelSequence)
        
        whiteSquare4MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem1Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem1Sequence = SKAction.sequence([whiteSquare4MenuItem1Action, whiteSquare4MenuItem1Remove])
        whiteSquare4MenuItem1.run(whiteSquare4MenuItem1Sequence)
        
        whiteSquare4Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4Item1TitleRemove = SKAction.removeFromParent()
        whiteSquare4Item1TitleSequence = SKAction.sequence([whiteSquare4Item1TitleAction, whiteSquare4Item1TitleRemove])
        whiteSquare4Item1Title.run(whiteSquare4Item1TitleSequence)
        
        whiteSquare4Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4Item2TitleRemove = SKAction.removeFromParent()
        whiteSquare4Item2TitleSequence = SKAction.sequence([whiteSquare4Item2TitleAction, whiteSquare4Item2TitleRemove])
        whiteSquare4Item2Title.run(whiteSquare4Item2TitleSequence)
        
        whiteSquare4MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem1Label1Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem1Label1Sequence = SKAction.sequence([whiteSquare4MenuItem1Label1Action, whiteSquare4MenuItem1Label1Remove])
        whiteSquare4MenuItem1Label1.run(whiteSquare4MenuItem1Label1Sequence)
        
        whiteSquare4MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem1Label2Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem1Label2Sequence = SKAction.sequence([whiteSquare4MenuItem1Label2Action, whiteSquare4MenuItem1Label2Remove])
        whiteSquare4MenuItem1Label2.run(whiteSquare4MenuItem1Label2Sequence)
        
        whiteSquare4MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem2Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem2Sequence = SKAction.sequence([whiteSquare4MenuItem2Action, whiteSquare4MenuItem2Remove])
        whiteSquare4MenuItem2.run(whiteSquare4MenuItem2Sequence)
        
        whiteSquare4MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem2Label1Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem2Label1Sequence = SKAction.sequence([whiteSquare4MenuItem2Label1Action, whiteSquare4MenuItem2Label1Remove])
        whiteSquare4MenuItem2Label1.run(whiteSquare4MenuItem2Label1Sequence)
        
        whiteSquare4MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare4MenuItem2Label2Remove = SKAction.removeFromParent()
        whiteSquare4MenuItem2Label2Sequence = SKAction.sequence([whiteSquare4MenuItem2Label2Action, whiteSquare4MenuItem2Label2Remove])
        whiteSquare4MenuItem2Label2.run(whiteSquare4MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare4MenuLeft(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare4MenuAction: SKAction
        
        // TITLE
        var whiteSquare4TitleBackdropAction: SKAction
        var whiteSquare4TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare4MenuItem1Action: SKAction
        var whiteSquare4Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare4MenuItem1Label1Action: SKAction
        var whiteSquare4MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare4MenuItem2Action: SKAction
        var whiteSquare4Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare4MenuItem2Label1Action: SKAction
        var whiteSquare4MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare4Menu.position)
            print("MenuItem1", self.whiteSquare4MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare4MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare4MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare4MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare4MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare4MenuItem2Label2.position)
        }
            
        whiteSquare4MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare4Menu.run(whiteSquare4MenuAction)
        
        whiteSquare4TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare4TitleBackdrop.run(whiteSquare4TitleBackdropAction)
        
        whiteSquare4TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare4TitleLabel.run(whiteSquare4TitleLabelAction)
        
        whiteSquare4MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare4MenuItem1.run(whiteSquare4MenuItem1Action)
        
        whiteSquare4Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare4Item1Title.run(whiteSquare4Item1TitleAction)
        
        whiteSquare4MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare4MenuItem1Label1.run(whiteSquare4MenuItem1Label1Action)
        
        whiteSquare4MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem1.frame.size.height / 2 - whiteSquare4MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare4MenuItem1Label2.run(whiteSquare4MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem1.frame.size.height / 2 - whiteSquare4MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare4MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare4MenuItem2.run(whiteSquare4MenuItem2Action)
        
        whiteSquare4Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare4MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare4Item2Title.run(whiteSquare4Item2TitleAction)
        
        whiteSquare4MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare4MenuItem2Label1.run(whiteSquare4MenuItem2Label1Action)
        
        whiteSquare4MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem2.frame.size.height / 2 - whiteSquare4MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare4MenuItem2Label2.run(SKAction.sequence([whiteSquare4MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare4MenuItem1.frame.size.height / 2 - whiteSquare4MenuItem2Label2.frame.size.height * 3))
    }
}
