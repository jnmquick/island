//
//  MenusToBuildOnWhiteSquares.swift
//  mockup2
//
//  Created by Jason Quick on 6/27/23.
//

import Foundation
import SpriteKit

class MenuForWhiteSquare1: SKNode {
    
    var whiteSquare1Menu: SKSpriteNode!
    
    var whiteSquare1TitleBackdrop: SKSpriteNode!
    var whiteSquare1TitleLabel: SKLabelNode!
    
    var priceOfMenuItem1 = 200
    var techLevelRequirementMenuItem1 = 0
    
    var whiteSquare1MenuItem1: SKSpriteNode!
    var whiteSquare1Item1Title: SKLabelNode!
    
    var whiteSquare1MenuItem1Label1: SKLabelNode!
    var whiteSquare1MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var menuItem1WasBuilt = false
    
    // WHITE SQUARE 1 ------------------- MENU
    
    func createMenuForWhiteSquare1(view: SKView) {
        // MENU BACKDROP
        whiteSquare1Menu = SKSpriteNode(imageNamed: "Asset 30")
        whiteSquare1Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare1Menu.setScale(0.42)
        whiteSquare1Menu.zPosition = 3
//        whiteSquare1Menu.fillColor = eerieBlack
        whiteSquare1Menu.name = "whiteSquare1Menu"
        addChild(whiteSquare1Menu)
        
        // MENU TITLE
        whiteSquare1TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        whiteSquare1TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        whiteSquare1TitleBackdrop.setScale(0.42)
        whiteSquare1TitleBackdrop.zPosition = 3
        addChild(whiteSquare1TitleBackdrop)
        
        whiteSquare1TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare1TitleLabel.text = "Base Upgrades"
        whiteSquare1TitleLabel.fontSize = 18
        whiteSquare1TitleLabel.fontColor = forbiddenFruit
        whiteSquare1TitleLabel.position = CGPoint(x: whiteSquare1TitleBackdrop.frame.midX, y: whiteSquare1TitleBackdrop.frame.maxY - whiteSquare1TitleLabel.frame.size.height)
        whiteSquare1TitleLabel.zPosition = 4
        addChild(whiteSquare1TitleLabel)
        
        // MENU ITEM 1
        whiteSquare1MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        whiteSquare1MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: whiteSquare1Menu.position.y)
        whiteSquare1MenuItem1.zPosition = 4
        whiteSquare1MenuItem1.setScale(0.24)
//        whiteSquare1MenuItem1.fillColor = ghostWhite
//        whiteSquare1MenuItem1.strokeColor = SKColor.clear
        whiteSquare1MenuItem1.name = "whiteSquare1MenuItem1"
        if menuItem1WasBuilt == true {
            whiteSquare1MenuItem1.alpha = 0.3
        }
        addChild(whiteSquare1MenuItem1)
        
        whiteSquare1Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare1Item1Title.text = "Base"
        whiteSquare1Item1Title.fontSize = 9
        whiteSquare1Item1Title.fontColor = forbiddenFruit
        whiteSquare1Item1Title.position = CGPoint(x: whiteSquare1MenuItem1.frame.midX, y: whiteSquare1MenuItem1.frame.maxY + whiteSquare1Item1Title.frame.size.height)
        whiteSquare1Item1Title.zPosition = 4
        if menuItem1WasBuilt == true {
            whiteSquare1Item1Title.alpha = 0.3
        }
        addChild(whiteSquare1Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        whiteSquare1MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare1MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        whiteSquare1MenuItem1Label1.fontSize = 7.5
        whiteSquare1MenuItem1Label1.fontColor = forbiddenFruit
        whiteSquare1MenuItem1Label1.position = CGPoint(x: whiteSquare1MenuItem1.frame.midX, y: whiteSquare1MenuItem1.frame.midY - whiteSquare1MenuItem1.frame.size.height)
        whiteSquare1MenuItem1Label1.zPosition = 4
        if menuItem1WasBuilt == true {
            whiteSquare1MenuItem1Label1.alpha = 0.3
        }
        addChild(whiteSquare1MenuItem1Label1)
        
        whiteSquare1MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        whiteSquare1MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        whiteSquare1MenuItem1Label2.fontSize = 7.5
        whiteSquare1MenuItem1Label2.fontColor = forbiddenFruit
        whiteSquare1MenuItem1Label2.position = CGPoint(x: whiteSquare1MenuItem1.frame.midX, y: whiteSquare1MenuItem1.frame.midY - whiteSquare1MenuItem1.frame.size.height - whiteSquare1MenuItem1Label2.frame.size.height)
        whiteSquare1MenuItem1Label2.zPosition = 4
        if menuItem1WasBuilt == true {
            whiteSquare1MenuItem1Label2.alpha = 0.3
        }
        addChild(whiteSquare1MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "Adds 2 More", pos: CGPoint(x: whiteSquare1MenuItem1.frame.midX, y: whiteSquare1MenuItem1.frame.midY - whiteSquare1MenuItem1.frame.size.height * 2))
        if menuItem1WasBuilt == true {
            item1Label1.alpha = 0.3
        }
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "Base Spots", pos: CGPoint(x: whiteSquare1MenuItem1.frame.midX, y: whiteSquare1MenuItem1.frame.midY - whiteSquare1MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        if menuItem1WasBuilt == true {
            item1Label2.alpha = 0.3
        }
        addChild(item1Label2)
        
        print("Menu", whiteSquare1Menu.position)
        print("MenuItem1", whiteSquare1MenuItem1.position)
        print("MenuItem1Label1", whiteSquare1MenuItem1Label1.position)
        print("MenuItem1Label2", whiteSquare1MenuItem1Label2.position)
    }
    
    func moveWhiteSquare1Menu(view: SKView) {
        // ITEM BACKDROP
        var whiteSquare1MenuAction: SKAction
        
        // TITLE
        var whiteSquare1TitleBackdropAction: SKAction
        var whiteSquare1TitleLabelAction: SKAction
        
        // ITEM 1
        var whiteSquare1MenuItem1Action: SKAction
        var whiteSquare1Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var whiteSquare1MenuItem1Label1Action: SKAction
        var whiteSquare1MenuItem1Label2Action: SKAction
        
        whiteSquare1MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        whiteSquare1Menu.run(whiteSquare1MenuAction)
        
        whiteSquare1TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        whiteSquare1TitleBackdrop.run(whiteSquare1TitleBackdropAction)
        
        whiteSquare1TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        whiteSquare1TitleLabel.run(whiteSquare1TitleLabelAction)
        
        whiteSquare1MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare1MenuItem1.frame.size.height / 3), duration: 0.25)
        whiteSquare1MenuItem1.run(whiteSquare1MenuItem1Action)
        
