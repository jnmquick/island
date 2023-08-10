//
//  MenuForCharacter9Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter9Ability: SKNode {
    
    var character9Menu: SKSpriteNode!
    var character9TitleBackdrop: SKSpriteNode!
    var character9TitleLabel: SKLabelNode!
    var character9Item1Title: SKLabelNode!
    var character9MenuItem1: SKSpriteNode!
    var character9MenuItem1Label1: SKLabelNode!
    var character9MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter9Item1 = 0
    var techLevelRequirementCharacter9Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter9(view: SKView) {
        // MENU BACKDROP
        character9Menu = SKSpriteNode(imageNamed: "Asset 30")
        character9Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character9Menu.setScale(0.42)
        character9Menu.zPosition = 3
        character9Menu.name = "character9Menu"
        addChild(character9Menu)
        
        // MENU TITLE
        character9TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character9TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character9TitleBackdrop.setScale(0.42)
        character9TitleBackdrop.zPosition = 3
        addChild(character9TitleBackdrop)
        
        character9TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character9TitleLabel.text = "G Sauce"
        character9TitleLabel.fontSize = 18
        character9TitleLabel.fontColor = forbiddenFruit
        character9TitleLabel.position = CGPoint(x: character9TitleBackdrop.frame.midX, y: character9TitleBackdrop.frame.maxY - character9TitleLabel.frame.size.height)
        character9TitleLabel.zPosition = 4
        addChild(character9TitleLabel)
        
        // MENU ITEM 1
        character9MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character9MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character9Menu.position.y)
        character9MenuItem1.zPosition = 4
        character9MenuItem1.setScale(0.24)
        //        character9MenuItem1.fillColor = ghostWhite
        //        character9MenuItem1.strokeColor = SKColor.clear
        character9MenuItem1.name = "character9MenuItem1"
        addChild(character9MenuItem1)
        
        character9Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character9Item1Title.text = "Ability"
        character9Item1Title.fontSize = 9
        character9Item1Title.fontColor = forbiddenFruit
        character9Item1Title.position = CGPoint(x: character9MenuItem1.frame.midX, y: character9MenuItem1.frame.maxY + character9Item1Title.frame.size.height)
        character9Item1Title.zPosition = 4
        addChild(character9Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character9MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character9MenuItem1Label1.text = "Cost: \(priceOfCharacter9Item1)"
        character9MenuItem1Label1.fontSize = 7.5
        character9MenuItem1Label1.fontColor = forbiddenFruit
        character9MenuItem1Label1.position = CGPoint(x: character9MenuItem1.frame.midX, y: character9MenuItem1.frame.midY - character9MenuItem1.frame.size.height)
        character9MenuItem1Label1.zPosition = 4
        addChild(character9MenuItem1Label1)
        
        character9MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character9MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter9Item1)"
        character9MenuItem1Label2.fontSize = 7.5
        character9MenuItem1Label2.fontColor = forbiddenFruit
        character9MenuItem1Label2.position = CGPoint(x: character9MenuItem1.frame.midX, y: character9MenuItem1.frame.midY - character9MenuItem1.frame.size.height - character9MenuItem1Label2.frame.size.height)
        character9MenuItem1Label2.zPosition = 4
        addChild(character9MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character9MenuItem1.frame.midX, y: character9MenuItem1.frame.midY - character9MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character9MenuItem1.frame.midX, y: character9MenuItem1.frame.midY - character9MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character9Menu.position)
        print("MenuItem1", character9MenuItem1.position)
        print("MenuItem1Label1", character9MenuItem1Label1.position)
        print("MenuItem1Label2", character9MenuItem1Label2.position)
    }
    
    func moveCharacter9Menu(view: SKView) {
        // ITEM BACKDROP
        var character9MenuAction: SKAction
        
        // TITLE
        var character9TitleBackdropAction: SKAction
        var character9TitleLabelAction: SKAction
        
        // ITEM 1
        var character9MenuItem1Action: SKAction
        var character9Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character9MenuItem1Label1Action: SKAction
        var character9MenuItem1Label2Action: SKAction
        
        character9MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character9Menu.run(character9MenuAction)
        
        character9TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character9TitleBackdrop.run(character9TitleBackdropAction)
        
        character9TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character9TitleLabel.run(character9TitleLabelAction)
        
        character9MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character9MenuItem1.frame.size.height / 3), duration: 0.25)
        character9MenuItem1.run(character9MenuItem1Action)
        
        character9Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character9MenuItem1.frame.size.height), duration: 0.25)
        character9Item1Title.run(character9Item1TitleAction)
        
        character9MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character9MenuItem1.frame.size.height / 2), duration: 0.25)
        character9MenuItem1Label1.run(character9MenuItem1Label1Action)
        
        character9MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character9MenuItem1.frame.size.height / 2 - character9MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character9MenuItem1Label2.run(character9MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character9MenuItem1.frame.size.height / 2 - character9MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character9MenuItem1.frame.size.height / 2 - character9MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter9Menu(view: SKView) {
        // MOVE ACTIONS
        var character9MenuAction: SKAction // BACKDROP
        var character9TitleBackdropAction: SKAction // TITLE BACKDROP
        var character9TitleLabelAction: SKAction // TITLE
        var character9MenuItem1Action: SKAction // ITEM 1
        var character9Item1TitleAction: SKAction // ITEM 1 TITLE
        var character9MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character9MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character9MenuRemove: SKAction // BACKDROP
        var character9TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character9TitleLabelRemove: SKAction // TITLE
        var character9MenuItem1Remove: SKAction // ITEM 1
        var character9Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character9MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character9MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character9MenuSequence: SKAction // BACKDROP
        var character9TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character9TitleLabelSequence: SKAction // TITLE
        var character9MenuItem1Sequence: SKAction // ITEM 1
        var character9Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character9MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character9MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character9MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character9MenuRemove = SKAction.removeFromParent()
        character9MenuSequence = SKAction.sequence([character9MenuAction, character9MenuRemove])
        character9Menu.run(character9MenuSequence)
        
        character9TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character9TitleBackdropRemove = SKAction.removeFromParent()
        character9TitleBackdropSequence = SKAction.sequence([character9TitleBackdropAction, character9TitleBackdropRemove])
        character9TitleBackdrop.run(character9TitleBackdropSequence)
        
        character9TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character9TitleLabelRemove = SKAction.removeFromParent()
        character9TitleLabelSequence = SKAction.sequence([character9TitleLabelAction, character9TitleLabelRemove])
        character9TitleLabel.run(character9TitleLabelSequence)
        
        character9MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character9MenuItem1Remove = SKAction.removeFromParent()
        character9MenuItem1Sequence = SKAction.sequence([character9MenuItem1Action, character9MenuItem1Remove])
        character9MenuItem1.run(character9MenuItem1Sequence)
        
        character9Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character9Item1TitleRemove = SKAction.removeFromParent()
        character9Item1TitleSequence = SKAction.sequence([character9Item1TitleAction, character9Item1TitleRemove])
        character9Item1Title.run(character9Item1TitleSequence)
        
        character9MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character9MenuItem1Label1Remove = SKAction.removeFromParent()
        character9MenuItem1Label1Sequence = SKAction.sequence([character9MenuItem1Label1Action, character9MenuItem1Label1Remove])
        character9MenuItem1Label1.run(character9MenuItem1Label1Sequence)
        
        character9MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character9MenuItem1Label2Remove = SKAction.removeFromParent()
        character9MenuItem1Label2Sequence = SKAction.sequence([character9MenuItem1Label2Action, character9MenuItem1Label2Remove])
        character9MenuItem1Label2.run(character9MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}

