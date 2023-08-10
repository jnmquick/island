//
//  MenuForCharacter6Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter6Ability: SKNode {
    
    var character6Menu: SKSpriteNode!
    var character6TitleBackdrop: SKSpriteNode!
    var character6TitleLabel: SKLabelNode!
    var character6Item1Title: SKLabelNode!
    var character6MenuItem1: SKSpriteNode!
    var character6MenuItem1Label1: SKLabelNode!
    var character6MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter6Item1 = 0
    var techLevelRequirementCharacter6Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter6(view: SKView) {
        // MENU BACKDROP
        character6Menu = SKSpriteNode(imageNamed: "Asset 30")
        character6Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character6Menu.setScale(0.42)
        character6Menu.zPosition = 3
        character6Menu.name = "character6Menu"
        addChild(character6Menu)
        
        // MENU TITLE
        character6TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character6TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character6TitleBackdrop.setScale(0.42)
        character6TitleBackdrop.zPosition = 3
        addChild(character6TitleBackdrop)
        
        character6TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character6TitleLabel.text = "Dusty"
        character6TitleLabel.fontSize = 18
        character6TitleLabel.fontColor = forbiddenFruit
        character6TitleLabel.position = CGPoint(x: character6TitleBackdrop.frame.midX, y: character6TitleBackdrop.frame.maxY - character6TitleLabel.frame.size.height)
        character6TitleLabel.zPosition = 4
        addChild(character6TitleLabel)
        
        // MENU ITEM 1
        character6MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character6MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character6Menu.position.y)
        character6MenuItem1.zPosition = 4
        character6MenuItem1.setScale(0.24)
        //        character6MenuItem1.fillColor = ghostWhite
        //        character6MenuItem1.strokeColor = SKColor.clear
        character6MenuItem1.name = "character6MenuItem1"
        addChild(character6MenuItem1)
        
        character6Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character6Item1Title.text = "Ability"
        character6Item1Title.fontSize = 9
        character6Item1Title.fontColor = forbiddenFruit
        character6Item1Title.position = CGPoint(x: character6MenuItem1.frame.midX, y: character6MenuItem1.frame.maxY + character6Item1Title.frame.size.height)
        character6Item1Title.zPosition = 4
        addChild(character6Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character6MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character6MenuItem1Label1.text = "Cost: \(priceOfCharacter6Item1)"
        character6MenuItem1Label1.fontSize = 7.5
        character6MenuItem1Label1.fontColor = forbiddenFruit
        character6MenuItem1Label1.position = CGPoint(x: character6MenuItem1.frame.midX, y: character6MenuItem1.frame.midY - character6MenuItem1.frame.size.height)
        character6MenuItem1Label1.zPosition = 4
        addChild(character6MenuItem1Label1)
        
        character6MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character6MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter6Item1)"
        character6MenuItem1Label2.fontSize = 7.5
        character6MenuItem1Label2.fontColor = forbiddenFruit
        character6MenuItem1Label2.position = CGPoint(x: character6MenuItem1.frame.midX, y: character6MenuItem1.frame.midY - character6MenuItem1.frame.size.height - character6MenuItem1Label2.frame.size.height)
        character6MenuItem1Label2.zPosition = 4
        addChild(character6MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character6MenuItem1.frame.midX, y: character6MenuItem1.frame.midY - character6MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character6MenuItem1.frame.midX, y: character6MenuItem1.frame.midY - character6MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character6Menu.position)
        print("MenuItem1", character6MenuItem1.position)
        print("MenuItem1Label1", character6MenuItem1Label1.position)
        print("MenuItem1Label2", character6MenuItem1Label2.position)
    }
    
    func moveCharacter6Menu(view: SKView) {
        // ITEM BACKDROP
        var character6MenuAction: SKAction
        
        // TITLE
        var character6TitleBackdropAction: SKAction
        var character6TitleLabelAction: SKAction
        
        // ITEM 1
        var character6MenuItem1Action: SKAction
        var character6Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character6MenuItem1Label1Action: SKAction
        var character6MenuItem1Label2Action: SKAction
        
        character6MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character6Menu.run(character6MenuAction)
        
        character6TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character6TitleBackdrop.run(character6TitleBackdropAction)
        
        character6TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character6TitleLabel.run(character6TitleLabelAction)
        
        character6MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character6MenuItem1.frame.size.height / 3), duration: 0.25)
        character6MenuItem1.run(character6MenuItem1Action)
        
        character6Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character6MenuItem1.frame.size.height), duration: 0.25)
        character6Item1Title.run(character6Item1TitleAction)
        
        character6MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character6MenuItem1.frame.size.height / 2), duration: 0.25)
        character6MenuItem1Label1.run(character6MenuItem1Label1Action)
        
        character6MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character6MenuItem1.frame.size.height / 2 - character6MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character6MenuItem1Label2.run(character6MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character6MenuItem1.frame.size.height / 2 - character6MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character6MenuItem1.frame.size.height / 2 - character6MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter6Menu(view: SKView) {
        // MOVE ACTIONS
        var character6MenuAction: SKAction // BACKDROP
        var character6TitleBackdropAction: SKAction // TITLE BACKDROP
        var character6TitleLabelAction: SKAction // TITLE
        var character6MenuItem1Action: SKAction // ITEM 1
        var character6Item1TitleAction: SKAction // ITEM 1 TITLE
        var character6MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character6MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character6MenuRemove: SKAction // BACKDROP
        var character6TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character6TitleLabelRemove: SKAction // TITLE
        var character6MenuItem1Remove: SKAction // ITEM 1
        var character6Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character6MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character6MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character6MenuSequence: SKAction // BACKDROP
        var character6TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character6TitleLabelSequence: SKAction // TITLE
        var character6MenuItem1Sequence: SKAction // ITEM 1
        var character6Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character6MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character6MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character6MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character6MenuRemove = SKAction.removeFromParent()
        character6MenuSequence = SKAction.sequence([character6MenuAction, character6MenuRemove])
        character6Menu.run(character6MenuSequence)
        
        character6TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character6TitleBackdropRemove = SKAction.removeFromParent()
        character6TitleBackdropSequence = SKAction.sequence([character6TitleBackdropAction, character6TitleBackdropRemove])
        character6TitleBackdrop.run(character6TitleBackdropSequence)
        
        character6TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character6TitleLabelRemove = SKAction.removeFromParent()
        character6TitleLabelSequence = SKAction.sequence([character6TitleLabelAction, character6TitleLabelRemove])
        character6TitleLabel.run(character6TitleLabelSequence)
        
        character6MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character6MenuItem1Remove = SKAction.removeFromParent()
        character6MenuItem1Sequence = SKAction.sequence([character6MenuItem1Action, character6MenuItem1Remove])
        character6MenuItem1.run(character6MenuItem1Sequence)
        
        character6Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character6Item1TitleRemove = SKAction.removeFromParent()
        character6Item1TitleSequence = SKAction.sequence([character6Item1TitleAction, character6Item1TitleRemove])
        character6Item1Title.run(character6Item1TitleSequence)
        
        character6MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character6MenuItem1Label1Remove = SKAction.removeFromParent()
        character6MenuItem1Label1Sequence = SKAction.sequence([character6MenuItem1Label1Action, character6MenuItem1Label1Remove])
        character6MenuItem1Label1.run(character6MenuItem1Label1Sequence)
        
        character6MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character6MenuItem1Label2Remove = SKAction.removeFromParent()
        character6MenuItem1Label2Sequence = SKAction.sequence([character6MenuItem1Label2Action, character6MenuItem1Label2Remove])
        character6MenuItem1Label2.run(character6MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}

