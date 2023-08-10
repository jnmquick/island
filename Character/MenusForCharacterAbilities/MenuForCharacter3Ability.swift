//
//  MenuForCharacter3Ability.swift
//  mockup2
//
//  Created by Jason Quick on 8/8/23.
//

import Foundation
import SpriteKit

class MenuForCharacter3Ability: SKNode {
    
    var character3Menu: SKSpriteNode!
    var character3TitleBackdrop: SKSpriteNode!
    var character3TitleLabel: SKLabelNode!
    var character3Item1Title: SKLabelNode!
    var character3MenuItem1: SKSpriteNode!
    var character3MenuItem1Label1: SKLabelNode!
    var character3MenuItem1Label2: SKLabelNode!
    var item1Label1: SKLabelNode!
    var item1Label2: SKLabelNode!
    
    var priceOfCharacter3Item1 = 0
    var techLevelRequirementCharacter3Item1 = 0
    
    // CHARACTER 1 ------------------- MENU
    
    func createMenuForCharacter3(view: SKView) {
        // MENU BACKDROP
        character3Menu = SKSpriteNode(imageNamed: "Asset 30")
        character3Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character3Menu.setScale(0.42)
        character3Menu.zPosition = 3
        character3Menu.name = "character3Menu"
        addChild(character3Menu)
        
        // MENU TITLE
        character3TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        character3TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        character3TitleBackdrop.setScale(0.42)
        character3TitleBackdrop.zPosition = 3
        addChild(character3TitleBackdrop)
        
        character3TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        character3TitleLabel.text = "Zenabell"
        character3TitleLabel.fontSize = 18
        character3TitleLabel.fontColor = forbiddenFruit
        character3TitleLabel.position = CGPoint(x: character3TitleBackdrop.frame.midX, y: character3TitleBackdrop.frame.maxY - character3TitleLabel.frame.size.height)
        character3TitleLabel.zPosition = 4
        addChild(character3TitleLabel)
        
        // MENU ITEM 1
        character3MenuItem1 = SKSpriteNode(imageNamed: "Asset 23")
        character3MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: character3Menu.position.y)
        character3MenuItem1.zPosition = 4
        character3MenuItem1.setScale(0.24)
        //        character3MenuItem1.fillColor = ghostWhite
        //        character3MenuItem1.strokeColor = SKColor.clear
        character3MenuItem1.name = "character3MenuItem1"
        addChild(character3MenuItem1)
        
        character3Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        character3Item1Title.text = "Ability"
        character3Item1Title.fontSize = 9
        character3Item1Title.fontColor = forbiddenFruit
        character3Item1Title.position = CGPoint(x: character3MenuItem1.frame.midX, y: character3MenuItem1.frame.maxY + character3Item1Title.frame.size.height)
        character3Item1Title.zPosition = 4
        addChild(character3Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        character3MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character3MenuItem1Label1.text = "Cost: \(priceOfCharacter3Item1)"
        character3MenuItem1Label1.fontSize = 7.5
        character3MenuItem1Label1.fontColor = forbiddenFruit
        character3MenuItem1Label1.position = CGPoint(x: character3MenuItem1.frame.midX, y: character3MenuItem1.frame.midY - character3MenuItem1.frame.size.height)
        character3MenuItem1Label1.zPosition = 4
        addChild(character3MenuItem1Label1)
        
        character3MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        character3MenuItem1Label2.text = "Tech: \(techLevelRequirementCharacter3Item1)"
        character3MenuItem1Label2.fontSize = 7.5
        character3MenuItem1Label2.fontColor = forbiddenFruit
        character3MenuItem1Label2.position = CGPoint(x: character3MenuItem1.frame.midX, y: character3MenuItem1.frame.midY - character3MenuItem1.frame.size.height - character3MenuItem1Label2.frame.size.height)
        character3MenuItem1Label2.zPosition = 4
        addChild(character3MenuItem1Label2)
        
        item1Label1 = createMenuItemLabels(text: "", pos: CGPoint(x: character3MenuItem1.frame.midX, y: character3MenuItem1.frame.midY - character3MenuItem1.frame.size.height * 2))
        addChild(item1Label1)
        
        item1Label2 = createMenuItemLabels(text: "", pos: CGPoint(x: character3MenuItem1.frame.midX, y: character3MenuItem1.frame.midY - character3MenuItem1.frame.size.height * 2 - item1Label1.frame.size.height * 1.2))
        addChild(item1Label2)
        
        print("Menu", character3Menu.position)
        print("MenuItem1", character3MenuItem1.position)
        print("MenuItem1Label1", character3MenuItem1Label1.position)
        print("MenuItem1Label2", character3MenuItem1Label2.position)
    }
    
