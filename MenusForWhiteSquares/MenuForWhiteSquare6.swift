//
//  MenuForWhiteSquare6.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class MenuForWhiteSquare6: SKNode {
    
    var whiteSquare6Menu: SKSpriteNode!
    
    var whiteSquare6TitleBackdrop: SKSpriteNode!
    var whiteSquare6TitleLabel: SKLabelNode!
    
    var whiteSquare6MenuItem1: SKSpriteNode!
    var whiteSquare6MenuItem2: SKSpriteNode!
    
    var whiteSquare6Item1Title: SKLabelNode!
    var whiteSquare6Item2Title: SKLabelNode!
    
    var priceOfMenuItem1 = 100
    var techLevelRequirementMenuItem1 = 0
    
    var priceOfMenuItem2 = 100
    var techLevelRequirementMenuItem2 = 0
    
    var whiteSquare6MenuItem1Label1: SKLabelNode!
    var whiteSquare6MenuItem1Label2: SKLabelNode!
    
    var whiteSquare6MenuItem2Label1: SKLabelNode!
    var whiteSquare6MenuItem2Label2: SKLabelNode!
    
    var item1Label1: SKLabelNode!
    var item2Label1: SKLabelNode!
    var item2Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- MENU
    
    func createMenuForWhiteSquare6(view: SKView) {
        // MENU BACKDROP
        whiteSquare6Menu = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare6Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare6Menu.setScale(0.42)
        whiteSquare6Menu.zPosition = 3
//        whiteSquare6Menu.fillColor = eerieBlack
        whiteSquare6Menu.name = "whiteSquare6Menu"
        addChild(whiteSquare6Menu)
        
        // MENU TITLE
        whiteSquare6TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare6TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare6TitleBackdrop.setScale(0.42)
        whiteSquare6TitleBackdrop.zPosition = 3
        addChild(whiteSquare6TitleBackdrop)
        
        whiteSquare6TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6TitleLabel.text = "Resources"
        whiteSquare6TitleLabel.fontSize = 18
        whiteSquare6TitleLabel.fontColor = forbiddenFruit
        whiteSquare6TitleLabel.position = CGPoint(x: whiteSquare6TitleBackdrop.frame.midX, y: whiteSquare6TitleBackdrop.frame.maxY - whiteSquare6TitleLabel.frame.size.height)
        whiteSquare6TitleLabel.zPosition = 4
        addChild(whiteSquare6TitleLabel)
        
        // MENU ITEM 1
        whiteSquare6MenuItem1 = SKSpriteNode(imageNamed: "Location 4")
        whiteSquare6MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: whiteSquare6Menu.position.y)
        whiteSquare6MenuItem1.zPosition = 4
        whiteSquare6MenuItem1.setScale(0.26)
