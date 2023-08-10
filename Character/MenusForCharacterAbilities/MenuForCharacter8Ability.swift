//
//  MenuForCharacter8Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter8Ability: SKNode {
    
    var character8Menu: SKSpriteNode!
    var character8TitleBackdrop: SKSpriteNode!
    var character8TitleLabel: SKLabelNode!
    var character8Item1Title: SKLabelNode!
    var character8MenuItem1: SKSpriteNode!
    var character8MenuItem1Label1: SKLabelNode!
    var character8MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter8Item1 = 0
    var techLevelRequirementCharacter8Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter8(view: SKView) {
        // MENU BACKDROP
        character8Menu = SKSpriteNode(imageNamed: "Asset 30")
        character8Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character8Menu.setScale(0.42)
        character8Menu.zPosition = 3
        character8Menu.name = "character8Menu"
        addChild(character8Menu)
        
        // MENU TITLE
        character8TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character8TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character8TitleBackdrop.setScale(0.42)
        character8TitleBackdrop.zPosition = 3
        addChild(character8TitleBackdrop)
        
        character8TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character8TitleLabel.text = "Chop-Pan"
        character8TitleLabel.fontSize = 18
        character8TitleLabel.fontColor = forbiddenFruit
        character8TitleLabel.position = CGPoint(x: character8TitleBackdrop.frame.midX, y: character8TitleBackdrop.frame.maxY - character8TitleLabel.frame.size.height)
        character8TitleLabel.zPosition = 4
        addChild(character8TitleLabel)
        
        // MENU ITEM 1
        character8MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character8MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character8Menu.position.y)
        character8MenuItem1.zPosition = 4
        character8MenuItem1.setScale(0.24)
        //        character8MenuItem1.fillColor = ghostWhite
        //        character8MenuItem1.strokeColor = SKColor.clear
        character8MenuItem1.name = "character8MenuItem1"
        addChild(character8MenuItem1)
        
        character8Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character8Item1Title.text = "Ability"
        character8Item1Title.fontSize = 9
        character8Item1Title.fontColor = forbiddenFruit
        character8Item1Title.position = CGPoint(x: character8MenuItem1.frame.midX, y: character8MenuItem1.frame.maxY + character8Item1Title.frame.size.height)
        character8Item1Title.zPosition = 4
        addChild(character8Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character8MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character8MenuItem1Label1.text = "Cost: \(priceOfCharacter8Item1)"
        character8MenuItem1Label1.fontSize = 7.5
        character8MenuItem1Label1.fontColor = forbiddenFruit
        character8MenuItem1Label1.position = CGPoint(x: character8MenuItem1.frame.midX, y: character8MenuItem1.frame.midY - character8MenuItem1.frame.size.height)
        character8MenuItem1Label1.zPosition = 4
        addChild(character8MenuItem1Label1)
        
        character8MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character8MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter8Item1)"
        character8MenuItem1Label2.fontSize = 7.5
        character8MenuItem1Label2.fontColor = forbiddenFruit
        character8MenuItem1Label2.position = CGPoint(x: character8MenuItem1.frame.midX, y: character8MenuItem1.frame.midY - character8MenuItem1.frame.size.height - character8MenuItem1Label2.frame.size.height)
        character8MenuItem1Label2.zPosition = 4
        addChild(character8MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character8MenuItem1.frame.midX, y: character8MenuItem1.frame.midY - character8MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character8MenuItem1.frame.midX, y: character8MenuItem1.frame.midY - character8MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character8Menu.position)
        print("MenuItem1", character8MenuItem1.position)
        print("MenuItem1Label1", character8MenuItem1Label1.position)
        print("MenuItem1Label2", character8MenuItem1Label2.position)
    }
    
    func moveCharacter8Menu(view: SKView) {
        // ITEM BACKDROP
        var character8MenuAction: SKAction
        
        // TITLE
        var character8TitleBackdropAction: SKAction
        var character8TitleLabelAction: SKAction
        
        // ITEM 1
        var character8MenuItem1Action: SKAction
        var character8Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character8MenuItem1Label1Action: SKAction
        var character8MenuItem1Label2Action: SKAction
        
        character8MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character8Menu.run(character8MenuAction)
        
        character8TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character8TitleBackdrop.run(character8TitleBackdropAction)
        
        character8TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character8TitleLabel.run(character8TitleLabelAction)
        
        character8MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character8MenuItem1.frame.size.height / 3), duration: 0.25)
        character8MenuItem1.run(character8MenuItem1Action)
        
        character8Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character8MenuItem1.frame.size.height), duration: 0.25)
        character8Item1Title.run(character8Item1TitleAction)
        
        character8MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character8MenuItem1.frame.size.height / 2), duration: 0.25)
        character8MenuItem1Label1.run(character8MenuItem1Label1Action)
        
        character8MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character8MenuItem1.frame.size.height / 2 - character8MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character8MenuItem1Label2.run(character8MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character8MenuItem1.frame.size.height / 2 - character8MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character8MenuItem1.frame.size.height / 2 - character8MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter8Menu(view: SKView) {
        // MOVE ACTIONS
        var character8MenuAction: SKAction // BACKDROP
        var character8TitleBackdropAction: SKAction // TITLE BACKDROP
        var character8TitleLabelAction: SKAction // TITLE
        var character8MenuItem1Action: SKAction // ITEM 1
        var character8Item1TitleAction: SKAction // ITEM 1 TITLE
        var character8MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character8MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character8MenuRemove: SKAction // BACKDROP
        var character8TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character8TitleLabelRemove: SKAction // TITLE
        var character8MenuItem1Remove: SKAction // ITEM 1
        var character8Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character8MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character8MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character8MenuSequence: SKAction // BACKDROP
        var character8TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character8TitleLabelSequence: SKAction // TITLE
        var character8MenuItem1Sequence: SKAction // ITEM 1
        var character8Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character8MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character8MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character8MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character8MenuRemove = SKAction.removeFromParent()
        character8MenuSequence = SKAction.sequence([character8MenuAction, character8MenuRemove])
        character8Menu.run(character8MenuSequence)
        
        character8TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character8TitleBackdropRemove = SKAction.removeFromParent()
        character8TitleBackdropSequence = SKAction.sequence([character8TitleBackdropAction, character8TitleBackdropRemove])
        character8TitleBackdrop.run(character8TitleBackdropSequence)
        
        character8TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character8TitleLabelRemove = SKAction.removeFromParent()
        character8TitleLabelSequence = SKAction.sequence([character8TitleLabelAction, character8TitleLabelRemove])
        character8TitleLabel.run(character8TitleLabelSequence)
        
        character8MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character8MenuItem1Remove = SKAction.removeFromParent()
        character8MenuItem1Sequence = SKAction.sequence([character8MenuItem1Action, character8MenuItem1Remove])
        character8MenuItem1.run(character8MenuItem1Sequence)
        
        character8Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character8Item1TitleRemove = SKAction.removeFromParent()
        character8Item1TitleSequence = SKAction.sequence([character8Item1TitleAction, character8Item1TitleRemove])
        character8Item1Title.run(character8Item1TitleSequence)
        
        character8MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character8MenuItem1Label1Remove = SKAction.removeFromParent()
        character8MenuItem1Label1Sequence = SKAction.sequence([character8MenuItem1Label1Action, character8MenuItem1Label1Remove])
        character8MenuItem1Label1.run(character8MenuItem1Label1Sequence)
        
        character8MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character8MenuItem1Label2Remove = SKAction.removeFromParent()
        character8MenuItem1Label2Sequence = SKAction.sequence([character8MenuItem1Label2Action, character8MenuItem1Label2Remove])
        character8MenuItem1Label2.run(character8MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}