        whiteSquare1Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + whiteSquare1MenuItem1.frame.size.height), duration: 0.25)
        whiteSquare1Item1Title.run(whiteSquare1Item1TitleAction)
        
        whiteSquare1MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare1MenuItem1.frame.size.height / 2), duration: 0.25)
        whiteSquare1MenuItem1Label1.run(whiteSquare1MenuItem1Label1Action)
        
        whiteSquare1MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare1MenuItem1.frame.size.height / 2 - whiteSquare1MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        whiteSquare1MenuItem1Label2.run(whiteSquare1MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare1MenuItem1.frame.size.height / 2 - whiteSquare1MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - whiteSquare1MenuItem1.frame.size.height / 2 - whiteSquare1MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeWhiteSquare1Menu(view: SKView) {
        // MOVE ACTIONS
        var whiteSquare1MenuAction: SKAction // BACKDROP
        var whiteSquare1TitleBackdropAction: SKAction // TITLE BACKDROP
        var whiteSquare1TitleLabelAction: SKAction // TITLE
        var whiteSquare1MenuItem1Action: SKAction // ITEM 1
        var whiteSquare1Item1TitleAction: SKAction // ITEM 1 TITLE
        var whiteSquare1MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var whiteSquare1MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var whiteSquare1MenuRemove: SKAction // BACKDROP
        var whiteSquare1TitleBackdropRemove: SKAction // TITLE BACKDROP
        var whiteSquare1TitleLabelRemove: SKAction // TITLE
        var whiteSquare1MenuItem1Remove: SKAction // ITEM 1
        var whiteSquare1Item1TitleRemove: SKAction // ITEM 1 TITLE
        var whiteSquare1MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var whiteSquare1MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var whiteSquare1MenuSequence: SKAction // BACKDROP
        var whiteSquare1TitleBackdropSequence: SKAction // TITLE BACKDROP
        var whiteSquare1TitleLabelSequence: SKAction // TITLE
        var whiteSquare1MenuItem1Sequence: SKAction // ITEM 1
        var whiteSquare1Item1TitleSequence: SKAction // ITEM 1 TITLE
        var whiteSquare1MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var whiteSquare1MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        whiteSquare1MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare1MenuRemove = SKAction.removeFromParent()
        whiteSquare1MenuSequence = SKAction.sequence([whiteSquare1MenuAction, whiteSquare1MenuRemove])
        whiteSquare1Menu.run(whiteSquare1MenuSequence)
        
        whiteSquare1TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare1TitleBackdropRemove = SKAction.removeFromParent()
        whiteSquare1TitleBackdropSequence = SKAction.sequence([whiteSquare1TitleBackdropAction, whiteSquare1TitleBackdropRemove])
        whiteSquare1TitleBackdrop.run(whiteSquare1TitleBackdropSequence)
        
        whiteSquare1TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare1TitleLabelRemove = SKAction.removeFromParent()
        whiteSquare1TitleLabelSequence = SKAction.sequence([whiteSquare1TitleLabelAction, whiteSquare1TitleLabelRemove])
        whiteSquare1TitleLabel.run(whiteSquare1TitleLabelSequence)
        
        whiteSquare1MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare1MenuItem1Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem1Sequence = SKAction.sequence([whiteSquare1MenuItem1Action, whiteSquare1MenuItem1Remove])
        whiteSquare1MenuItem1.run(whiteSquare1MenuItem1Sequence)
        
        whiteSquare1Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare1Item1TitleRemove = SKAction.removeFromParent()
        whiteSquare1Item1TitleSequence = SKAction.sequence([whiteSquare1Item1TitleAction, whiteSquare1Item1TitleRemove])
        whiteSquare1Item1Title.run(whiteSquare1Item1TitleSequence)
        
        whiteSquare1MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare1MenuItem1Label1Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem1Label1Sequence = SKAction.sequence([whiteSquare1MenuItem1Label1Action, whiteSquare1MenuItem1Label1Remove])
        whiteSquare1MenuItem1Label1.run(whiteSquare1MenuItem1Label1Sequence)
        
        whiteSquare1MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        whiteSquare1MenuItem1Label2Remove = SKAction.removeFromParent()
        whiteSquare1MenuItem1Label2Sequence = SKAction.sequence([whiteSquare1MenuItem1Label2Action, whiteSquare1MenuItem1Label2Remove])
        whiteSquare1MenuItem1Label2.run(whiteSquare1MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}