//        whiteSquare6MenuItem1.fillColor = ghostWhite
//        whiteSquare6MenuItem1.strokeColor = SKColor.clear
        whiteSquare6MenuItem1.name = "whiteSquare6MenuItem1"
        addChild(whiteSquare6MenuItem1)
        
        whiteSquare6Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6Item1Title.text = "Tavern"
        whiteSquare6Item1Title.fontSize = 9
        whiteSquare6Item1Title.fontColor = forbiddenFruit
        whiteSquare6Item1Title.position = CGPoint(x: whiteSquare6MenuItem1.frame.midX, y: whiteSquare6MenuItem1.frame.maxY + whiteSquare6Item1Title.frame.size.height)
        whiteSquare6Item1Title.zPosition = 4
        addChild(whiteSquare6Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        whiteSquare6MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        whiteSquare6MenuItem1Label1.fontSize = 7.5
        whiteSquare6MenuItem1Label1.fontColor = forbiddenFruit
        whiteSquare6MenuItem1Label1.position = CGPoint(x: whiteSquare6MenuItem1.frame.midX, y: whiteSquare6MenuItem1.frame.midY - whiteSquare6MenuItem1.frame.size.height)
        whiteSquare6MenuItem1Label1.zPosition = 4
        addChild(whiteSquare6MenuItem1Label1)
        
        whiteSquare6MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        whiteSquare6MenuItem1Label2.fontSize = 7.5
        whiteSquare6MenuItem1Label2.fontColor = forbiddenFruit
        whiteSquare6MenuItem1Label2.position = CGPoint(x: whiteSquare6MenuItem1.frame.midX, y: whiteSquare6MenuItem1.frame.midY - whiteSquare6MenuItem1.frame.size.height - whiteSquare6MenuItem1Label2.frame.size.height)
        whiteSquare6MenuItem1Label2.zPosition = 4
        addChild(whiteSquare6MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: whiteSquare6MenuItem1.frame.midX, y: whiteSquare6MenuItem1.frame.midY - whiteSquare6MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        // MENU ITEM 2
        whiteSquare6MenuItem2 = SKSpriteNode(imageNamed: "Location 1")
        whiteSquare6MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: whiteSquare6Menu.position.y)
        whiteSquare6MenuItem2.zPosition = 4
        whiteSquare6MenuItem2.setScale(0.26)
//        whiteSquare6MenuItem2.fillColor = grape
//        whiteSquare6MenuItem2.strokeColor = SKColor.clear
        whiteSquare6MenuItem2.name = "whiteSquare6MenuItem2"
        addChild(whiteSquare6MenuItem2)
        
        whiteSquare6Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6Item2Title.text = "Reactor"
        whiteSquare6Item2Title.fontSize = 9
        whiteSquare6Item2Title.fontColor = forbiddenFruit
        whiteSquare6Item2Title.position = CGPoint(x: whiteSquare6MenuItem2.frame.midX, y: whiteSquare6MenuItem2.frame.maxY + whiteSquare6Item2Title.frame.size.height)
        whiteSquare6Item2Title.zPosition = 4
        addChild(whiteSquare6Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        whiteSquare6MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        whiteSquare6MenuItem2Label1.fontSize = 7.5
        whiteSquare6MenuItem2Label1.fontColor = forbiddenFruit
        whiteSquare6MenuItem2Label1.position = CGPoint(x: whiteSquare6MenuItem2.frame.midX, y: whiteSquare6MenuItem2.frame.midY - whiteSquare6MenuItem2.frame.size.height)
        whiteSquare6MenuItem2Label1.zPosition = 4
        addChild(whiteSquare6MenuItem2Label1)
        
        whiteSquare6MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare6MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        whiteSquare6MenuItem2Label2.fontSize = 7.5
        whiteSquare6MenuItem2Label2.fontColor = forbiddenFruit
        whiteSquare6MenuItem2Label2.position = CGPoint(x: whiteSquare6MenuItem2.frame.midX, y: whiteSquare6MenuItem2.frame.midY - whiteSquare6MenuItem2.frame.size.height - whiteSquare6MenuItem2Label2.frame.size.height)
        whiteSquare6MenuItem2Label2.zPosition = 4
        addChild(whiteSquare6MenuItem2Label2)
        
        item2Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: whiteSquare6MenuItem2.frame.midX, y: whiteSquare6MenuItem1.frame.midY - whiteSquare6MenuItem2.frame.size.height * 2))
        addChild(item2Label1)
        
