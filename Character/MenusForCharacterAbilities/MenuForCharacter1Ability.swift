//
//  MenuForCharacter.swift
//  mockup2
//
//  Created by Jason Quick on 7/5/23.
//

import Foundation
import SpriteKit

class MenuForCharacter1Ability: SKNode {
    
    var character1Menu: SKSpriteNode!
    var character1TitleBackdrop: SKSpriteNode!
    var character1TitleLabel: SKLabelNode!
    var character1Item1Title: SKLabelNode!
    var character1MenuItem1: SKSpriteNode!
    var character1MenuItem1Label1: SKLabelNode!
    var character1MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter1Item1 = 0
    var techLevelRequirementCharacter1Item1 = 0
    
    
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter1(view: SKView) {
        // MENU BACKDROP
        character1Menu = SKSpriteNode(imageNamed: "Asset 30")
        character1Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character1Menu.setScale(0.42)
        character1Menu.zPosition = 3
        character1Menu.name = "character1Menu"
        addChild(character1Menu)
        
        // MENU TITLE
        character1TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character1TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character1TitleBackdrop.setScale(0.42)
        character1TitleBackdrop.zPosition = 3
        addChild(character1TitleBackdrop)
        
        character1TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character1TitleLabel.text = "Veteran"
        character1TitleLabel.fontSize = 18
        character1TitleLabel.fontColor = forbiddenFruit
        character1TitleLabel.position = CGPoint(x: character1TitleBackdrop.frame.midX, y: character1TitleBackdrop.frame.maxY - character1TitleLabel.frame.size.height)
        character1TitleLabel.zPosition = 4
        addChild(character1TitleLabel)
        
        // MENU ITEM 1
        character1MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character1MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character1Menu.position.y)
        character1MenuItem1.zPosition = 4
        character1MenuItem1.setScale(0.24)
//        character1MenuItem1.fillColor = ghostWhite
//        character1MenuItem1.strokeColor = SKColor.clear
        character1MenuItem1.name = "character1MenuItem1"
        addChild(character1MenuItem1)
        
