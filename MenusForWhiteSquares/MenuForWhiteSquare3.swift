//
//  MenuForWhiteSquare3.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class MenuForWhiteSquare3: SKNode {
    
    var whiteSquare3Menu: SKSpriteNode!
    
    var whiteSquare3TitleBackdrop: SKSpriteNode!
    var whiteSquare3TitleLabel: SKLabelNode!
    
    var whiteSquare3MenuItem1: SKSpriteNode!
    var whiteSquare3MenuItem2: SKSpriteNode!
    
    var whiteSquare3Item1Title: SKLabelNode!
    var whiteSquare3Item2Title: SKLabelNode!
    
    var priceOfMenuItem1 = 100
    var techLevelRequirementMenuItem1 = 0
    
    var priceOfMenuItem2 = 100
    var techLevelRequirementMenuItem2 = 0
    
    var whiteSquare3MenuItem1Label1: SKLabelNode!
    var whiteSquare3MenuItem1Label2: SKLabelNode!
    
    var whiteSquare3MenuItem2Label1: SKLabelNode!
    var whiteSquare3MenuItem2Label2: SKLabelNode!
    
    var item1Label1: SKLabelNode!
    var item2Label1: SKLabelNode!
    var item2Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- MENU
    
    func createMenuForWhiteSquare3(view: SKView) {
        // MENU BACKDROP
        whiteSquare3Menu = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare3Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare3Menu.setScale(0.42)
        whiteSquare3Menu.zPosition = 3
//        whiteSquare3Menu.fillColor = eerieBlack
        whiteSquare3Menu.name = "whiteSquare3Menu"
        addChild(whiteSquare3Menu)
        
        // MENU TITLE
        whiteSquare3TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare3TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare3TitleBackdrop.setScale(0.42)
        whiteSquare3TitleBackdrop.zPosition = 3
        addChild(whiteSquare3TitleBackdrop)
        
        whiteSquare3TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3TitleLabel.text = "Resources"
        whiteSquare3TitleLabel.fontSize = 18
        whiteSquare3TitleLabel.fontColor = forbiddenFruit
        whiteSquare3TitleLabel.position = CGPoint(x: whiteSquare3TitleBackdrop.frame.midX, y: whiteSquare3TitleBackdrop.frame.maxY - whiteSquare3TitleLabel.frame.size.height)
        whiteSquare3TitleLabel.zPosition = 4
        addChild(whiteSquare3TitleLabel)
        
        // MENU ITEM 1
        whiteSquare3MenuItem1 = SKSpriteNode(imageNamed: "Location 4")
        whiteSquare3MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: whiteSquare3Menu.position.y)
        whiteSquare3MenuItem1.zPosition = 4
        whiteSquare3MenuItem1.setScale(0.26)
