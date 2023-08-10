//
//  MenuForCharacter4Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter4Ability: SKNode {
    
    var character4Menu: SKSpriteNode!
    var character4TitleBackdrop: SKSpriteNode!
    var character4TitleLabel: SKLabelNode!
    var character4Item1Title: SKLabelNode!
    var character4MenuItem1: SKSpriteNode!
    var character4MenuItem1Label1: SKLabelNode!
    var character4MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter4Item1 = 0
    var techLevelRequirementCharacter4Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter4(view: SKView) {
        // MENU BACKDROP
        character4Menu = SKSpriteNode(imageNamed: "Asset 30")
        character4Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character4Menu.setScale(0.42)
        character4Menu.zPosition = 3
        character4Menu.name = "character4Menu"
        addChild(character4Menu)
        
        // MENU TITLE
        character4TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character4TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character4TitleBackdrop.setScale(0.42)
        character4TitleBackdrop.zPosition = 3
        addChild(character4TitleBackdrop)
        
        character4TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character4TitleLabel.text = "Grizzly"
        character4TitleLabel.fontSize = 18
        character4TitleLabel.fontColor = forbiddenFruit
        character4TitleLabel.position = CGPoint(x: character4TitleBackdrop.frame.midX, y: character4TitleBackdrop.frame.maxY - character4TitleLabel.frame.size.height)
        character4TitleLabel.zPosition = 4
        addChild(character4TitleLabel)
        
        // MENU ITEM 1
        character4MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character4MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character4Menu.position.y)
        character4MenuItem1.zPosition = 4
        character4MenuItem1.setScale(0.24)
        //        character4MenuItem1.fillColor = ghostWhite
        //        character4MenuItem1.strokeColor = SKColor.clear
        character4MenuItem1.name = "character4MenuItem1"
        addChild(character4MenuItem1)
        
        character4Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character4Item1Title.text = "Ability"
        character4Item1Title.fontSize = 9
        character4Item1Title.fontColor = forbiddenFruit
        character4Item1Title.position = CGPoint(x: character4MenuItem1.frame.midX, y: character4MenuItem1.frame.maxY + character4Item1Title.frame.size.height)
        character4Item1Title.zPosition = 4
        addChild(character4Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character4MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character4MenuItem1Label1.text = "Cost: \(priceOfCharacter4Item1)"
        character4MenuItem1Label1.fontSize = 7.5
        character4MenuItem1Label1.fontColor = forbiddenFruit
        character4MenuItem1Label1.position = CGPoint(x: character4MenuItem1.frame.midX, y: character4MenuItem1.frame.midY - character4MenuItem1.frame.size.height)
        character4MenuItem1Label1.zPosition = 4
        addChild(character4MenuItem1Label1)
        
        character4MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character4MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter4Item1)"
        character4MenuItem1Label2.fontSize = 7.5
        character4MenuItem1Label2.fontColor = forbiddenFruit
        character4MenuItem1Label2.position = CGPoint(x: character4MenuItem1.frame.midX, y: character4MenuItem1.frame.midY - character4MenuItem1.frame.size.height - character4MenuItem1Label2.frame.size.height)
        character4MenuItem1Label2.zPosition = 4
        addChild(character4MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character4MenuItem1.frame.midX, y: character4MenuItem1.frame.midY - character4MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character4MenuItem1.frame.midX, y: character4MenuItem1.frame.midY - character4MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character4Menu.position)
        print("MenuItem1", character4MenuItem1.position)
        print("MenuItem1Label1", character4MenuItem1Label1.position)
        print("MenuItem1Label2", character4MenuItem1Label2.position)
    }
    
    func moveCharacter4Menu(view: SKView) {
        // ITEM BACKDROP
        var character4MenuAction: SKAction
        
        // TITLE
        var character4TitleBackdropAction: SKAction
        var character4TitleLabelAction: SKAction
        
        // ITEM 1
        var character4MenuItem1Action: SKAction
        var character4Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character4MenuItem1Label1Action: SKAction
        var character4MenuItem1Label2Action: SKAction
        
        character4MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character4Menu.run(character4MenuAction)
        
        character4TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character4TitleBackdrop.run(character4TitleBackdropAction)
        
        character4TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character4TitleLabel.run(character4TitleLabelAction)
        
        character4MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character4MenuItem1.frame.size.height / 3), duration: 0.25)
        character4MenuItem1.run(character4MenuItem1Action)
        
        character4Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character4MenuItem1.frame.size.height), duration: 0.25)
        character4Item1Title.run(character4Item1TitleAction)
        
        character4MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character4MenuItem1.frame.size.height / 2), duration: 0.25)
        character4MenuItem1Label1.run(character4MenuItem1Label1Action)
        
        character4MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character4MenuItem1.frame.size.height / 2 - character4MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character4MenuItem1Label2.run(character4MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character4MenuItem1.frame.size.height / 2 - character4MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character4MenuItem1.frame.size.height / 2 - character4MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter4Menu(view: SKView) {
        // MOVE ACTIONS
        var character4MenuAction: SKAction // BACKDROP
        var character4TitleBackdropAction: SKAction // TITLE BACKDROP
        var character4TitleLabelAction: SKAction // TITLE
        var character4MenuItem1Action: SKAction // ITEM 1
        var character4Item1TitleAction: SKAction // ITEM 1 TITLE
        var character4MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character4MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character4MenuRemove: SKAction // BACKDROP
        var character4TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character4TitleLabelRemove: SKAction // TITLE
        var character4MenuItem1Remove: SKAction // ITEM 1
        var character4Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character4MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character4MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character4MenuSequence: SKAction // BACKDROP
        var character4TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character4TitleLabelSequence: SKAction // TITLE
        var character4MenuItem1Sequence: SKAction // ITEM 1
        var character4Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character4MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character4MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character4MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character4MenuRemove = SKAction.removeFromParent()
        character4MenuSequence = SKAction.sequence([character4MenuAction, character4MenuRemove])
        character4Menu.run(character4MenuSequence)
        
        character4TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character4TitleBackdropRemove = SKAction.removeFromParent()
        character4TitleBackdropSequence = SKAction.sequence([character4TitleBackdropAction, character4TitleBackdropRemove])
        character4TitleBackdrop.run(character4TitleBackdropSequence)
        
        character4TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character4TitleLabelRemove = SKAction.removeFromParent()
        character4TitleLabelSequence = SKAction.sequence([character4TitleLabelAction, character4TitleLabelRemove])
        character4TitleLabel.run(character4TitleLabelSequence)
        
        character4MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character4MenuItem1Remove = SKAction.removeFromParent()
        character4MenuItem1Sequence = SKAction.sequence([character4MenuItem1Action, character4MenuItem1Remove])
        character4MenuItem1.run(character4MenuItem1Sequence)
        
        character4Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character4Item1TitleRemove = SKAction.removeFromParent()
        character4Item1TitleSequence = SKAction.sequence([character4Item1TitleAction, character4Item1TitleRemove])
        character4Item1Title.run(character4Item1TitleSequence)
        
        character4MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character4MenuItem1Label1Remove = SKAction.removeFromParent()
        character4MenuItem1Label1Sequence = SKAction.sequence([character4MenuItem1Label1Action, character4MenuItem1Label1Remove])
        character4MenuItem1Label1.run(character4MenuItem1Label1Sequence)
        
        character4MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character4MenuItem1Label2Remove = SKAction.removeFromParent()
        character4MenuItem1Label2Sequence = SKAction.sequence([character4MenuItem1Label2Action, character4MenuItem1Label2Remove])
        character4MenuItem1Label2.run(character4MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}

