//
//  MenuForWhiteSquare5.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class MenuForWhiteSquare5: SKNode {
    
    var whiteSquare5Menu: SKSpriteNode!
    
    var whiteSquare5TitleBackdrop: SKSpriteNode!
    var whiteSquare5TitleLabel: SKLabelNode!
    
    var whiteSquare5MenuItem1: SKSpriteNode!
    var whiteSquare5MenuItem2: SKSpriteNode!
    
    var whiteSquare5Item1Title: SKLabelNode!
    var whiteSquare5Item2Title: SKLabelNode!
    
    var priceOfMenuItem1 = 100
    var techLevelRequirementMenuItem1 = 0
    
    var priceOfMenuItem2 = 100
    var techLevelRequirementMenuItem2 = 0
    
    var whiteSquare5MenuItem1Label1: SKLabelNode!
    var whiteSquare5MenuItem1Label2: SKLabelNode!
    
    var whiteSquare5MenuItem2Label1: SKLabelNode!
    var whiteSquare5MenuItem2Label2: SKLabelNode!
    
    var item1Label1: SKLabelNode!
    var item2Label1: SKLabelNode!
    var item2Label2: SKLabelNode!
    
    // WHITE SQUARE 2 ------------------- MENU
    
    func createMenuForWhiteSquare5(view: SKView) {
        // MENU BACKDROP
        whiteSquare5Menu = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare5Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare5Menu.setScale(0.42)
        whiteSquare5Menu.zPosition = 3
//        whiteSquare5Menu.fillColor = eerieBlack
        whiteSquare5Menu.name = "whiteSquare5Menu"
        addChild(whiteSquare5Menu)
        
        // MENU TITLE
        whiteSquare5TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare5TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare5TitleBackdrop.setScale(0.42)
        whiteSquare5TitleBackdrop.zPosition = 3
        addChild(whiteSquare5TitleBackdrop)
        
        whiteSquare5TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5TitleLabel.text = "Resources"
        whiteSquare5TitleLabel.fontSize = 18
        whiteSquare5TitleLabel.fontColor = forbiddenFruit
        whiteSquare5TitleLabel.position = CGPoint(x: whiteSquare5TitleBackdrop.frame.midX, y: whiteSquare5TitleBackdrop.frame.maxY - whiteSquare5TitleLabel.frame.size.height)
        whiteSquare5TitleLabel.zPosition = 4
        addChild(whiteSquare5TitleLabel)
        
        // MENU ITEM 1
        whiteSquare5MenuItem1 = SKSpriteNode(imageNamed: "Location 4")
        whiteSquare5MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: whiteSquare5Menu.position.y)
        whiteSquare5MenuItem1.zPosition = 4
        whiteSquare5MenuItem1.setScale(0.26)