//        whiteSquare3MenuItem1.fillColor = ghostWhite
//        whiteSquare3MenuItem1.strokeColor = SKColor.clear
        whiteSquare3MenuItem1.name = "whiteSquare3MenuItem1"
        addChild(whiteSquare3MenuItem1)
        
        whiteSquare3Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3Item1Title.text = "Tavern"
        whiteSquare3Item1Title.fontSize = 9
        whiteSquare3Item1Title.fontColor = forbiddenFruit
        whiteSquare3Item1Title.position = CGPoint(x: whiteSquare3MenuItem1.frame.midX, y: whiteSquare3MenuItem1.frame.maxY + whiteSquare3Item1Title.frame.size.height)
        whiteSquare3Item1Title.zPosition = 4
        addChild(whiteSquare3Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        whiteSquare3MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        whiteSquare3MenuItem1Label1.fontSize = 7.5
        whiteSquare3MenuItem1Label1.fontColor = forbiddenFruit
        whiteSquare3MenuItem1Label1.position = CGPoint(x: whiteSquare3MenuItem1.frame.midX, y: whiteSquare3MenuItem1.frame.midY - whiteSquare3MenuItem1.frame.size.height)
        whiteSquare3MenuItem1Label1.zPosition = 4
        addChild(whiteSquare3MenuItem1Label1)
        
        whiteSquare3MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        whiteSquare3MenuItem1Label2.fontSize = 7.5
        whiteSquare3MenuItem1Label2.fontColor = forbiddenFruit
        whiteSquare3MenuItem1Label2.position = CGPoint(x: whiteSquare3MenuItem1.frame.midX, y: whiteSquare3MenuItem1.frame.midY - whiteSquare3MenuItem1.frame.size.height - whiteSquare3MenuItem1Label2.frame.size.height)
        whiteSquare3MenuItem1Label2.zPosition = 4
        addChild(whiteSquare3MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: whiteSquare3MenuItem1.frame.midX, y: whiteSquare3MenuItem1.frame.midY - whiteSquare3MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        // MENU ITEM 2
        whiteSquare3MenuItem2 = SKSpriteNode(imageNamed: "Location 1")
        whiteSquare3MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: whiteSquare3Menu.position.y)
        whiteSquare3MenuItem2.zPosition = 4
        whiteSquare3MenuItem2.setScale(0.26)
//        whiteSquare3MenuItem2.fillColor = grape
//        whiteSquare3MenuItem2.strokeColor = SKColor.clear
        whiteSquare3MenuItem2.name = "whiteSquare3MenuItem2"
        addChild(whiteSquare3MenuItem2)
        
        whiteSquare3Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3Item2Title.text = "Reactor"
        whiteSquare3Item2Title.fontSize = 9
        whiteSquare3Item2Title.fontColor = forbiddenFruit
        whiteSquare3Item2Title.position = CGPoint(x: whiteSquare3MenuItem2.frame.midX, y: whiteSquare3MenuItem2.frame.maxY + whiteSquare3Item2Title.frame.size.height)
        whiteSquare3Item2Title.zPosition = 4
        addChild(whiteSquare3Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        whiteSquare3MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        whiteSquare3MenuItem2Label1.fontSize = 7.5
        whiteSquare3MenuItem2Label1.fontColor = forbiddenFruit
        whiteSquare3MenuItem2Label1.position = CGPoint(x: whiteSquare3MenuItem2.frame.midX, y: whiteSquare3MenuItem2.frame.midY - whiteSquare3MenuItem2.frame.size.height)
        whiteSquare3MenuItem2Label1.zPosition = 4
        addChild(whiteSquare3MenuItem2Label1)
        
        whiteSquare3MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare3MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        whiteSquare3MenuItem2Label2.fontSize = 7.5
        whiteSquare3MenuItem2Label2.fontColor = forbiddenFruit
        whiteSquare3MenuItem2Label2.position = CGPoint(x: whiteSquare3MenuItem2.frame.midX, y: whiteSquare3MenuItem2.frame.midY - whiteSquare3MenuItem2.frame.size.height - whiteSquare3MenuItem2Label2.frame.size.height)
        whiteSquare3MenuItem2Label2.zPosition = 4
        addChild(whiteSquare3MenuItem2Label2)
        
        item2Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: whiteSquare3MenuItem2.frame.midX, y: whiteSquare3MenuItem1.frame.midY - whiteSquare3MenuItem2.frame.size.height * 2))
        addChild(item2Label1)
        
