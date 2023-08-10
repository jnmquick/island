//
//  MenuForCharacter10Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter10Ability: SKNode {
    
    var character10Menu: SKSpriteNode!
    var character10TitleBackdrop: SKSpriteNode!
    var character10TitleLabel: SKLabelNode!
    var character10Item1Title: SKLabelNode!
    var character10MenuItem1: SKSpriteNode!
    var character10MenuItem1Label1: SKLabelNode!
    var character10MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter10Item1 = 0
    var techLevelRequirementCharacter10Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter10(view: SKView) {
        // MENU BACKDROP
        character10Menu = SKSpriteNode(imageNamed: "Asset 30")
        character10Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character10Menu.setScale(0.42)
        character10Menu.zPosition = 3
        character10Menu.name = "character10Menu"
        addChild(character10Menu)
        
        // MENU TITLE
        character10TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character10TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character10TitleBackdrop.setScale(0.42)
        character10TitleBackdrop.zPosition = 3
        addChild(character10TitleBackdrop)
        
        character10TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character10TitleLabel.text = "Nibiru"
        character10TitleLabel.fontSize = 18
        character10TitleLabel.fontColor = forbiddenFruit
        character10TitleLabel.position = CGPoint(x: character10TitleBackdrop.frame.midX, y: character10TitleBackdrop.frame.maxY - character10TitleLabel.frame.size.height)
        character10TitleLabel.zPosition = 4
        addChild(character10TitleLabel)
        
        // MENU ITEM 1
        character10MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character10MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character10Menu.position.y)
        character10MenuItem1.zPosition = 4
        character10MenuItem1.setScale(0.24)
        //        character10MenuItem1.fillColor = ghostWhite
        //        character10MenuItem1.strokeColor = SKColor.clear
        character10MenuItem1.name = "character10MenuItem1"
        addChild(character10MenuItem1)
        
        character10Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character10Item1Title.text = "Ability"
        character10Item1Title.fontSize = 9
        character10Item1Title.fontColor = forbiddenFruit
        character10Item1Title.position = CGPoint(x: character10MenuItem1.frame.midX, y: character10MenuItem1.frame.maxY + character10Item1Title.frame.size.height)
        character10Item1Title.zPosition = 4
        addChild(character10Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character10MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character10MenuItem1Label1.text = "Cost: \(priceOfCharacter10Item1)"
        character10MenuItem1Label1.fontSize = 7.5
        character10MenuItem1Label1.fontColor = forbiddenFruit
        character10MenuItem1Label1.position = CGPoint(x: character10MenuItem1.frame.midX, y: character10MenuItem1.frame.midY - character10MenuItem1.frame.size.height)
        character10MenuItem1Label1.zPosition = 4
        addChild(character10MenuItem1Label1)
        
        character10MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character10MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter10Item1)"
        character10MenuItem1Label2.fontSize = 7.5
        character10MenuItem1Label2.fontColor = forbiddenFruit
        character10MenuItem1Label2.position = CGPoint(x: character10MenuItem1.frame.midX, y: character10MenuItem1.frame.midY - character10MenuItem1.frame.size.height - character10MenuItem1Label2.frame.size.height)
        character10MenuItem1Label2.zPosition = 4
        addChild(character10MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character10MenuItem1.frame.midX, y: character10MenuItem1.frame.midY - character10MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character10MenuItem1.frame.midX, y: character10MenuItem1.frame.midY - character10MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character10Menu.position)
        print("MenuItem1", character10MenuItem1.position)
        print("MenuItem1Label1", character10MenuItem1Label1.position)
        print("MenuItem1Label2", character10MenuItem1Label2.position)
    }
    
    func moveCharacter10Menu(view: SKView) {
        // ITEM BACKDROP
        var character10MenuAction: SKAction
        
        // TITLE
        var character10TitleBackdropAction: SKAction
        var character10TitleLabelAction: SKAction
        
        // ITEM 1
        var character10MenuItem1Action: SKAction
        var character10Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character10MenuItem1Label1Action: SKAction
        var character10MenuItem1Label2Action: SKAction
        
        character10MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character10Menu.run(character10MenuAction)
        
        character10TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character10TitleBackdrop.run(character10TitleBackdropAction)
        
        character10TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character10TitleLabel.run(character10TitleLabelAction)
        
        character10MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character10MenuItem1.frame.size.height / 3), duration: 0.25)
        character10MenuItem1.run(character10MenuItem1Action)
        
        character10Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character10MenuItem1.frame.size.height), duration: 0.25)
        character10Item1Title.run(character10Item1TitleAction)
        
        character10MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character10MenuItem1.frame.size.height / 2), duration: 0.25)
        character10MenuItem1Label1.run(character10MenuItem1Label1Action)
        
        character10MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character10MenuItem1.frame.size.height / 2 - character10MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character10MenuItem1Label2.run(character10MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character10MenuItem1.frame.size.height / 2 - character10MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character10MenuItem1.frame.size.height / 2 - character10MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter10Menu(view: SKView) {
        // MOVE ACTIONS
        var character10MenuAction: SKAction // BACKDROP
        var character10TitleBackdropAction: SKAction // TITLE BACKDROP
        var character10TitleLabelAction: SKAction // TITLE
        var character10MenuItem1Action: SKAction // ITEM 1
        var character10Item1TitleAction: SKAction // ITEM 1 TITLE
        var character10MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character10MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character10MenuRemove: SKAction // BACKDROP
        var character10TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character10TitleLabelRemove: SKAction // TITLE
        var character10MenuItem1Remove: SKAction // ITEM 1
        var character10Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character10MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character10MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character10MenuSequence: SKAction // BACKDROP
        var character10TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character10TitleLabelSequence: SKAction // TITLE
        var character10MenuItem1Sequence: SKAction // ITEM 1
        var character10Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character10MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character10MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character10MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character10MenuRemove = SKAction.removeFromParent()
        character10MenuSequence = SKAction.sequence([character10MenuAction, character10MenuRemove])
        character10Menu.run(character10MenuSequence)
        
        character10TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character10TitleBackdropRemove = SKAction.removeFromParent()
        character10TitleBackdropSequence = SKAction.sequence([character10TitleBackdropAction, character10TitleBackdropRemove])
        character10TitleBackdrop.run(character10TitleBackdropSequence)
        
        character10TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character10TitleLabelRemove = SKAction.removeFromParent()
        character10TitleLabelSequence = SKAction.sequence([character10TitleLabelAction, character10TitleLabelRemove])
        character10TitleLabel.run(character10TitleLabelSequence)
        
        character10MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character10MenuItem1Remove = SKAction.removeFromParent()
        character10MenuItem1Sequence = SKAction.sequence([character10MenuItem1Action, character10MenuItem1Remove])
        character10MenuItem1.run(character10MenuItem1Sequence)
        
        character10Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character10Item1TitleRemove = SKAction.removeFromParent()
        character10Item1TitleSequence = SKAction.sequence([character10Item1TitleAction, character10Item1TitleRemove])
        character10Item1Title.run(character10Item1TitleSequence)
        
        character10MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character10MenuItem1Label1Remove = SKAction.removeFromParent()
        character10MenuItem1Label1Sequence = SKAction.sequence([character10MenuItem1Label1Action, character10MenuItem1Label1Remove])
        character10MenuItem1Label1.run(character10MenuItem1Label1Sequence)
        
        character10MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character10MenuItem1Label2Remove = SKAction.removeFromParent()
        character10MenuItem1Label2Sequence = SKAction.sequence([character10MenuItem1Label2Action, character10MenuItem1Label2Remove])
        character10MenuItem1Label2.run(character10MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}

