//
//  MenuForCharacter7Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter7Ability: SKNode {
    
    var character7Menu: SKSpriteNode!
    var character7TitleBackdrop: SKSpriteNode!
    var character7TitleLabel: SKLabelNode!
    var character7Item1Title: SKLabelNode!
    var character7MenuItem1: SKSpriteNode!
    var character7MenuItem1Label1: SKLabelNode!
    var character7MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter7Item1 = 0
    var techLevelRequirementCharacter7Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter7(view: SKView) {
        // MENU BACKDROP
        character7Menu = SKSpriteNode(imageNamed: "Asset 30")
        character7Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character7Menu.setScale(0.42)
        character7Menu.zPosition = 3
        character7Menu.name = "character7Menu"
        addChild(character7Menu)
        
        // MENU TITLE
        character7TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character7TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character7TitleBackdrop.setScale(0.42)
        character7TitleBackdrop.zPosition = 3
        addChild(character7TitleBackdrop)
        
        character7TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character7TitleLabel.text = "Andro Lee"
        character7TitleLabel.fontSize = 18
        character7TitleLabel.fontColor = forbiddenFruit
        character7TitleLabel.position = CGPoint(x: character7TitleBackdrop.frame.midX, y: character7TitleBackdrop.frame.maxY - character7TitleLabel.frame.size.height)
        character7TitleLabel.zPosition = 4
        addChild(character7TitleLabel)
        
        // MENU ITEM 1
        character7MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character7MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character7Menu.position.y)
        character7MenuItem1.zPosition = 4
        character7MenuItem1.setScale(0.24)
        //        character7MenuItem1.fillColor = ghostWhite
        //        character7MenuItem1.strokeColor = SKColor.clear
        character7MenuItem1.name = "character7MenuItem1"
        addChild(character7MenuItem1)
        
        character7Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character7Item1Title.text = "Ability"
        character7Item1Title.fontSize = 9
        character7Item1Title.fontColor = forbiddenFruit
        character7Item1Title.position = CGPoint(x: character7MenuItem1.frame.midX, y: character7MenuItem1.frame.maxY + character7Item1Title.frame.size.height)
        character7Item1Title.zPosition = 4
        addChild(character7Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character7MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character7MenuItem1Label1.text = "Cost: \(priceOfCharacter7Item1)"
        character7MenuItem1Label1.fontSize = 7.5
        character7MenuItem1Label1.fontColor = forbiddenFruit
        character7MenuItem1Label1.position = CGPoint(x: character7MenuItem1.frame.midX, y: character7MenuItem1.frame.midY - character7MenuItem1.frame.size.height)
        character7MenuItem1Label1.zPosition = 4
        addChild(character7MenuItem1Label1)
        
        character7MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character7MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter7Item1)"
        character7MenuItem1Label2.fontSize = 7.5
        character7MenuItem1Label2.fontColor = forbiddenFruit
        character7MenuItem1Label2.position = CGPoint(x: character7MenuItem1.frame.midX, y: character7MenuItem1.frame.midY - character7MenuItem1.frame.size.height - character7MenuItem1Label2.frame.size.height)
        character7MenuItem1Label2.zPosition = 4
        addChild(character7MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character7MenuItem1.frame.midX, y: character7MenuItem1.frame.midY - character7MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character7MenuItem1.frame.midX, y: character7MenuItem1.frame.midY - character7MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character7Menu.position)
        print("MenuItem1", character7MenuItem1.position)
        print("MenuItem1Label1", character7MenuItem1Label1.position)
        print("MenuItem1Label2", character7MenuItem1Label2.position)
    }
    
    func moveCharacter7Menu(view: SKView) {
        // ITEM BACKDROP
        var character7MenuAction: SKAction
        
        // TITLE
        var character7TitleBackdropAction: SKAction
        var character7TitleLabelAction: SKAction
        
        // ITEM 1
        var character7MenuItem1Action: SKAction
        var character7Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character7MenuItem1Label1Action: SKAction
        var character7MenuItem1Label2Action: SKAction
        
        character7MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character7Menu.run(character7MenuAction)
        
        character7TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character7TitleBackdrop.run(character7TitleBackdropAction)
        
        character7TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character7TitleLabel.run(character7TitleLabelAction)
        
        character7MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character7MenuItem1.frame.size.height / 3), duration: 0.25)
        character7MenuItem1.run(character7MenuItem1Action)
        
        character7Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character7MenuItem1.frame.size.height), duration: 0.25)
        character7Item1Title.run(character7Item1TitleAction)
        
        character7MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character7MenuItem1.frame.size.height / 2), duration: 0.25)
        character7MenuItem1Label1.run(character7MenuItem1Label1Action)
        
        character7MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character7MenuItem1.frame.size.height / 2 - character7MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character7MenuItem1Label2.run(character7MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character7MenuItem1.frame.size.height / 2 - character7MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character7MenuItem1.frame.size.height / 2 - character7MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter7Menu(view: SKView) {
        // MOVE ACTIONS
        var character7MenuAction: SKAction // BACKDROP
        var character7TitleBackdropAction: SKAction // TITLE BACKDROP
        var character7TitleLabelAction: SKAction // TITLE
        var character7MenuItem1Action: SKAction // ITEM 1
        var character7Item1TitleAction: SKAction // ITEM 1 TITLE
        var character7MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character7MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character7MenuRemove: SKAction // BACKDROP
        var character7TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character7TitleLabelRemove: SKAction // TITLE
        var character7MenuItem1Remove: SKAction // ITEM 1
        var character7Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character7MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character7MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character7MenuSequence: SKAction // BACKDROP
        var character7TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character7TitleLabelSequence: SKAction // TITLE
        var character7MenuItem1Sequence: SKAction // ITEM 1
        var character7Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character7MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character7MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character7MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character7MenuRemove = SKAction.removeFromParent()
        character7MenuSequence = SKAction.sequence([character7MenuAction, character7MenuRemove])
        character7Menu.run(character7MenuSequence)
        
        character7TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character7TitleBackdropRemove = SKAction.removeFromParent()
        character7TitleBackdropSequence = SKAction.sequence([character7TitleBackdropAction, character7TitleBackdropRemove])
        character7TitleBackdrop.run(character7TitleBackdropSequence)
        
        character7TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character7TitleLabelRemove = SKAction.removeFromParent()
        character7TitleLabelSequence = SKAction.sequence([character7TitleLabelAction, character7TitleLabelRemove])
        character7TitleLabel.run(character7TitleLabelSequence)
        
        character7MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character7MenuItem1Remove = SKAction.removeFromParent()
        character7MenuItem1Sequence = SKAction.sequence([character7MenuItem1Action, character7MenuItem1Remove])
        character7MenuItem1.run(character7MenuItem1Sequence)
        
        character7Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character7Item1TitleRemove = SKAction.removeFromParent()
        character7Item1TitleSequence = SKAction.sequence([character7Item1TitleAction, character7Item1TitleRemove])
        character7Item1Title.run(character7Item1TitleSequence)
        
        character7MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character7MenuItem1Label1Remove = SKAction.removeFromParent()
        character7MenuItem1Label1Sequence = SKAction.sequence([character7MenuItem1Label1Action, character7MenuItem1Label1Remove])
        character7MenuItem1Label1.run(character7MenuItem1Label1Sequence)
        
        character7MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character7MenuItem1Label2Remove = SKAction.removeFromParent()
        character7MenuItem1Label2Sequence = SKAction.sequence([character7MenuItem1Label2Action, character7MenuItem1Label2Remove])
        character7MenuItem1Label2.run(character7MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}

