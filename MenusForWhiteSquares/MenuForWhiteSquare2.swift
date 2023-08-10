//
//  MenuForWhiteSquare2.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class MenuForWhiteSquare2: SKNode {
    
    var whiteSquare2Menu: SKSpriteNode!
    
    var whiteSquare2TitleBackdrop: SKSpriteNode!
    var whiteSquare2TitleLabel: SKLabelNode!
    
    var whiteSquare2MenuItem1: SKSpriteNode!
    var whiteSquare2MenuItem2: SKSpriteNode!
    
    var whiteSquare2Item1Title: SKLabelNode!
    var whiteSquare2Item2Title: SKLabelNode!
    
    var priceOfMenuItem1 = 100
    var techLevelRequirementMenuItem1 = 0
    
    var priceOfMenuItem2 = 100
    var techLevelRequirementMenuItem2 = 0
    
    var whiteSquare2MenuItem1Label1: SKLabelNode!
    var whiteSquare2MenuItem1Label2: SKLabelNode!
    
    var whiteSquare2MenuItem2Label1: SKLabelNode!
    var whiteSquare2MenuItem2Label2: SKLabelNode!
    
    var item1Label1: SKLabelNode!
    var item2Label1: SKLabelNode!
    var item2Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- MENU
    
    func createMenuForWhiteSquare2(view: SKView) {
        // MENU BACKDROP
        whiteSquare2Menu = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare2Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare2Menu.setScale(0.42)
        whiteSquare2Menu.zPosition = 3
        whiteSquare2Menu.name = "whiteSquare2Menu"
        addChild(whiteSquare2Menu)
        
        // MENU TITLE
        whiteSquare2TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare2TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare2TitleBackdrop.setScale(0.42)
        whiteSquare2TitleBackdrop.zPosition = 3
        addChild(whiteSquare2TitleBackdrop)
        
        whiteSquare2TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2TitleLabel.text = "Resources"
        whiteSquare2TitleLabel.fontSize = 18
        whiteSquare2TitleLabel.fontColor = forbiddenFruit
        whiteSquare2TitleLabel.position = CGPoint(x: whiteSquare2TitleBackdrop.frame.midX, y: whiteSquare2TitleBackdrop.frame.maxY - whiteSquare2TitleLabel.frame.size.height)
        whiteSquare2TitleLabel.zPosition = 4
        addChild(whiteSquare2TitleLabel)
        
        // MENU ITEM 1
        whiteSquare2MenuItem1 = SKSpriteNode(imageNamed: "Location 4")
        whiteSquare2MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: whiteSquare2Menu.position.y)
        whiteSquare2MenuItem1.zPosition = 4
        whiteSquare2MenuItem1.setScale(0.26)
        whiteSquare2MenuItem1.name = "whiteSquare2MenuItem1"
        addChild(whiteSquare2MenuItem1)
        
        whiteSquare2Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2Item1Title.text = "Tavern"
        whiteSquare2Item1Title.fontSize = 9
        whiteSquare2Item1Title.fontColor = forbiddenFruit
        whiteSquare2Item1Title.position = CGPoint(x: whiteSquare2MenuItem1.frame.midX, y: whiteSquare2MenuItem1.frame.maxY + whiteSquare2Item1Title.frame.size.height)
        whiteSquare2Item1Title.zPosition = 4
        addChild(whiteSquare2Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        whiteSquare2MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        whiteSquare2MenuItem1Label1.fontSize = 7.5
        whiteSquare2MenuItem1Label1.fontColor = forbiddenFruit
        whiteSquare2MenuItem1Label1.position = CGPoint(x: whiteSquare2MenuItem1.frame.midX, y: whiteSquare2MenuItem1.frame.midY - whiteSquare2MenuItem1.frame.size.height)
        whiteSquare2MenuItem1Label1.zPosition = 4
        addChild(whiteSquare2MenuItem1Label1)
        
        whiteSquare2MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        whiteSquare2MenuItem1Label2.fontSize = 7.5
        whiteSquare2MenuItem1Label2.fontColor = forbiddenFruit
        whiteSquare2MenuItem1Label2.position = CGPoint(x: whiteSquare2MenuItem1.frame.midX, y: whiteSquare2MenuItem1.frame.midY - whiteSquare2MenuItem1.frame.size.height - whiteSquare2MenuItem1Label2.frame.size.height)
        whiteSquare2MenuItem1Label2.zPosition = 4
        addChild(whiteSquare2MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: whiteSquare2MenuItem1.frame.midX, y: whiteSquare2MenuItem1.frame.midY - whiteSquare2MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        // MENU ITEM 2
        whiteSquare2MenuItem2 = SKSpriteNode(imageNamed: "Location 1")
        whiteSquare2MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: whiteSquare2Menu.position.y)
        whiteSquare2MenuItem2.zPosition = 4
        whiteSquare2MenuItem2.setScale(0.26)
//        whiteSquare2MenuItem2.fillColor = grape
//        whiteSquare2MenuItem2.strokeColor = SKColor.clear
        whiteSquare2MenuItem2.name = "whiteSquare2MenuItem2"
        addChild(whiteSquare2MenuItem2)
        
        whiteSquare2Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2Item2Title.text = "Reactor"
        whiteSquare2Item2Title.fontSize = 9
        whiteSquare2Item2Title.fontColor = forbiddenFruit
        whiteSquare2Item2Title.position = CGPoint(x: whiteSquare2MenuItem2.frame.midX, y: whiteSquare2MenuItem2.frame.maxY + whiteSquare2Item2Title.frame.size.height)
        whiteSquare2Item2Title.zPosition = 4
        addChild(whiteSquare2Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        whiteSquare2MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        whiteSquare2MenuItem2Label1.fontSize = 7.5
        whiteSquare2MenuItem2Label1.fontColor = forbiddenFruit
        whiteSquare2MenuItem2Label1.position = CGPoint(x: whiteSquare2MenuItem2.frame.midX, y: whiteSquare2MenuItem2.frame.midY - whiteSquare2MenuItem2.frame.size.height)
        whiteSquare2MenuItem2Label1.zPosition = 4
        addChild(whiteSquare2MenuItem2Label1)
        
        whiteSquare2MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare2MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        whiteSquare2MenuItem2Label2.fontSize = 7.5
        whiteSquare2MenuItem2Label2.fontColor = forbiddenFruit
        whiteSquare2MenuItem2Label2.position = CGPoint(x: whiteSquare2MenuItem2.frame.midX, y: whiteSquare2MenuItem2.frame.midY - whiteSquare2MenuItem2.frame.size.height - whiteSquare2MenuItem2Label2.frame.size.height)
        whiteSquare2MenuItem2Label2.zPosition = 4
        addChild(whiteSquare2MenuItem2Label2)
        
        item2Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: whiteSquare2MenuItem2.frame.midX, y: whiteSquare2MenuItem1.frame.midY - whiteSquare2MenuItem2.frame.size.height * 2))
        addChild(item2Label1)
        
