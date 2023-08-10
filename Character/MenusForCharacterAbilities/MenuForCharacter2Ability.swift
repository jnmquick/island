//
//  MenuForCharacter2Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter2Ability: SKNode {
    
    var character2Menu: SKSpriteNode!
    var character2TitleBackdrop: SKSpriteNode!
    var character2TitleLabel: SKLabelNode!
    var character2Item1Title: SKLabelNode!
    var character2MenuItem1: SKSpriteNode!
    var character2MenuItem1Label1: SKLabelNode!
    var character2MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter2Item1 = 0
    var techLevelRequirementCharacter2Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter2(view: SKView) {
        // MENU BACKDROP
        character2Menu = SKSpriteNode(imageNamed: "Asset 30")
        character2Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character2Menu.setScale(0.42)
        character2Menu.zPosition = 3
        character2Menu.name = "character2Menu"
        addChild(character2Menu)
        
        // MENU TITLE
        character2TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character2TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character2TitleBackdrop.setScale(0.42)
        character2TitleBackdrop.zPosition = 3
        addChild(character2TitleBackdrop)
        
        character2TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character2TitleLabel.text = "Sasquatch"
        character2TitleLabel.fontSize = 18
        character2TitleLabel.fontColor = forbiddenFruit
        character2TitleLabel.position = CGPoint(x: character2TitleBackdrop.frame.midX, y: character2TitleBackdrop.frame.maxY - character2TitleLabel.frame.size.height)
        character2TitleLabel.zPosition = 4
        addChild(character2TitleLabel)
        
        // MENU ITEM 1
        character2MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character2MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character2Menu.position.y)
        character2MenuItem1.zPosition = 4
        character2MenuItem1.setScale(0.24)
        //        character2MenuItem1.fillColor = ghostWhite
        //        character2MenuItem1.strokeColor = SKColor.clear
        character2MenuItem1.name = "character2MenuItem1"
        addChild(character2MenuItem1)
        
        character2Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character2Item1Title.text = "Ability"
        character2Item1Title.fontSize = 9
        character2Item1Title.fontColor = forbiddenFruit
        character2Item1Title.position = CGPoint(x: character2MenuItem1.frame.midX, y: character2MenuItem1.frame.maxY + character2Item1Title.frame.size.height)
        character2Item1Title.zPosition = 4
        addChild(character2Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character2MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character2MenuItem1Label1.text = "Cost: \(priceOfCharacter2Item1)"
        character2MenuItem1Label1.fontSize = 7.5
        character2MenuItem1Label1.fontColor = forbiddenFruit
        character2MenuItem1Label1.position = CGPoint(x: character2MenuItem1.frame.midX, y: character2MenuItem1.frame.midY - character2MenuItem1.frame.size.height)
        character2MenuItem1Label1.zPosition = 4
        addChild(character2MenuItem1Label1)
        
        character2MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character2MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter2Item1)"
        character2MenuItem1Label2.fontSize = 7.5
        character2MenuItem1Label2.fontColor = forbiddenFruit
        character2MenuItem1Label2.position = CGPoint(x: character2MenuItem1.frame.midX, y: character2MenuItem1.frame.midY - character2MenuItem1.frame.size.height - character2MenuItem1Label2.frame.size.height)
        character2MenuItem1Label2.zPosition = 4
        addChild(character2MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character2MenuItem1.frame.midX, y: character2MenuItem1.frame.midY - character2MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character2MenuItem1.frame.midX, y: character2MenuItem1.frame.midY - character2MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character2Menu.position)
        print("MenuItem1", character2MenuItem1.position)
        print("MenuItem1Label1", character2MenuItem1Label1.position)
        print("MenuItem1Label2", character2MenuItem1Label2.position)
    }
    
    func moveCharacter2Menu(view: SKView) {
        // ITEM BACKDROP
        var character2MenuAction: SKAction
        
        // TITLE
        var character2TitleBackdropAction: SKAction
        var character2TitleLabelAction: SKAction
        
        // ITEM 1
        var character2MenuItem1Action: SKAction
        var character2Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character2MenuItem1Label1Action: SKAction
        var character2MenuItem1Label2Action: SKAction
        
        character2MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character2Menu.run(character2MenuAction)
        
        character2TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character2TitleBackdrop.run(character2TitleBackdropAction)
        
        character2TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character2TitleLabel.run(character2TitleLabelAction)
        
        character2MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character2MenuItem1.frame.size.height / 3), duration: 0.25)
        character2MenuItem1.run(character2MenuItem1Action)
        
        character2Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character2MenuItem1.frame.size.height), duration: 0.25)
        character2Item1Title.run(character2Item1TitleAction)
        
        character2MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character2MenuItem1.frame.size.height / 2), duration: 0.25)
        character2MenuItem1Label1.run(character2MenuItem1Label1Action)
        
        character2MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character2MenuItem1.frame.size.height / 2 - character2MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character2MenuItem1Label2.run(character2MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character2MenuItem1.frame.size.height / 2 - character2MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character2MenuItem1.frame.size.height / 2 - character2MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter2Menu(view: SKView) {
        // MOVE ACTIONS
        var character2MenuAction: SKAction // BACKDROP
        var character2TitleBackdropAction: SKAction // TITLE BACKDROP
        var character2TitleLabelAction: SKAction // TITLE
        var character2MenuItem1Action: SKAction // ITEM 1
        var character2Item1TitleAction: SKAction // ITEM 1 TITLE
        var character2MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character2MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character2MenuRemove: SKAction // BACKDROP
        var character2TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character2TitleLabelRemove: SKAction // TITLE
        var character2MenuItem1Remove: SKAction // ITEM 1
        var character2Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character2MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character2MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character2MenuSequence: SKAction // BACKDROP
        var character2TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character2TitleLabelSequence: SKAction // TITLE
        var character2MenuItem1Sequence: SKAction // ITEM 1
        var character2Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character2MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character2MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character2MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character2MenuRemove = SKAction.removeFromParent()
        character2MenuSequence = SKAction.sequence([character2MenuAction, character2MenuRemove])
        character2Menu.run(character2MenuSequence)
        
        character2TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character2TitleBackdropRemove = SKAction.removeFromParent()
        character2TitleBackdropSequence = SKAction.sequence([character2TitleBackdropAction, character2TitleBackdropRemove])
        character2TitleBackdrop.run(character2TitleBackdropSequence)
        
        character2TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character2TitleLabelRemove = SKAction.removeFromParent()
        character2TitleLabelSequence = SKAction.sequence([character2TitleLabelAction, character2TitleLabelRemove])
        character2TitleLabel.run(character2TitleLabelSequence)
        
        character2MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character2MenuItem1Remove = SKAction.removeFromParent()
        character2MenuItem1Sequence = SKAction.sequence([character2MenuItem1Action, character2MenuItem1Remove])
        character2MenuItem1.run(character2MenuItem1Sequence)
        
        character2Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character2Item1TitleRemove = SKAction.removeFromParent()
        character2Item1TitleSequence = SKAction.sequence([character2Item1TitleAction, character2Item1TitleRemove])
        character2Item1Title.run(character2Item1TitleSequence)
        
        character2MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character2MenuItem1Label1Remove = SKAction.removeFromParent()
        character2MenuItem1Label1Sequence = SKAction.sequence([character2MenuItem1Label1Action, character2MenuItem1Label1Remove])
        character2MenuItem1Label1.run(character2MenuItem1Label1Sequence)
        
        character2MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character2MenuItem1Label2Remove = SKAction.removeFromParent()
        character2MenuItem1Label2Sequence = SKAction.sequence([character2MenuItem1Label2Action, character2MenuItem1Label2Remove])
        character2MenuItem1Label2.run(character2MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}