        character1Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character1Item1Title.text = "Ability"
        character1Item1Title.fontSize = 9
        character1Item1Title.fontColor = forbiddenFruit
        character1Item1Title.position = CGPoint(x: character1MenuItem1.frame.midX, y: character1MenuItem1.frame.maxY + character1Item1Title.frame.size.height)
        character1Item1Title.zPosition = 4
        addChild(character1Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character1MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character1MenuItem1Label1.text = "Cost: \(priceOfCharacter1Item1)"
        character1MenuItem1Label1.fontSize = 7.5
        character1MenuItem1Label1.fontColor = forbiddenFruit
        character1MenuItem1Label1.position = CGPoint(x: character1MenuItem1.frame.midX, y: character1MenuItem1.frame.midY - character1MenuItem1.frame.size.height)
        character1MenuItem1Label1.zPosition = 4
        addChild(character1MenuItem1Label1)
        
        character1MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character1MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter1Item1)"
        character1MenuItem1Label2.fontSize = 7.5
        character1MenuItem1Label2.fontColor = forbiddenFruit
        character1MenuItem1Label2.position = CGPoint(x: character1MenuItem1.frame.midX, y: character1MenuItem1.frame.midY - character1MenuItem1.frame.size.height - character1MenuItem1Label2.frame.size.height)
        character1MenuItem1Label2.zPosition = 4
        addChild(character1MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character1MenuItem1.frame.midX, y: character1MenuItem1.frame.midY - character1MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character1MenuItem1.frame.midX, y: character1MenuItem1.frame.midY - character1MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character1Menu.position)
        print("MenuItem1", character1MenuItem1.position)
        print("MenuItem1Label1", character1MenuItem1Label1.position)
        print("MenuItem1Label2", character1MenuItem1Label2.position)
    }
    
    func moveCharacter1Menu(view: SKView) {
        // ITEM BACKDROP
        var character1MenuAction: SKAction
        
        // TITLE
        var character1TitleBackdropAction: SKAction
        var character1TitleLabelAction: SKAction
        
        // ITEM 1
        var character1MenuItem1Action: SKAction
        var character1Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character1MenuItem1Label1Action: SKAction
        var character1MenuItem1Label2Action: SKAction
        
        character1MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character1Menu.run(character1MenuAction)
        
        character1TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character1TitleBackdrop.run(character1TitleBackdropAction)
        
        character1TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character1TitleLabel.run(character1TitleLabelAction)
        
        character1MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character1MenuItem1.frame.size.height / 3), duration: 0.25)
        character1MenuItem1.run(character1MenuItem1Action)
        
        character1Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character1MenuItem1.frame.size.height), duration: 0.25)
        character1Item1Title.run(character1Item1TitleAction)
        
        character1MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character1MenuItem1.frame.size.height / 2), duration: 0.25)
        character1MenuItem1Label1.run(character1MenuItem1Label1Action)
        
        character1MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character1MenuItem1.frame.size.height / 2 - character1MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character1MenuItem1Label2.run(character1MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character1MenuItem1.frame.size.height / 2 - character1MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character1MenuItem1.frame.size.height / 2 - character1MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter1Menu(view: SKView) {
        // MOVE ACTIONS
        var character1MenuAction: SKAction // BACKDROP
        var character1TitleBackdropAction: SKAction // TITLE BACKDROP
        var character1TitleLabelAction: SKAction // TITLE
        var character1MenuItem1Action: SKAction // ITEM 1
        var character1Item1TitleAction: SKAction // ITEM 1 TITLE
        var character1MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character1MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character1MenuRemove: SKAction // BACKDROP
        var character1TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character1TitleLabelRemove: SKAction // TITLE
        var character1MenuItem1Remove: SKAction // ITEM 1
        var character1Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character1MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character1MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character1MenuSequence: SKAction // BACKDROP
        var character1TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character1TitleLabelSequence: SKAction // TITLE
        var character1MenuItem1Sequence: SKAction // ITEM 1
        var character1Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character1MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character1MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character1MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character1MenuRemove = SKAction.removeFromParent()
        character1MenuSequence = SKAction.sequence([character1MenuAction, character1MenuRemove])
        character1Menu.run(character1MenuSequence)
        
        character1TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character1TitleBackdropRemove = SKAction.removeFromParent()
        character1TitleBackdropSequence = SKAction.sequence([character1TitleBackdropAction, character1TitleBackdropRemove])
        character1TitleBackdrop.run(character1TitleBackdropSequence)
        
        character1TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character1TitleLabelRemove = SKAction.removeFromParent()
        character1TitleLabelSequence = SKAction.sequence([character1TitleLabelAction, character1TitleLabelRemove])
        character1TitleLabel.run(character1TitleLabelSequence)
        
        character1MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character1MenuItem1Remove = SKAction.removeFromParent()
        character1MenuItem1Sequence = SKAction.sequence([character1MenuItem1Action, character1MenuItem1Remove])
        character1MenuItem1.run(character1MenuItem1Sequence)
        
        character1Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character1Item1TitleRemove = SKAction.removeFromParent()
        character1Item1TitleSequence = SKAction.sequence([character1Item1TitleAction, character1Item1TitleRemove])
        character1Item1Title.run(character1Item1TitleSequence)
        
        character1MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character1MenuItem1Label1Remove = SKAction.removeFromParent()
        character1MenuItem1Label1Sequence = SKAction.sequence([character1MenuItem1Label1Action, character1MenuItem1Label1Remove])
        character1MenuItem1Label1.run(character1MenuItem1Label1Sequence)
        
        character1MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character1MenuItem1Label2Remove = SKAction.removeFromParent()
        character1MenuItem1Label2Sequence = SKAction.sequence([character1MenuItem1Label2Action, character1MenuItem1Label2Remove])
        character1MenuItem1Label2.run(character1MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}
