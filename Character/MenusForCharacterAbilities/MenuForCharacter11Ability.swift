//
//  MenuForCharacter11Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter11Ability: SKNode {
    
    var character11Menu: SKSpriteNode!
    var character11TitleBackdrop: SKSpriteNode!
    var character11TitleLabel: SKLabelNode!
    var character11Item1Title: SKLabelNode!
    var character11MenuItem1: SKSpriteNode!
    var character11MenuItem1Label1: SKLabelNode!
    var character11MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter11Item1 = 0
    var techLevelRequirementCharacter11Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter11(view: SKView) {
        // MENU BACKDROP
        character11Menu = SKSpriteNode(imageNamed: "Asset 30")
        character11Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character11Menu.setScale(0.42)
        character11Menu.zPosition = 3
        character11Menu.name = "character11Menu"
        addChild(character11Menu)
        
        // MENU TITLE
        character11TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character11TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character11TitleBackdrop.setScale(0.42)
        character11TitleBackdrop.zPosition = 3
        addChild(character11TitleBackdrop)
        
        character11TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character11TitleLabel.text = "Brittany"
        character11TitleLabel.fontSize = 18
        character11TitleLabel.fontColor = forbiddenFruit
        character11TitleLabel.position = CGPoint(x: character11TitleBackdrop.frame.midX, y: character11TitleBackdrop.frame.maxY - character11TitleLabel.frame.size.height)
        character11TitleLabel.zPosition = 4
        addChild(character11TitleLabel)
        
        // MENU ITEM 1
        character11MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character11MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character11Menu.position.y)
        character11MenuItem1.zPosition = 4
        character11MenuItem1.setScale(0.24)
        //        character11MenuItem1.fillColor = ghostWhite
        //        character11MenuItem1.strokeColor = SKColor.clear
        character11MenuItem1.name = "character11MenuItem1"
        addChild(character11MenuItem1)
        
        character11Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character11Item1Title.text = "Ability"
        character11Item1Title.fontSize = 9
        character11Item1Title.fontColor = forbiddenFruit
        character11Item1Title.position = CGPoint(x: character11MenuItem1.frame.midX, y: character11MenuItem1.frame.maxY + character11Item1Title.frame.size.height)
        character11Item1Title.zPosition = 4
        addChild(character11Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character11MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character11MenuItem1Label1.text = "Cost: \(priceOfCharacter11Item1)"
        character11MenuItem1Label1.fontSize = 7.5
        character11MenuItem1Label1.fontColor = forbiddenFruit
        character11MenuItem1Label1.position = CGPoint(x: character11MenuItem1.frame.midX, y: character11MenuItem1.frame.midY - character11MenuItem1.frame.size.height)
        character11MenuItem1Label1.zPosition = 4
        addChild(character11MenuItem1Label1)
        
        character11MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character11MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter11Item1)"
        character11MenuItem1Label2.fontSize = 7.5
        character11MenuItem1Label2.fontColor = forbiddenFruit
        character11MenuItem1Label2.position = CGPoint(x: character11MenuItem1.frame.midX, y: character11MenuItem1.frame.midY - character11MenuItem1.frame.size.height - character11MenuItem1Label2.frame.size.height)
        character11MenuItem1Label2.zPosition = 4
        addChild(character11MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character11MenuItem1.frame.midX, y: character11MenuItem1.frame.midY - character11MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character11MenuItem1.frame.midX, y: character11MenuItem1.frame.midY - character11MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character11Menu.position)
        print("MenuItem1", character11MenuItem1.position)
        print("MenuItem1Label1", character11MenuItem1Label1.position)
        print("MenuItem1Label2", character11MenuItem1Label2.position)
    }
    
    func moveCharacter11Menu(view: SKView) {
        // ITEM BACKDROP
        var character11MenuAction: SKAction
        
        // TITLE
        var character11TitleBackdropAction: SKAction
        var character11TitleLabelAction: SKAction
        
        // ITEM 1
        var character11MenuItem1Action: SKAction
        var character11Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character11MenuItem1Label1Action: SKAction
        var character11MenuItem1Label2Action: SKAction
        
        character11MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character11Menu.run(character11MenuAction)
        
        character11TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character11TitleBackdrop.run(character11TitleBackdropAction)
        
        character11TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character11TitleLabel.run(character11TitleLabelAction)
        
        character11MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character11MenuItem1.frame.size.height / 3), duration: 0.25)
        character11MenuItem1.run(character11MenuItem1Action)
        
        character11Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character11MenuItem1.frame.size.height), duration: 0.25)
        character11Item1Title.run(character11Item1TitleAction)
        
        character11MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character11MenuItem1.frame.size.height / 2), duration: 0.25)
        character11MenuItem1Label1.run(character11MenuItem1Label1Action)
        
        character11MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character11MenuItem1.frame.size.height / 2 - character11MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character11MenuItem1Label2.run(character11MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character11MenuItem1.frame.size.height / 2 - character11MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character11MenuItem1.frame.size.height / 2 - character11MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter11Menu(view: SKView) {
        // MOVE ACTIONS
        var character11MenuAction: SKAction // BACKDROP
        var character11TitleBackdropAction: SKAction // TITLE BACKDROP
        var character11TitleLabelAction: SKAction // TITLE
        var character11MenuItem1Action: SKAction // ITEM 1
        var character11Item1TitleAction: SKAction // ITEM 1 TITLE
        var character11MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character11MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character11MenuRemove: SKAction // BACKDROP
        var character11TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character11TitleLabelRemove: SKAction // TITLE
        var character11MenuItem1Remove: SKAction // ITEM 1
        var character11Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character11MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character11MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character11MenuSequence: SKAction // BACKDROP
        var character11TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character11TitleLabelSequence: SKAction // TITLE
        var character11MenuItem1Sequence: SKAction // ITEM 1
        var character11Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character11MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character11MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character11MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character11MenuRemove = SKAction.removeFromParent()
        character11MenuSequence = SKAction.sequence([character11MenuAction, character11MenuRemove])
        character11Menu.run(character11MenuSequence)
        
        character11TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character11TitleBackdropRemove = SKAction.removeFromParent()
        character11TitleBackdropSequence = SKAction.sequence([character11TitleBackdropAction, character11TitleBackdropRemove])
        character11TitleBackdrop.run(character11TitleBackdropSequence)
        
        character11TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character11TitleLabelRemove = SKAction.removeFromParent()
        character11TitleLabelSequence = SKAction.sequence([character11TitleLabelAction, character11TitleLabelRemove])
        character11TitleLabel.run(character11TitleLabelSequence)
        
        character11MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character11MenuItem1Remove = SKAction.removeFromParent()
        character11MenuItem1Sequence = SKAction.sequence([character11MenuItem1Action, character11MenuItem1Remove])
        character11MenuItem1.run(character11MenuItem1Sequence)
        
        character11Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character11Item1TitleRemove = SKAction.removeFromParent()
        character11Item1TitleSequence = SKAction.sequence([character11Item1TitleAction, character11Item1TitleRemove])
        character11Item1Title.run(character11Item1TitleSequence)
        
        character11MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character11MenuItem1Label1Remove = SKAction.removeFromParent()
        character11MenuItem1Label1Sequence = SKAction.sequence([character11MenuItem1Label1Action, character11MenuItem1Label1Remove])
        character11MenuItem1Label1.run(character11MenuItem1Label1Sequence)
        
        character11MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character11MenuItem1Label2Remove = SKAction.removeFromParent()
        character11MenuItem1Label2Sequence = SKAction.sequence([character11MenuItem1Label2Action, character11MenuItem1Label2Remove])
        character11MenuItem1Label2.run(character11MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}