//        item2Label2 = createMenuItemLabels(text: "Level", pos: CGPoint(x: whiteSquare6MenuItem2.frame.midX, y: whiteSquare6MenuItem1.frame.midY - whiteSquare6MenuItem2.frame.size.height * 2 + item2Label1.frame.size.height * 1.1))
//        addChild(item2Label2)
        
        print("Menu", whiteSquare6Menu.position)
        print("Menu Label", whiteSquare6TitleLabel.position)
        print("MenuItem1", whiteSquare6MenuItem1.position)
        print("MenuItem1Label1", whiteSquare6MenuItem1Label1.position)
        print("MenuItem1Label2", whiteSquare6MenuItem1Label2.position)
        print("MenuItem2", whiteSquare6MenuItem2.position)
        print("MenuItem2Label1", whiteSquare6MenuItem2Label1.position)
        print("MenuItem2Label2", whiteSquare6MenuItem2Label2.position)
    }
    
    func moveWhiteSquare6Menu(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare6MenuAction: SKAction
        
        // TITLE
        var whiteSquare6TitleBackdropAction: SKAction
        var whiteSquare6TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare6MenuItem1Action: SKAction
        
        var whiteSquare6Item1TitleAction: SKAction
        var whiteSquare6Item2TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare6MenuItem1Label1Action: SKAction
        var whiteSquare6MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare6MenuItem2Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare6MenuItem2Label1Action: SKAction
        var whiteSquare6MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare6Menu.position)
            print("Menu Label", self.whiteSquare6TitleLabel.position)
            print("MenuItem1", self.whiteSquare6MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare6MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare6MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare6MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare6MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare6MenuItem2Label2.position)
        }
        
        whiteSquare6MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare6Menu.run(whiteSquare6MenuAction)
        
        whiteSquare6TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare6TitleBackdrop.run(whiteSquare6TitleBackdropAction)
        
        whiteSquare6TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare6TitleLabel.run(whiteSquare6TitleLabelAction)
        
        whiteSquare6MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare6MenuItem1.run(whiteSquare6MenuItem1Action)
        
        whiteSquare6Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare6Item1Title.run(whiteSquare6Item1TitleAction)
        
        whiteSquare6MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare6MenuItem1Label1.run(whiteSquare6MenuItem1Label1Action)
        
        whiteSquare6MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem1.frame.size.height / 2 - whiteSquare6MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare6MenuItem1Label2.run(whiteSquare6MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem1.frame.size.height / 2 - whiteSquare6MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare6MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare6MenuItem2.run(whiteSquare6MenuItem2Action)
        
        whiteSquare6Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare6Item2Title.run(whiteSquare6Item2TitleAction)
        
        whiteSquare6MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare6MenuItem2Label1.run(whiteSquare6MenuItem2Label1Action)
        
        whiteSquare6MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem2.frame.size.height / 2 - whiteSquare6MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare6MenuItem2Label2.run(SKAction.sequence([whiteSquare6MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem1.frame.size.height / 2 - whiteSquare6MenuItem2Label2.frame.size.height * 3))
        
//        moveMenuItemLabels(label: item2Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem2Label1.frame.size.height * 2.5 - whiteSquare6MenuItem2Label2.frame.size.height - item2Label1.frame.size.height * 1.1))
    }
    
    func removeWhiteSquare6Menu(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare6MenuAction: SKAction // BACKDROP
        var whiteSquare6TitleBackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare6TitleLabelAction: SKAction // TITLE
        var whiteSquare6MenuItem1Action: SKAction // ITEM 1
        var whiteSquare6Item1TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare6MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare6MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare6MenuItem2Action: SKAction // ITEM 2
        var whiteSquare6Item2TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare6MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare6MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare6MenuRemove: SKAction // BACKDROP
        var whiteSquare6TitleBackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare6TitleLabelRemove: SKAction // TITLE
        var whiteSquare6MenuItem1Remove: SKAction // ITEM 1
        var whiteSquare6Item1TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare6MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare6MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare6MenuItem2Remove: SKAction // ITEM 2
        var whiteSquare6Item2TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare6MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare6MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare6MenuSequence: SKAction // BACKDROP
        var whiteSquare6TitleBackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare6TitleLabelSequence: SKAction // TITLE
        var whiteSquare6MenuItem1Sequence: SKAction // ITEM 1
        var whiteSquare6Item1TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare6MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare6MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare6MenuItem2Sequence: SKAction // ITEM 2
        var whiteSquare6Item2TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare6MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare6MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare6MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuRemove = SKAction.removeFromParent()
        whiteSquare6MenuSequence = SKAction.sequence([whiteSquare6MenuAction, whiteSquare6MenuRemove])
        whiteSquare6Menu.run(whiteSquare6MenuSequence)
        
        whiteSquare6TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6TitleBackdropRemove = SKAction.removeFromParent()
        whiteSquare6TitleBackdropSequence = SKAction.sequence([whiteSquare6TitleBackdropAction, whiteSquare6TitleBackdropRemove])
        whiteSquare6TitleBackdrop.run(whiteSquare6TitleBackdropSequence)
        
        whiteSquare6TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6TitleLabelRemove = SKAction.removeFromParent()
        whiteSquare6TitleLabelSequence = SKAction.sequence([whiteSquare6TitleLabelAction, whiteSquare6TitleLabelRemove])
        whiteSquare6TitleLabel.run(whiteSquare6TitleLabelSequence)
        
        whiteSquare6MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem1Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem1Sequence = SKAction.sequence([whiteSquare6MenuItem1Action, whiteSquare6MenuItem1Remove])
        whiteSquare6MenuItem1.run(whiteSquare6MenuItem1Sequence)
        
        whiteSquare6Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6Item1TitleRemove = SKAction.removeFromParent()
        whiteSquare6Item1TitleSequence = SKAction.sequence([whiteSquare6Item1TitleAction, whiteSquare6Item1TitleRemove])
        whiteSquare6Item1Title.run(whiteSquare6Item1TitleSequence)
        
        whiteSquare6Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6Item2TitleRemove = SKAction.removeFromParent()
        whiteSquare6Item2TitleSequence = SKAction.sequence([whiteSquare6Item2TitleAction, whiteSquare6Item2TitleRemove])
        whiteSquare6Item2Title.run(whiteSquare6Item2TitleSequence)
        
        whiteSquare6MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem1Label1Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem1Label1Sequence = SKAction.sequence([whiteSquare6MenuItem1Label1Action, whiteSquare6MenuItem1Label1Remove])
        whiteSquare6MenuItem1Label1.run(whiteSquare6MenuItem1Label1Sequence)
        
        whiteSquare6MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem1Label2Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem1Label2Sequence = SKAction.sequence([whiteSquare6MenuItem1Label2Action, whiteSquare6MenuItem1Label2Remove])
        whiteSquare6MenuItem1Label2.run(whiteSquare6MenuItem1Label2Sequence)
        
        whiteSquare6MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem2Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem2Sequence = SKAction.sequence([whiteSquare6MenuItem2Action, whiteSquare6MenuItem2Remove])
        whiteSquare6MenuItem2.run(whiteSquare6MenuItem2Sequence)
        
        whiteSquare6MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem2Label1Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem2Label1Sequence = SKAction.sequence([whiteSquare6MenuItem2Label1Action, whiteSquare6MenuItem2Label1Remove])
        whiteSquare6MenuItem2Label1.run(whiteSquare6MenuItem2Label1Sequence)
        
        whiteSquare6MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare6MenuItem2Label2Remove = SKAction.removeFromParent()
        whiteSquare6MenuItem2Label2Sequence = SKAction.sequence([whiteSquare6MenuItem2Label2Action, whiteSquare6MenuItem2Label2Remove])
        whiteSquare6MenuItem2Label2.run(whiteSquare6MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare6MenuLeft(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare6MenuAction: SKAction
        
        // TITLE
        var whiteSquare6TitleBackdropAction: SKAction
        var whiteSquare6TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare6MenuItem1Action: SKAction
        var whiteSquare6Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare6MenuItem1Label1Action: SKAction
        var whiteSquare6MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare6MenuItem2Action: SKAction
        var whiteSquare6Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare6MenuItem2Label1Action: SKAction
        var whiteSquare6MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare6Menu.position)
            print("MenuItem1", self.whiteSquare6MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare6MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare6MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare6MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare6MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare6MenuItem2Label2.position)
        }
            
        whiteSquare6MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare6Menu.run(whiteSquare6MenuAction)
        
        whiteSquare6TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare6TitleBackdrop.run(whiteSquare6TitleBackdropAction)
        
        whiteSquare6TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare6TitleLabel.run(whiteSquare6TitleLabelAction)
        
        whiteSquare6MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare6MenuItem1.run(whiteSquare6MenuItem1Action)
        
        whiteSquare6Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare6Item1Title.run(whiteSquare6Item1TitleAction)
        
        whiteSquare6MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare6MenuItem1Label1.run(whiteSquare6MenuItem1Label1Action)
        
        whiteSquare6MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem1.frame.size.height / 2 - whiteSquare6MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare6MenuItem1Label2.run(whiteSquare6MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem1.frame.size.height / 2 - whiteSquare6MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare6MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare6MenuItem2.run(whiteSquare6MenuItem2Action)
        
        whiteSquare6Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare6MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare6Item2Title.run(whiteSquare6Item2TitleAction)
        
        whiteSquare6MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare6MenuItem2Label1.run(whiteSquare6MenuItem2Label1Action)
        
        whiteSquare6MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem2.frame.size.height / 2 - whiteSquare6MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare6MenuItem2Label2.run(SKAction.sequence([whiteSquare6MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare6MenuItem1.frame.size.height / 2 - whiteSquare6MenuItem2Label2.frame.size.height * 3))
    }
}