//        item2Label2 = createMenuItemLabels(text: "Level", pos: CGPoint(x: whiteSquare3MenuItem2.frame.midX, y: whiteSquare3MenuItem1.frame.midY - whiteSquare3MenuItem2.frame.size.height * 2 + item2Label1.frame.size.height * 1.1))
//        addChild(item2Label2)
        
        print("Menu", whiteSquare3Menu.position)
        print("Menu Label", whiteSquare3TitleLabel.position)
        print("MenuItem1", whiteSquare3MenuItem1.position)
        print("MenuItem1Label1", whiteSquare3MenuItem1Label1.position)
        print("MenuItem1Label2", whiteSquare3MenuItem1Label2.position)
        print("MenuItem2", whiteSquare3MenuItem2.position)
        print("MenuItem2Label1", whiteSquare3MenuItem2Label1.position)
        print("MenuItem2Label2", whiteSquare3MenuItem2Label2.position)
    }
    
    func moveWhiteSquare3Menu(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare3MenuAction: SKAction
        
        // TITLE
        var whiteSquare3TitleBackdropAction: SKAction
        var whiteSquare3TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare3MenuItem1Action: SKAction
        
        var whiteSquare3Item1TitleAction: SKAction
        var whiteSquare3Item2TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare3MenuItem1Label1Action: SKAction
        var whiteSquare3MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare3MenuItem2Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare3MenuItem2Label1Action: SKAction
        var whiteSquare3MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare3Menu.position)
            print("Menu Label", self.whiteSquare3TitleLabel.position)
            print("MenuItem1", self.whiteSquare3MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare3MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare3MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare3MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare3MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare3MenuItem2Label2.position)
        }
        
        whiteSquare3MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare3Menu.run(whiteSquare3MenuAction)
        
        whiteSquare3TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare3TitleBackdrop.run(whiteSquare3TitleBackdropAction)
        
        whiteSquare3TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare3TitleLabel.run(whiteSquare3TitleLabelAction)
        
        whiteSquare3MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare3MenuItem1.run(whiteSquare3MenuItem1Action)
        
        whiteSquare3Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare3Item1Title.run(whiteSquare3Item1TitleAction)
        
        whiteSquare3MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare3MenuItem1Label1.run(whiteSquare3MenuItem1Label1Action)
        
        whiteSquare3MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem1.frame.size.height / 2 - whiteSquare3MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare3MenuItem1Label2.run(whiteSquare3MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem1.frame.size.height / 2 - whiteSquare3MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare3MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare3MenuItem2.run(whiteSquare3MenuItem2Action)
        
        whiteSquare3Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare3Item2Title.run(whiteSquare3Item2TitleAction)
        
        whiteSquare3MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare3MenuItem2Label1.run(whiteSquare3MenuItem2Label1Action)
        
        whiteSquare3MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem2.frame.size.height / 2 - whiteSquare3MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare3MenuItem2Label2.run(SKAction.sequence([whiteSquare3MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem1.frame.size.height / 2 - whiteSquare3MenuItem2Label2.frame.size.height * 3))
        
//        moveMenuItemLabels(label: item2Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem2Label1.frame.size.height * 2.5 - whiteSquare3MenuItem2Label2.frame.size.height - item2Label1.frame.size.height * 1.1))
    }
    
    func removeWhiteSquare3Menu(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare3MenuAction: SKAction // BACKDROP
        var whiteSquare3TitleBackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare3TitleLabelAction: SKAction // TITLE
        var whiteSquare3MenuItem1Action: SKAction // ITEM 1
        var whiteSquare3Item1TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare3MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare3MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare3MenuItem2Action: SKAction // ITEM 2
        var whiteSquare3Item2TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare3MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare3MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare3MenuRemove: SKAction // BACKDROP
        var whiteSquare3TitleBackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare3TitleLabelRemove: SKAction // TITLE
        var whiteSquare3MenuItem1Remove: SKAction // ITEM 1
        var whiteSquare3Item1TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare3MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare3MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare3MenuItem2Remove: SKAction // ITEM 2
        var whiteSquare3Item2TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare3MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare3MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare3MenuSequence: SKAction // BACKDROP
        var whiteSquare3TitleBackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare3TitleLabelSequence: SKAction // TITLE
        var whiteSquare3MenuItem1Sequence: SKAction // ITEM 1
        var whiteSquare3Item1TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare3MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare3MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare3MenuItem2Sequence: SKAction // ITEM 2
        var whiteSquare3Item2TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare3MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare3MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare3MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuRemove = SKAction.removeFromParent()
        whiteSquare3MenuSequence = SKAction.sequence([whiteSquare3MenuAction, whiteSquare3MenuRemove])
        whiteSquare3Menu.run(whiteSquare3MenuSequence)
        
        whiteSquare3TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3TitleBackdropRemove = SKAction.removeFromParent()
        whiteSquare3TitleBackdropSequence = SKAction.sequence([whiteSquare3TitleBackdropAction, whiteSquare3TitleBackdropRemove])
        whiteSquare3TitleBackdrop.run(whiteSquare3TitleBackdropSequence)
        
        whiteSquare3TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3TitleLabelRemove = SKAction.removeFromParent()
        whiteSquare3TitleLabelSequence = SKAction.sequence([whiteSquare3TitleLabelAction, whiteSquare3TitleLabelRemove])
        whiteSquare3TitleLabel.run(whiteSquare3TitleLabelSequence)
        
        whiteSquare3MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem1Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem1Sequence = SKAction.sequence([whiteSquare3MenuItem1Action, whiteSquare3MenuItem1Remove])
        whiteSquare3MenuItem1.run(whiteSquare3MenuItem1Sequence)
        
        whiteSquare3Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3Item1TitleRemove = SKAction.removeFromParent()
        whiteSquare3Item1TitleSequence = SKAction.sequence([whiteSquare3Item1TitleAction, whiteSquare3Item1TitleRemove])
        whiteSquare3Item1Title.run(whiteSquare3Item1TitleSequence)
        
        whiteSquare3Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3Item2TitleRemove = SKAction.removeFromParent()
        whiteSquare3Item2TitleSequence = SKAction.sequence([whiteSquare3Item2TitleAction, whiteSquare3Item2TitleRemove])
        whiteSquare3Item2Title.run(whiteSquare3Item2TitleSequence)
        
        whiteSquare3MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem1Label1Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem1Label1Sequence = SKAction.sequence([whiteSquare3MenuItem1Label1Action, whiteSquare3MenuItem1Label1Remove])
        whiteSquare3MenuItem1Label1.run(whiteSquare3MenuItem1Label1Sequence)
        
        whiteSquare3MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem1Label2Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem1Label2Sequence = SKAction.sequence([whiteSquare3MenuItem1Label2Action, whiteSquare3MenuItem1Label2Remove])
        whiteSquare3MenuItem1Label2.run(whiteSquare3MenuItem1Label2Sequence)
        
        whiteSquare3MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem2Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem2Sequence = SKAction.sequence([whiteSquare3MenuItem2Action, whiteSquare3MenuItem2Remove])
        whiteSquare3MenuItem2.run(whiteSquare3MenuItem2Sequence)
        
        whiteSquare3MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem2Label1Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem2Label1Sequence = SKAction.sequence([whiteSquare3MenuItem2Label1Action, whiteSquare3MenuItem2Label1Remove])
        whiteSquare3MenuItem2Label1.run(whiteSquare3MenuItem2Label1Sequence)
        
        whiteSquare3MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare3MenuItem2Label2Remove = SKAction.removeFromParent()
        whiteSquare3MenuItem2Label2Sequence = SKAction.sequence([whiteSquare3MenuItem2Label2Action, whiteSquare3MenuItem2Label2Remove])
        whiteSquare3MenuItem2Label2.run(whiteSquare3MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare3MenuLeft(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare3MenuAction: SKAction
        
        // TITLE
        var whiteSquare3TitleBackdropAction: SKAction
        var whiteSquare3TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare3MenuItem1Action: SKAction
        var whiteSquare3Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare3MenuItem1Label1Action: SKAction
        var whiteSquare3MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare3MenuItem2Action: SKAction
        var whiteSquare3Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare3MenuItem2Label1Action: SKAction
        var whiteSquare3MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare3Menu.position)
            print("MenuItem1", self.whiteSquare3MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare3MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare3MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare3MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare3MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare3MenuItem2Label2.position)
        }
            
        whiteSquare3MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare3Menu.run(whiteSquare3MenuAction)
        
        whiteSquare3TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare3TitleBackdrop.run(whiteSquare3TitleBackdropAction)
        
        whiteSquare3TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare3TitleLabel.run(whiteSquare3TitleLabelAction)
        
        whiteSquare3MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare3MenuItem1.run(whiteSquare3MenuItem1Action)
        
        whiteSquare3Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare3Item1Title.run(whiteSquare3Item1TitleAction)
        
        whiteSquare3MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare3MenuItem1Label1.run(whiteSquare3MenuItem1Label1Action)
        
        whiteSquare3MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem1.frame.size.height / 2 - whiteSquare3MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare3MenuItem1Label2.run(whiteSquare3MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem1.frame.size.height / 2 - whiteSquare3MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare3MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare3MenuItem2.run(whiteSquare3MenuItem2Action)
        
        whiteSquare3Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare3MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare3Item2Title.run(whiteSquare3Item2TitleAction)
        
        whiteSquare3MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare3MenuItem2Label1.run(whiteSquare3MenuItem2Label1Action)
        
        whiteSquare3MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem2.frame.size.height / 2 - whiteSquare3MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare3MenuItem2Label2.run(SKAction.sequence([whiteSquare3MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare3MenuItem1.frame.size.height / 2 - whiteSquare3MenuItem2Label2.frame.size.height * 3))
    }
}