//        whiteSquare5MenuItem1.fillColor = ghostWhite
//        whiteSquare5MenuItem1.strokeColor = SKColor.clear
        whiteSquare5MenuItem1.name = "whiteSquare5MenuItem1"
        addChild(whiteSquare5MenuItem1)
        
        whiteSquare5Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5Item1Title.text = "Tavern"
        whiteSquare5Item1Title.fontSize = 9
        whiteSquare5Item1Title.fontColor = forbiddenFruit
        whiteSquare5Item1Title.position = CGPoint(x: whiteSquare5MenuItem1.frame.midX, y: whiteSquare5MenuItem1.frame.maxY + whiteSquare5Item1Title.frame.size.height)
        whiteSquare5Item1Title.zPosition = 4
        addChild(whiteSquare5Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        whiteSquare5MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        whiteSquare5MenuItem1Label1.fontSize = 7.5
        whiteSquare5MenuItem1Label1.fontColor = forbiddenFruit
        whiteSquare5MenuItem1Label1.position = CGPoint(x: whiteSquare5MenuItem1.frame.midX, y: whiteSquare5MenuItem1.frame.midY - whiteSquare5MenuItem1.frame.size.height)
        whiteSquare5MenuItem1Label1.zPosition = 4
        addChild(whiteSquare5MenuItem1Label1)
        
        whiteSquare5MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        whiteSquare5MenuItem1Label2.fontSize = 7.5
        whiteSquare5MenuItem1Label2.fontColor = forbiddenFruit
        whiteSquare5MenuItem1Label2.position = CGPoint(x: whiteSquare5MenuItem1.frame.midX, y: whiteSquare5MenuItem1.frame.midY - whiteSquare5MenuItem1.frame.size.height - whiteSquare5MenuItem1Label2.frame.size.height)
        whiteSquare5MenuItem1Label2.zPosition = 4
        addChild(whiteSquare5MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: whiteSquare5MenuItem1.frame.midX, y: whiteSquare5MenuItem1.frame.midY - whiteSquare5MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        // MENU ITEM 2
        whiteSquare5MenuItem2 = SKSpriteNode(imageNamed: "Location 1")
        whiteSquare5MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: whiteSquare5Menu.position.y)
        whiteSquare5MenuItem2.zPosition = 4
        whiteSquare5MenuItem2.setScale(0.26)
//        whiteSquare5MenuItem2.fillColor = grape
//        whiteSquare5MenuItem2.strokeColor = SKColor.clear
        whiteSquare5MenuItem2.name = "whiteSquare5MenuItem2"
        addChild(whiteSquare5MenuItem2)
        
        whiteSquare5Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5Item2Title.text = "Reactor"
        whiteSquare5Item2Title.fontSize = 9
        whiteSquare5Item2Title.fontColor = forbiddenFruit
        whiteSquare5Item2Title.position = CGPoint(x: whiteSquare5MenuItem2.frame.midX, y: whiteSquare5MenuItem2.frame.maxY + whiteSquare5Item2Title.frame.size.height)
        whiteSquare5Item2Title.zPosition = 4
        addChild(whiteSquare5Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        whiteSquare5MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        whiteSquare5MenuItem2Label1.fontSize = 7.5
        whiteSquare5MenuItem2Label1.fontColor = forbiddenFruit
        whiteSquare5MenuItem2Label1.position = CGPoint(x: whiteSquare5MenuItem2.frame.midX, y: whiteSquare5MenuItem2.frame.midY - whiteSquare5MenuItem2.frame.size.height)
        whiteSquare5MenuItem2Label1.zPosition = 4
        addChild(whiteSquare5MenuItem2Label1)
        
        whiteSquare5MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare5MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        whiteSquare5MenuItem2Label2.fontSize = 7.5
        whiteSquare5MenuItem2Label2.fontColor = forbiddenFruit
        whiteSquare5MenuItem2Label2.position = CGPoint(x: whiteSquare5MenuItem2.frame.midX, y: whiteSquare5MenuItem2.frame.midY - whiteSquare5MenuItem2.frame.size.height - whiteSquare5MenuItem2Label2.frame.size.height)
        whiteSquare5MenuItem2Label2.zPosition = 4
        addChild(whiteSquare5MenuItem2Label2)
        
        item2Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: whiteSquare5MenuItem2.frame.midX, y: whiteSquare5MenuItem1.frame.midY - whiteSquare5MenuItem2.frame.size.height * 2))
        addChild(item2Label1)
        