//        item2Label2 = createMenuItemLabels(text: "Level", pos: CGPoint(x: whiteSquare2MenuItem2.frame.midX, y: whiteSquare2MenuItem1.frame.midY - whiteSquare2MenuItem2.frame.size.height * 2 + item2Label1.frame.size.height * 1.1))
//        addChild(item2Label2)
        
        print("Menu", whiteSquare2Menu.position)
        print("Menu Label", whiteSquare2TitleLabel.position)
        print("MenuItem1", whiteSquare2MenuItem1.position)
        print("MenuItem1Label1", whiteSquare2MenuItem1Label1.position)
        print("MenuItem1Label2", whiteSquare2MenuItem1Label2.position)
        print("MenuItem2", whiteSquare2MenuItem2.position)
        print("MenuItem2Label1", whiteSquare2MenuItem2Label1.position)
        print("MenuItem2Label2", whiteSquare2MenuItem2Label2.position)
    }
    
    func moveWhiteSquare2Menu(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare2MenuAction: SKAction
        
        // TITLE
        var whiteSquare2TitleBackdropAction: SKAction
        var whiteSquare2TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare2MenuItem1Action: SKAction
        
        var whiteSquare2Item1TitleAction: SKAction
        var whiteSquare2Item2TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare2MenuItem1Label1Action: SKAction
        var whiteSquare2MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare2MenuItem2Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare2MenuItem2Label1Action: SKAction
        var whiteSquare2MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare2Menu.position)
            print("Menu Label", self.whiteSquare2TitleLabel.position)
            print("MenuItem1", self.whiteSquare2MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare2MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare2MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare2MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare2MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare2MenuItem2Label2.position)
        }
        
        whiteSquare2MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare2Menu.run(whiteSquare2MenuAction)
        
        whiteSquare2TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare2TitleBackdrop.run(whiteSquare2TitleBackdropAction)
        
        whiteSquare2TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare2TitleLabel.run(whiteSquare2TitleLabelAction)
        
        whiteSquare2MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare2MenuItem1.run(whiteSquare2MenuItem1Action)
        
        whiteSquare2Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare2Item1Title.run(whiteSquare2Item1TitleAction)
        
        whiteSquare2MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare2MenuItem1Label1.run(whiteSquare2MenuItem1Label1Action)
        
        whiteSquare2MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem1.frame.size.height / 2 - whiteSquare2MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare2MenuItem1Label2.run(whiteSquare2MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem1.frame.size.height / 2 - whiteSquare2MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare2MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare2MenuItem2.run(whiteSquare2MenuItem2Action)
        
        whiteSquare2Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare2Item2Title.run(whiteSquare2Item2TitleAction)
        
        whiteSquare2MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare2MenuItem2Label1.run(whiteSquare2MenuItem2Label1Action)
        
        whiteSquare2MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem2.frame.size.height / 2 - whiteSquare2MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare2MenuItem2Label2.run(SKAction.sequence([whiteSquare2MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem1.frame.size.height / 2 - whiteSquare2MenuItem2Label2.frame.size.height * 3))
        
//        moveMenuItemLabels(label: item2Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem2Label1.frame.size.height * 2.5 - whiteSquare2MenuItem2Label2.frame.size.height - item2Label1.frame.size.height * 1.1))
    }
    
    func removeWhiteSquare2Menu(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare2MenuAction: SKAction // BACKDROP
        var whiteSquare2TitleBackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare2TitleLabelAction: SKAction // TITLE
        var whiteSquare2MenuItem1Action: SKAction // ITEM 1
        var whiteSquare2Item1TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare2MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare2MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare2MenuItem2Action: SKAction // ITEM 2
        var whiteSquare2Item2TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare2MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare2MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare2MenuRemove: SKAction // BACKDROP
        var whiteSquare2TitleBackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare2TitleLabelRemove: SKAction // TITLE
        var whiteSquare2MenuItem1Remove: SKAction // ITEM 1
        var whiteSquare2Item1TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare2MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare2MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare2MenuItem2Remove: SKAction // ITEM 2
        var whiteSquare2Item2TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare2MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare2MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare2MenuSequence: SKAction // BACKDROP
        var whiteSquare2TitleBackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare2TitleLabelSequence: SKAction // TITLE
        var whiteSquare2MenuItem1Sequence: SKAction // ITEM 1
        var whiteSquare2Item1TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare2MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare2MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare2MenuItem2Sequence: SKAction // ITEM 2
        var whiteSquare2Item2TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare2MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare2MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare2MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuRemove = SKAction.removeFromParent()
        whiteSquare2MenuSequence = SKAction.sequence([whiteSquare2MenuAction, whiteSquare2MenuRemove])
        whiteSquare2Menu.run(whiteSquare2MenuSequence)
        
        whiteSquare2TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2TitleBackdropRemove = SKAction.removeFromParent()
        whiteSquare2TitleBackdropSequence = SKAction.sequence([whiteSquare2TitleBackdropAction, whiteSquare2TitleBackdropRemove])
        whiteSquare2TitleBackdrop.run(whiteSquare2TitleBackdropSequence)
        
        whiteSquare2TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2TitleLabelRemove = SKAction.removeFromParent()
        whiteSquare2TitleLabelSequence = SKAction.sequence([whiteSquare2TitleLabelAction, whiteSquare2TitleLabelRemove])
        whiteSquare2TitleLabel.run(whiteSquare2TitleLabelSequence)
        
        whiteSquare2MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem1Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem1Sequence = SKAction.sequence([whiteSquare2MenuItem1Action, whiteSquare2MenuItem1Remove])
        whiteSquare2MenuItem1.run(whiteSquare2MenuItem1Sequence)
        
        whiteSquare2Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2Item1TitleRemove = SKAction.removeFromParent()
        whiteSquare2Item1TitleSequence = SKAction.sequence([whiteSquare2Item1TitleAction, whiteSquare2Item1TitleRemove])
        whiteSquare2Item1Title.run(whiteSquare2Item1TitleSequence)
        
        whiteSquare2Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2Item2TitleRemove = SKAction.removeFromParent()
        whiteSquare2Item2TitleSequence = SKAction.sequence([whiteSquare2Item2TitleAction, whiteSquare2Item2TitleRemove])
        whiteSquare2Item2Title.run(whiteSquare2Item2TitleSequence)
        
        whiteSquare2MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem1Label1Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem1Label1Sequence = SKAction.sequence([whiteSquare2MenuItem1Label1Action, whiteSquare2MenuItem1Label1Remove])
        whiteSquare2MenuItem1Label1.run(whiteSquare2MenuItem1Label1Sequence)
        
        whiteSquare2MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem1Label2Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem1Label2Sequence = SKAction.sequence([whiteSquare2MenuItem1Label2Action, whiteSquare2MenuItem1Label2Remove])
        whiteSquare2MenuItem1Label2.run(whiteSquare2MenuItem1Label2Sequence)
        
        whiteSquare2MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem2Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem2Sequence = SKAction.sequence([whiteSquare2MenuItem2Action, whiteSquare2MenuItem2Remove])
        whiteSquare2MenuItem2.run(whiteSquare2MenuItem2Sequence)
        
        whiteSquare2MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem2Label1Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem2Label1Sequence = SKAction.sequence([whiteSquare2MenuItem2Label1Action, whiteSquare2MenuItem2Label1Remove])
        whiteSquare2MenuItem2Label1.run(whiteSquare2MenuItem2Label1Sequence)
        
        whiteSquare2MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare2MenuItem2Label2Remove = SKAction.removeFromParent()
        whiteSquare2MenuItem2Label2Sequence = SKAction.sequence([whiteSquare2MenuItem2Label2Action, whiteSquare2MenuItem2Label2Remove])
        whiteSquare2MenuItem2Label2.run(whiteSquare2MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare2MenuLeft(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare2MenuAction: SKAction
        
        // TITLE
        var whiteSquare2TitleBackdropAction: SKAction
        var whiteSquare2TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare2MenuItem1Action: SKAction
        var whiteSquare2Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare2MenuItem1Label1Action: SKAction
        var whiteSquare2MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare2MenuItem2Action: SKAction
        var whiteSquare2Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare2MenuItem2Label1Action: SKAction
        var whiteSquare2MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare2Menu.position)
            print("MenuItem1", self.whiteSquare2MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare2MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare2MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare2MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare2MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare2MenuItem2Label2.position)
        }
            
        whiteSquare2MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare2Menu.run(whiteSquare2MenuAction)
        
        whiteSquare2TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare2TitleBackdrop.run(whiteSquare2TitleBackdropAction)
        
        whiteSquare2TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare2TitleLabel.run(whiteSquare2TitleLabelAction)
        
        whiteSquare2MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare2MenuItem1.run(whiteSquare2MenuItem1Action)
        
        whiteSquare2Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare2Item1Title.run(whiteSquare2Item1TitleAction)
        
        whiteSquare2MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare2MenuItem1Label1.run(whiteSquare2MenuItem1Label1Action)
        
        whiteSquare2MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem1.frame.size.height / 2 - whiteSquare2MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare2MenuItem1Label2.run(whiteSquare2MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem1.frame.size.height / 2 - whiteSquare2MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare2MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare2MenuItem2.run(whiteSquare2MenuItem2Action)
        
        whiteSquare2Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare2MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare2Item2Title.run(whiteSquare2Item2TitleAction)
        
        whiteSquare2MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare2MenuItem2Label1.run(whiteSquare2MenuItem2Label1Action)
        
        whiteSquare2MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem2.frame.size.height / 2 - whiteSquare2MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare2MenuItem2Label2.run(SKAction.sequence([whiteSquare2MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare2MenuItem1.frame.size.height / 2 - whiteSquare2MenuItem2Label2.frame.size.height * 3))
    }
}