    func moveCharacter3Menu(view: SKView) {
        // ITEM BACKDROP
        var character3MenuAction: SKAction
        
        // TITLE
        var character3TitleBackdropAction: SKAction
        var character3TitleLabelAction: SKAction
        
        // ITEM 1
        var character3MenuItem1Action: SKAction
        var character3Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var character3MenuItem1Label1Action: SKAction
        var character3MenuItem1Label2Action: SKAction
        
        character3MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        character3Menu.run(character3MenuAction)
        
        character3TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        character3TitleBackdrop.run(character3TitleBackdropAction)
        
        character3TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        character3TitleLabel.run(character3TitleLabelAction)
        
        character3MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character3MenuItem1.frame.size.height / 3), duration: 0.25)
        character3MenuItem1.run(character3MenuItem1Action)
        
        character3Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + character3MenuItem1.frame.size.height), duration: 0.25)
        character3Item1Title.run(character3Item1TitleAction)
        
        character3MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character3MenuItem1.frame.size.height / 2), duration: 0.25)
        character3MenuItem1Label1.run(character3MenuItem1Label1Action)
        
        character3MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character3MenuItem1.frame.size.height / 2 - character3MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        character3MenuItem1Label2.run(character3MenuItem1Label2Action)
        
        moveMenuItemLabels(label: item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character3MenuItem1.frame.size.height / 2 - character3MenuItem1Label2.frame.size.height * 3))
        
        moveMenuItemLabels(label: item1Label2, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - character3MenuItem1.frame.size.height / 2 - character3MenuItem1Label2.frame.size.height * 3 - item1Label1.frame.size.height * 1.2))
    }
    
    func removeCharacter3Menu(view: SKView) {
        // MOVE ACTIONS
        var character3MenuAction: SKAction // BACKDROP
        var character3TitleBackdropAction: SKAction // TITLE BACKDROP
        var character3TitleLabelAction: SKAction // TITLE
        var character3MenuItem1Action: SKAction // ITEM 1
        var character3Item1TitleAction: SKAction // ITEM 1 TITLE
        var character3MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var character3MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var character3MenuRemove: SKAction // BACKDROP
        var character3TitleBackdropRemove: SKAction // TITLE BACKDROP
        var character3TitleLabelRemove: SKAction // TITLE
        var character3MenuItem1Remove: SKAction // ITEM 1
        var character3Item1TitleRemove: SKAction // ITEM 1 TITLE
        var character3MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var character3MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var character3MenuSequence: SKAction // BACKDROP
        var character3TitleBackdropSequence: SKAction // TITLE BACKDROP
        var character3TitleLabelSequence: SKAction // TITLE
        var character3MenuItem1Sequence: SKAction // ITEM 1
        var character3Item1TitleSequence: SKAction // ITEM 1 TITLE
        var character3MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var character3MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        character3MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character3MenuRemove = SKAction.removeFromParent()
        character3MenuSequence = SKAction.sequence([character3MenuAction, character3MenuRemove])
        character3Menu.run(character3MenuSequence)
        
        character3TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character3TitleBackdropRemove = SKAction.removeFromParent()
        character3TitleBackdropSequence = SKAction.sequence([character3TitleBackdropAction, character3TitleBackdropRemove])
        character3TitleBackdrop.run(character3TitleBackdropSequence)
        
        character3TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character3TitleLabelRemove = SKAction.removeFromParent()
        character3TitleLabelSequence = SKAction.sequence([character3TitleLabelAction, character3TitleLabelRemove])
        character3TitleLabel.run(character3TitleLabelSequence)
        
        character3MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character3MenuItem1Remove = SKAction.removeFromParent()
        character3MenuItem1Sequence = SKAction.sequence([character3MenuItem1Action, character3MenuItem1Remove])
        character3MenuItem1.run(character3MenuItem1Sequence)
        
        character3Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character3Item1TitleRemove = SKAction.removeFromParent()
        character3Item1TitleSequence = SKAction.sequence([character3Item1TitleAction, character3Item1TitleRemove])
        character3Item1Title.run(character3Item1TitleSequence)
        
        character3MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character3MenuItem1Label1Remove = SKAction.removeFromParent()
        character3MenuItem1Label1Sequence = SKAction.sequence([character3MenuItem1Label1Action, character3MenuItem1Label1Remove])
        character3MenuItem1Label1.run(character3MenuItem1Label1Sequence)
        
        character3MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        character3MenuItem1Label2Remove = SKAction.removeFromParent()
        character3MenuItem1Label2Sequence = SKAction.sequence([character3MenuItem1Label2Action, character3MenuItem1Label2Remove])
        character3MenuItem1Label2.run(character3MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: item1Label2, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}