//        item2Label2 = createMenuItemLabels(text: "Level", pos: CGPoint(x: whiteSquare5MenuItem2.frame.midX, y: whiteSquare5MenuItem1.frame.midY - whiteSquare5MenuItem2.frame.size.height * 2 + item2Label1.frame.size.height * 1.1))
//        addChild(item2Label2)
        
        print("Menu", whiteSquare5Menu.position)
        print("Menu Label", whiteSquare5TitleLabel.position)
        print("MenuItem1", whiteSquare5MenuItem1.position)
        print("MenuItem1Label1", whiteSquare5MenuItem1Label1.position)
        print("MenuItem1Label2", whiteSquare5MenuItem1Label2.position)
        print("MenuItem2", whiteSquare5MenuItem2.position)
        print("MenuItem2Label1", whiteSquare5MenuItem2Label1.position)
        print("MenuItem2Label2", whiteSquare5MenuItem2Label2.position)
    }
    
    func moveWhiteSquare5Menu(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare5MenuAction: SKAction
        
        // TITLE
        var whiteSquare5TitleBackdropAction: SKAction
        var whiteSquare5TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare5MenuItem1Action: SKAction
        
        var whiteSquare5Item1TitleAction: SKAction
        var whiteSquare5Item2TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare5MenuItem1Label1Action: SKAction
        var whiteSquare5MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare5MenuItem2Action: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare5MenuItem2Label1Action: SKAction
        var whiteSquare5MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare5Menu.position)
            print("Menu Label", self.whiteSquare5TitleLabel.position)
            print("MenuItem1", self.whiteSquare5MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare5MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare5MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare5MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare5MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare5MenuItem2Label2.position)
        }
        
        whiteSquare5MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare5Menu.run(whiteSquare5MenuAction)
        
        whiteSquare5TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare5TitleBackdrop.run(whiteSquare5TitleBackdropAction)
        
        whiteSquare5TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare5TitleLabel.run(whiteSquare5TitleLabelAction)
        
        whiteSquare5MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare5MenuItem1.run(whiteSquare5MenuItem1Action)
        
        whiteSquare5Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare5Item1Title.run(whiteSquare5Item1TitleAction)
        
        whiteSquare5MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare5MenuItem1Label1.run(whiteSquare5MenuItem1Label1Action)
        
        whiteSquare5MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem1.frame.size.height / 2 - whiteSquare5MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare5MenuItem1Label2.run(whiteSquare5MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem1.frame.size.height / 2 - whiteSquare5MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare5MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare5MenuItem2.run(whiteSquare5MenuItem2Action)
        
        whiteSquare5Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare5Item2Title.run(whiteSquare5Item2TitleAction)
        
        whiteSquare5MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare5MenuItem2Label1.run(whiteSquare5MenuItem2Label1Action)
        
        whiteSquare5MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem2.frame.size.height / 2 - whiteSquare5MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare5MenuItem2Label2.run(SKAction.sequence([whiteSquare5MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem1.frame.size.height / 2 - whiteSquare5MenuItem2Label2.frame.size.height * 3))
        
//        moveMenuItemLabels(label: item2Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem2Label1.frame.size.height * 2.5 - whiteSquare5MenuItem2Label2.frame.size.height - item2Label1.frame.size.height * 1.1))
    }
    
    func removeWhiteSquare5Menu(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare5MenuAction: SKAction // BACKDROP
        var whiteSquare5TitleBackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare5TitleLabelAction: SKAction // TITLE
        var whiteSquare5MenuItem1Action: SKAction // ITEM 1
        var whiteSquare5Item1TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare5MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare5MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var whiteSquare5MenuItem2Action: SKAction // ITEM 2
        var whiteSquare5Item2TitleAction: SKAction // ITEM 2 TITLE
        var whiteSquare5MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var whiteSquare5MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare5MenuRemove: SKAction // BACKDROP
        var whiteSquare5TitleBackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare5TitleLabelRemove: SKAction // TITLE
        var whiteSquare5MenuItem1Remove: SKAction // ITEM 1
        var whiteSquare5Item1TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare5MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare5MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var whiteSquare5MenuItem2Remove: SKAction // ITEM 2
        var whiteSquare5Item2TitleRemove: SKAction // ITEM 2 TITLE
        var whiteSquare5MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var whiteSquare5MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare5MenuSequence: SKAction // BACKDROP
        var whiteSquare5TitleBackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare5TitleLabelSequence: SKAction // TITLE
        var whiteSquare5MenuItem1Sequence: SKAction // ITEM 1
        var whiteSquare5Item1TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare5MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare5MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var whiteSquare5MenuItem2Sequence: SKAction // ITEM 2
        var whiteSquare5Item2TitleSequence: SKAction // ITEM 2 TITLE
        var whiteSquare5MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var whiteSquare5MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        whiteSquare5MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuRemove = SKAction.removeFromParent()
        whiteSquare5MenuSequence = SKAction.sequence([whiteSquare5MenuAction, whiteSquare5MenuRemove])
        whiteSquare5Menu.run(whiteSquare5MenuSequence)
        
        whiteSquare5TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5TitleBackdropRemove = SKAction.removeFromParent()
        whiteSquare5TitleBackdropSequence = SKAction.sequence([whiteSquare5TitleBackdropAction, whiteSquare5TitleBackdropRemove])
        whiteSquare5TitleBackdrop.run(whiteSquare5TitleBackdropSequence)
        
        whiteSquare5TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5TitleLabelRemove = SKAction.removeFromParent()
        whiteSquare5TitleLabelSequence = SKAction.sequence([whiteSquare5TitleLabelAction, whiteSquare5TitleLabelRemove])
        whiteSquare5TitleLabel.run(whiteSquare5TitleLabelSequence)
        
        whiteSquare5MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem1Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem1Sequence = SKAction.sequence([whiteSquare5MenuItem1Action, whiteSquare5MenuItem1Remove])
        whiteSquare5MenuItem1.run(whiteSquare5MenuItem1Sequence)
        
        whiteSquare5Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5Item1TitleRemove = SKAction.removeFromParent()
        whiteSquare5Item1TitleSequence = SKAction.sequence([whiteSquare5Item1TitleAction, whiteSquare5Item1TitleRemove])
        whiteSquare5Item1Title.run(whiteSquare5Item1TitleSequence)
        
        whiteSquare5Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5Item2TitleRemove = SKAction.removeFromParent()
        whiteSquare5Item2TitleSequence = SKAction.sequence([whiteSquare5Item2TitleAction, whiteSquare5Item2TitleRemove])
        whiteSquare5Item2Title.run(whiteSquare5Item2TitleSequence)
        
        whiteSquare5MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem1Label1Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem1Label1Sequence = SKAction.sequence([whiteSquare5MenuItem1Label1Action, whiteSquare5MenuItem1Label1Remove])
        whiteSquare5MenuItem1Label1.run(whiteSquare5MenuItem1Label1Sequence)
        
        whiteSquare5MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem1Label2Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem1Label2Sequence = SKAction.sequence([whiteSquare5MenuItem1Label2Action, whiteSquare5MenuItem1Label2Remove])
        whiteSquare5MenuItem1Label2.run(whiteSquare5MenuItem1Label2Sequence)
        
        whiteSquare5MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem2Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem2Sequence = SKAction.sequence([whiteSquare5MenuItem2Action, whiteSquare5MenuItem2Remove])
        whiteSquare5MenuItem2.run(whiteSquare5MenuItem2Sequence)
        
        whiteSquare5MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem2Label1Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem2Label1Sequence = SKAction.sequence([whiteSquare5MenuItem2Label1Action, whiteSquare5MenuItem2Label1Remove])
        whiteSquare5MenuItem2Label1.run(whiteSquare5MenuItem2Label1Sequence)
        
        whiteSquare5MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare5MenuItem2Label2Remove = SKAction.removeFromParent()
        whiteSquare5MenuItem2Label2Sequence = SKAction.sequence([whiteSquare5MenuItem2Label2Action, whiteSquare5MenuItem2Label2Remove])
        whiteSquare5MenuItem2Label2.run(whiteSquare5MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    func moveWhiteSquare5MenuLeft(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare5MenuAction: SKAction
        
        // TITLE
        var whiteSquare5TitleBackdropAction: SKAction
        var whiteSquare5TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare5MenuItem1Action: SKAction
        var whiteSquare5Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare5MenuItem1Label1Action: SKAction
        var whiteSquare5MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var whiteSquare5MenuItem2Action: SKAction
        var whiteSquare5Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var whiteSquare5MenuItem2Label1Action: SKAction
        var whiteSquare5MenuItem2Label2Action: SKAction
        
        var printAction: SKAction
        printAction = SKAction.run {
            print("Menu", self.whiteSquare5Menu.position)
            print("MenuItem1", self.whiteSquare5MenuItem1.position)
            print("MenuItem1Label1", self.whiteSquare5MenuItem1Label1.position)
            print("MenuItem1Label2", self.whiteSquare5MenuItem1Label2.position)
            print("MenuItem2", self.whiteSquare5MenuItem2.position)
            print("MenuItem2Label1", self.whiteSquare5MenuItem2Label1.position)
            print("MenuItem2Label2", self.whiteSquare5MenuItem2Label2.position)
        }
            
        whiteSquare5MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare5Menu.run(whiteSquare5MenuAction)
        
        whiteSquare5TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare5TitleBackdrop.run(whiteSquare5TitleBackdropAction)
        
        whiteSquare5TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare5TitleLabel.run(whiteSquare5TitleLabelAction)
        
        whiteSquare5MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare5MenuItem1.run(whiteSquare5MenuItem1Action)
        
        whiteSquare5Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare5Item1Title.run(whiteSquare5Item1TitleAction)
        
        whiteSquare5MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare5MenuItem1Label1.run(whiteSquare5MenuItem1Label1Action)
        
        whiteSquare5MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem1.frame.size.height / 2 - whiteSquare5MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare5MenuItem1Label2.run(whiteSquare5MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem1.frame.size.height / 2 - whiteSquare5MenuItem1Label2.frame.size.height * 3))
        
        whiteSquare5MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem2.frame.size.height / 3), duration: 0.25)
        whiteSquare5MenuItem2.run(whiteSquare5MenuItem2Action)
        
        whiteSquare5Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare5MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare5Item2Title.run(whiteSquare5Item2TitleAction)
        
        whiteSquare5MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem2.frame.size.height / 2), duration: 0.25)
        whiteSquare5MenuItem2Label1.run(whiteSquare5MenuItem2Label1Action)
        
        whiteSquare5MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem2.frame.size.height / 2 - whiteSquare5MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare5MenuItem2Label2.run(SKAction.sequence([whiteSquare5MenuItem2Label2Action, printAction]))
        
        moveMenuItemLabels(label: item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7 - view.frame.size.width, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare5MenuItem1.frame.size.height / 2 - whiteSquare5MenuItem2Label2.frame.size.height * 3))
    }
}
