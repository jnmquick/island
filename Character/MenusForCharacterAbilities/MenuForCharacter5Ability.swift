//
//  MenuForCharacter5Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter5Ability: SKNode {
    
    var character5Menu: SKSpriteNode!
    var character5TitleBackdrop: SKSpriteNode!
    var character5TitleLabel: SKLabelNode!
    var character5Item1Title: SKLabelNode!
    var character5MenuItem1: SKSpriteNode!
    var character5MenuItem1Label1: SKLabelNode!
    var character5MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter5Item1 = 0
    var techLevelRequirementCharacter5Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter5(view: SKView) {
        // MENU BACKDROP
        character5Menu = SKSpriteNode(imageNamed: "Asset 30")
        character5Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character5Menu.setScale(0.42)
        character5Menu.zPosition = 3
        character5Menu.name = "character5Menu"
        addChild(character5Menu)
        
        // MENU TITLE
        character5TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character5TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character5TitleBackdrop.setScale(0.42)
        character5TitleBackdrop.zPosition = 3
        addChild(character5TitleBackdrop)
        
        character5TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character5TitleLabel.text = "Bad Beard"
        character5TitleLabel.fontSize = 18
        character5TitleLabel.fontColor = forbiddenFruit
        character5TitleLabel.position = CGPoint(x: character5TitleBackdrop.frame.midX, y: character5TitleBackdrop.frame.maxY - character5TitleLabel.frame.size.height)
        character5TitleLabel.zPosition = 4
        addChild(character5TitleLabel)
        
        // MENU ITEM 1
        character5MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character5MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character5Menu.position.y)
        character5MenuItem1.zPosition = 4
        character5MenuItem1.setScale(0.24)
        //        character5MenuItem1.fillColor = ghostWhite
        //        character5MenuItem1.strokeColor = SKColor.clear
        character5MenuItem1.name = "character5MenuItem1"
        addChild(character5MenuItem1)
        
        character5Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character5Item1Title.text = "Ability"
        character5Item1Title.fontSize = 9
        character5Item1Title.fontColor = forbiddenFruit
        character5Item1Title.position = CGPoint(x: character5MenuItem1.frame.midX, y: character5MenuItem1.frame.maxY + character5Item1Title.frame.size.height)
        character5Item1Title.zPosition = 4
        addChild(character5Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character5MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character5MenuItem1Label1.text = "Cost: \(priceOfCharacter5Item1)"
        character5MenuItem1Label1.fontSize = 7.5
        character5MenuItem1Label1.fontColor = forbiddenFruit
        character5MenuItem1Label1.position = CGPoint(x: character5MenuItem1.frame.midX, y: character5MenuItem1.frame.midY - character5MenuItem1.frame.size.height)
        character5MenuItem1Label1.zPosition = 4
        addChild(character5MenuItem1Label1)
        
        character5MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character5MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter5Item1)"
        character5MenuItem1Label2.fontSize = 7.5
        character5MenuItem1Label2.fontColor = forbiddenFruit
        character5MenuItem1Label2.position = CGPoint(x: character5MenuItem1.frame.midX, y: character5MenuItem1.frame.midY - character5MenuItem1.frame.size.height - character5MenuItem1Label2.frame.size.height)
        character5MenuItem1Label2.zPosition = 4
        addChild(character5MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character5MenuItem1.frame.midX, y: character5MenuItem1.frame.midY - character5MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character5MenuItem1.frame.midX, y: character5MenuItem1.frame.midY - character5MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character5Menu.position)
        print("MenuItem1", character5MenuItem1.position)
        print("MenuItem1Label1", character5MenuItem1Label1.position)
        print("MenuItem1Label2", character5MenuItem1Label2.position)
    }
    
    func moveCharacter5Menu(view: SKView) {
        // ITEM BACKDROP
        var character5MenuAction: SKAction
        
        // TITLE
        var character5TitleBackdropAction: SKAction
        var character5TitleLabelAction: SKAction
        
        // ITEM 1
        var character5MenuItem1Action: SKAction
        var character5Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character5MenuItem1Label1Action: SKAction
        var character5MenuItem1Label2Action: SKAction
        
        character5MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character5Menu.run(character5MenuAction)
        
        character5TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character5TitleBackdrop.run(character5TitleBackdropAction)
        
        character5TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character5TitleLabel.run(character5TitleLabelAction)
        
        character5MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character5MenuItem1.frame.size.height / 3), duration: 0.25)
        character5MenuItem1.run(character5MenuItem1Action)
        
        character5Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character5MenuItem1.frame.size.height), duration: 0.25)
        character5Item1Title.run(character5Item1TitleAction)
        
        character5MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character5MenuItem1.frame.size.height / 2), duration: 0.25)
        character5MenuItem1Label1.run(character5MenuItem1Label1Action)
        
        character5MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character5MenuItem1.frame.size.height / 2 - character5MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character5MenuItem1Label2.run(character5MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character5MenuItem1.frame.size.height / 2 - character5MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character5MenuItem1.frame.size.height / 2 - character5MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter5Menu(view: SKView) {
        // MOVE ACTIONS
        var character5MenuAction: SKAction // BACKDROP
        var character5TitleBackdropAction: SKAction // TITLE BACKDROP
        var character5TitleLabelAction: SKAction // TITLE
        var character5MenuItem1Action: SKAction // ITEM 1
        var character5Item1TitleAction: SKAction // ITEM 1 TITLE
        var character5MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character5MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character5MenuRemove: SKAction // BACKDROP
        var character5TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character5TitleLabelRemove: SKAction // TITLE
        var character5MenuItem1Remove: SKAction // ITEM 1
        var character5Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character5MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character5MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character5MenuSequence: SKAction // BACKDROP
        var character5TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character5TitleLabelSequence: SKAction // TITLE
        var character5MenuItem1Sequence: SKAction // ITEM 1
        var character5Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character5MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character5MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character5MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character5MenuRemove = SKAction.removeFromParent()
        character5MenuSequence = SKAction.sequence([character5MenuAction, character5MenuRemove])
        character5Menu.run(character5MenuSequence)
        
        character5TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character5TitleBackdropRemove = SKAction.removeFromParent()
        character5TitleBackdropSequence = SKAction.sequence([character5TitleBackdropAction, character5TitleBackdropRemove])
        character5TitleBackdrop.run(character5TitleBackdropSequence)
        
        character5TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character5TitleLabelRemove = SKAction.removeFromParent()
        character5TitleLabelSequence = SKAction.sequence([character5TitleLabelAction, character5TitleLabelRemove])
        character5TitleLabel.run(character5TitleLabelSequence)
        
        character5MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character5MenuItem1Remove = SKAction.removeFromParent()
        character5MenuItem1Sequence = SKAction.sequence([character5MenuItem1Action, character5MenuItem1Remove])
        character5MenuItem1.run(character5MenuItem1Sequence)
        
        character5Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character5Item1TitleRemove = SKAction.removeFromParent()
        character5Item1TitleSequence = SKAction.sequence([character5Item1TitleAction, character5Item1TitleRemove])
        character5Item1Title.run(character5Item1TitleSequence)
        
        character5MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character5MenuItem1Label1Remove = SKAction.removeFromParent()
        character5MenuItem1Label1Sequence = SKAction.sequence([character5MenuItem1Label1Action, character5MenuItem1Label1Remove])
        character5MenuItem1Label1.run(character5MenuItem1Label1Sequence)
        
        character5MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character5MenuItem1Label2Remove = SKAction.removeFromParent()
        character5MenuItem1Label2Sequence = SKAction.sequence([character5MenuItem1Label2Action, character5MenuItem1Label2Remove])
        character5MenuItem1Label2.run(character5MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}

