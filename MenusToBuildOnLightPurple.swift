//
//  MenusToBuildOnLightPurple.swift
//  mockup2
//
//  Created by Jason Quick on 6/28/23.
//

import Foundation
import SpriteKit

class MenuForLightPurpleSquare: SKNode {
    
    var lightPurpleSquare2Menu: SKSpriteNode!
    var lightPurpleSquare2TitleBackdrop: SKSpriteNode!
    var lightPurpleSquare2TitleLabel: SKLabelNode!
    var lightPurpleSquare2MenuItem1: SKSpriteNode!
    var lightPurpleSquare2Item1Title: SKLabelNode!
    var lightPurpleSquare2MenuItem1Label1: SKLabelNode!
    var lightPurpleSquare2MenuItem1Label2: SKLabelNode!
    var lightPurpleSquare2Item1Label1: SKLabelNode!
    
    var lightPurpleSquare3Menu: SKSpriteNode!
    var lightPurpleSquare3TitleBackdrop: SKSpriteNode!
    var lightPurpleSquare3TitleLabel: SKLabelNode!
    var lightPurpleSquare3MenuItem1: SKSpriteNode!
    var lightPurpleSquare3Item1Title: SKLabelNode!
    var lightPurpleSquare3MenuItem1Label1: SKLabelNode!
    var lightPurpleSquare3MenuItem1Label2: SKLabelNode!
    var lightPurpleSquare3Item1Label1: SKLabelNode!
    
    var lightPurpleSquare4Menu: SKSpriteNode!
    var lightPurpleSquare4TitleBackdrop: SKSpriteNode!
    var lightPurpleSquare4TitleLabel: SKLabelNode!
    var lightPurpleSquare4MenuItem1: SKSpriteNode!
    var lightPurpleSquare4Item1Title: SKLabelNode!
    var lightPurpleSquare4MenuItem1Label1: SKLabelNode!
    var lightPurpleSquare4MenuItem1Label2: SKLabelNode!
    var lightPurpleSquare4Item1Label1: SKLabelNode!
    
    var lightPurpleSquare5Menu: SKSpriteNode!
    var lightPurpleSquare5TitleBackdrop: SKSpriteNode!
    var lightPurpleSquare5TitleLabel: SKLabelNode!
    var lightPurpleSquare5MenuItem1: SKSpriteNode!
    var lightPurpleSquare5Item1Title: SKLabelNode!
    var lightPurpleSquare5MenuItem1Label1: SKLabelNode!
    var lightPurpleSquare5MenuItem1Label2: SKLabelNode!
    var lightPurpleSquare5Item1Label1: SKLabelNode!
    
    var lightPurpleSquare6Menu: SKSpriteNode!
    var lightPurpleSquare6TitleBackdrop: SKSpriteNode!
    var lightPurpleSquare6TitleLabel: SKLabelNode!
    var lightPurpleSquare6MenuItem1: SKSpriteNode!
    var lightPurpleSquare6Item1Title: SKLabelNode!
    var lightPurpleSquare6MenuItem1Label1: SKLabelNode!
    var lightPurpleSquare6MenuItem1Label2: SKLabelNode!
    var lightPurpleSquare6Item1Label1: SKLabelNode!
    
    var priceOfMenuItem1 = 200
    var techLevelRequirementMenuItem1 = 0
    
    // LIGHT PURPLE SQUARE 2 ------------------- MENU
    
    func createMenuForLightPurpleSquare2(view: SKView) {
        lightPurpleSquare2Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightPurpleSquare2Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare2Menu.setScale(0.42)
        lightPurpleSquare2Menu.zPosition = 3
        lightPurpleSquare2Menu.name = "lightPurpleSquare2Menu"
        addChild(lightPurpleSquare2Menu)
        
        lightPurpleSquare2TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightPurpleSquare2TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare2TitleBackdrop.setScale(0.42)
        lightPurpleSquare2TitleBackdrop.zPosition = 3
        addChild(lightPurpleSquare2TitleBackdrop)
        
        lightPurpleSquare2TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare2TitleLabel.text = "Tavern"
        lightPurpleSquare2TitleLabel.fontSize = 18
        lightPurpleSquare2TitleLabel.fontColor = forbiddenFruit
        lightPurpleSquare2TitleLabel.position = CGPoint(x: lightPurpleSquare2TitleBackdrop.frame.midX, y: lightPurpleSquare2TitleBackdrop.frame.maxY - lightPurpleSquare2TitleLabel.frame.size.height)
        lightPurpleSquare2TitleLabel.zPosition = 4
        addChild(lightPurpleSquare2TitleLabel)
        
        lightPurpleSquare2MenuItem1 = SKSpriteNode(imageNamed: "Location 8")
        lightPurpleSquare2MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightPurpleSquare2Menu.position.y)
        lightPurpleSquare2MenuItem1.zPosition = 4
        lightPurpleSquare2MenuItem1.setScale(0.26)
        lightPurpleSquare2MenuItem1.name = "lightPurpleSquare2MenuItem1"
        addChild(lightPurpleSquare2MenuItem1)
        
        lightPurpleSquare2Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare2Item1Title.text = "Casino"
        lightPurpleSquare2Item1Title.fontSize = 9
        lightPurpleSquare2Item1Title.fontColor = forbiddenFruit
        lightPurpleSquare2Item1Title.position = CGPoint(x: lightPurpleSquare2MenuItem1.frame.midX, y: lightPurpleSquare2MenuItem1.frame.maxY + lightPurpleSquare2Item1Title.frame.size.height)
        lightPurpleSquare2Item1Title.zPosition = 4
        addChild(lightPurpleSquare2Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightPurpleSquare2MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare2MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightPurpleSquare2MenuItem1Label1.fontSize = 7.5
        lightPurpleSquare2MenuItem1Label1.fontColor = forbiddenFruit
        lightPurpleSquare2MenuItem1Label1.position = CGPoint(x: lightPurpleSquare2MenuItem1.frame.midX, y: lightPurpleSquare2MenuItem1.frame.midY - lightPurpleSquare2MenuItem1.frame.size.height)
        lightPurpleSquare2MenuItem1Label1.zPosition = 4
        addChild(lightPurpleSquare2MenuItem1Label1)
        
        lightPurpleSquare2MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare2MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightPurpleSquare2MenuItem1Label2.fontSize = 7.5
        lightPurpleSquare2MenuItem1Label2.fontColor = forbiddenFruit
        lightPurpleSquare2MenuItem1Label2.position = CGPoint(x: lightPurpleSquare2MenuItem1.frame.midX, y: lightPurpleSquare2MenuItem1.frame.midY - lightPurpleSquare2MenuItem1.frame.size.height - lightPurpleSquare2MenuItem1Label2.frame.size.height)
        lightPurpleSquare2MenuItem1Label2.zPosition = 4
        addChild(lightPurpleSquare2MenuItem1Label2)
        
        lightPurpleSquare2Item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: lightPurpleSquare2MenuItem1.frame.midX, y: lightPurpleSquare2MenuItem1.frame.midY - lightPurpleSquare2MenuItem1.frame.size.height * 2))
        addChild(lightPurpleSquare2Item1Label1)
        
    }
    
    func moveLightPurpleSquare2Menu(view: SKView) {
        // ITEM BACKDROP
        var lightPurpleSquare2MenuAction: SKAction
        
        // TITLE
        var lightPurpleSquare2TitleBackdropAction: SKAction
        var lightPurpleSquare2TitleLabelAction: SKAction
        
        // ITEM 1
        var lightPurpleSquare2MenuItem1Action: SKAction
        
        var lightPurpleSquare2Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightPurpleSquare2MenuItem1Label1Action: SKAction
        var lightPurpleSquare2MenuItem1Label2Action: SKAction
            
        lightPurpleSquare2MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightPurpleSquare2Menu.run(lightPurpleSquare2MenuAction)
        
        lightPurpleSquare2TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightPurpleSquare2TitleBackdrop.run(lightPurpleSquare2TitleBackdropAction)
        
        lightPurpleSquare2TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightPurpleSquare2TitleLabel.run(lightPurpleSquare2TitleLabelAction)
        
        lightPurpleSquare2MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare2MenuItem1.frame.size.height / 3), duration: 0.25)
        lightPurpleSquare2MenuItem1.run(lightPurpleSquare2MenuItem1Action)
        
        lightPurpleSquare2Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare2MenuItem1.frame.size.height), duration: 0.25)
        lightPurpleSquare2Item1Title.run(lightPurpleSquare2Item1TitleAction)
        
        lightPurpleSquare2MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare2MenuItem1.frame.size.height / 2), duration: 0.25)
        lightPurpleSquare2MenuItem1Label1.run(lightPurpleSquare2MenuItem1Label1Action)
        
        lightPurpleSquare2MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare2MenuItem1.frame.size.height / 2 - lightPurpleSquare2MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightPurpleSquare2MenuItem1Label2.run(lightPurpleSquare2MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightPurpleSquare2Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare2MenuItem1.frame.size.height / 2 - lightPurpleSquare2MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeLightPurpleSquare2Menu(view: SKView) {
        // MOVE ACTIONS
        var lightPurpleSquare2MenuAction: SKAction // BACKDROP
        var lightPurpleSquare2TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightPurpleSquare2TitleLabelAction: SKAction // TITLE
        var lightPurpleSquare2MenuItem1Action: SKAction // ITEM 1
        var lightPurpleSquare2Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightPurpleSquare2MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare2MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var lightPurpleSquare2MenuRemove: SKAction // BACKDROP
        var lightPurpleSquare2TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightPurpleSquare2TitleLabelRemove: SKAction // TITLE
        var lightPurpleSquare2MenuItem1Remove: SKAction // ITEM 1
        var lightPurpleSquare2Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightPurpleSquare2MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare2MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightPurpleSquare2MenuSequence: SKAction // BACKDROP
        var lightPurpleSquare2TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightPurpleSquare2TitleLabelSequence: SKAction // TITLE
        var lightPurpleSquare2MenuItem1Sequence: SKAction // ITEM 1
        var lightPurpleSquare2Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightPurpleSquare2MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare2MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        lightPurpleSquare2MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare2MenuRemove = SKAction.removeFromParent()
        lightPurpleSquare2MenuSequence = SKAction.sequence([lightPurpleSquare2MenuAction, lightPurpleSquare2MenuRemove])
        lightPurpleSquare2Menu.run(lightPurpleSquare2MenuSequence)
        
        lightPurpleSquare2TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare2TitleBackdropRemove = SKAction.removeFromParent()
        lightPurpleSquare2TitleBackdropSequence = SKAction.sequence([lightPurpleSquare2TitleBackdropAction, lightPurpleSquare2TitleBackdropRemove])
        lightPurpleSquare2TitleBackdrop.run(lightPurpleSquare2TitleBackdropSequence)
        
        lightPurpleSquare2TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare2TitleLabelRemove = SKAction.removeFromParent()
        lightPurpleSquare2TitleLabelSequence = SKAction.sequence([lightPurpleSquare2TitleLabelAction, lightPurpleSquare2TitleLabelRemove])
        lightPurpleSquare2TitleLabel.run(lightPurpleSquare2TitleLabelSequence)
        
        lightPurpleSquare2MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare2MenuItem1Remove = SKAction.removeFromParent()
        lightPurpleSquare2MenuItem1Sequence = SKAction.sequence([lightPurpleSquare2MenuItem1Action, lightPurpleSquare2MenuItem1Remove])
        lightPurpleSquare2MenuItem1.run(lightPurpleSquare2MenuItem1Sequence)
        
        lightPurpleSquare2Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare2Item1TitleRemove = SKAction.removeFromParent()
        lightPurpleSquare2Item1TitleSequence = SKAction.sequence([lightPurpleSquare2Item1TitleAction, lightPurpleSquare2Item1TitleRemove])
        lightPurpleSquare2Item1Title.run(lightPurpleSquare2Item1TitleSequence)
        
        lightPurpleSquare2MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare2MenuItem1Label1Remove = SKAction.removeFromParent()
        lightPurpleSquare2MenuItem1Label1Sequence = SKAction.sequence([lightPurpleSquare2MenuItem1Label1Action, lightPurpleSquare2MenuItem1Label1Remove])
        lightPurpleSquare2MenuItem1Label1.run(lightPurpleSquare2MenuItem1Label1Sequence)
        
        lightPurpleSquare2MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare2MenuItem1Label2Remove = SKAction.removeFromParent()
        lightPurpleSquare2MenuItem1Label2Sequence = SKAction.sequence([lightPurpleSquare2MenuItem1Label2Action, lightPurpleSquare2MenuItem1Label2Remove])
        lightPurpleSquare2MenuItem1Label2.run(lightPurpleSquare2MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: lightPurpleSquare2Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // LIGHT PURPLE SQUARE 3 ------------------- MENU
    
    func createMenuForLightPurpleSquare3(view: SKView) {
        lightPurpleSquare3Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightPurpleSquare3Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare3Menu.setScale(0.42)
        lightPurpleSquare3Menu.zPosition = 3
        lightPurpleSquare3Menu.name = "lightPurpleSquare3Menu"
        addChild(lightPurpleSquare3Menu)
        
        lightPurpleSquare3TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightPurpleSquare3TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare3TitleBackdrop.setScale(0.42)
        lightPurpleSquare3TitleBackdrop.zPosition = 3
        addChild(lightPurpleSquare3TitleBackdrop)
        
        lightPurpleSquare3TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare3TitleLabel.text = "Tavern"
        lightPurpleSquare3TitleLabel.fontSize = 18
        lightPurpleSquare3TitleLabel.fontColor = forbiddenFruit
        lightPurpleSquare3TitleLabel.position = CGPoint(x: lightPurpleSquare3TitleBackdrop.frame.midX, y: lightPurpleSquare3TitleBackdrop.frame.maxY - lightPurpleSquare3TitleLabel.frame.size.height)
        lightPurpleSquare3TitleLabel.zPosition = 4
        addChild(lightPurpleSquare3TitleLabel)
        
        lightPurpleSquare3MenuItem1 = SKSpriteNode(imageNamed: "Location 8")
        lightPurpleSquare3MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightPurpleSquare3Menu.position.y)
        lightPurpleSquare3MenuItem1.zPosition = 4
        lightPurpleSquare3MenuItem1.setScale(0.26)
        lightPurpleSquare3MenuItem1.name = "lightPurpleSquare3MenuItem1"
        addChild(lightPurpleSquare3MenuItem1)
        
        lightPurpleSquare3Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare3Item1Title.text = "Casino"
        lightPurpleSquare3Item1Title.fontSize = 9
        lightPurpleSquare3Item1Title.fontColor = forbiddenFruit
        lightPurpleSquare3Item1Title.position = CGPoint(x: lightPurpleSquare3MenuItem1.frame.midX, y: lightPurpleSquare3MenuItem1.frame.maxY + lightPurpleSquare3Item1Title.frame.size.height)
        lightPurpleSquare3Item1Title.zPosition = 4
        addChild(lightPurpleSquare3Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightPurpleSquare3MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare3MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightPurpleSquare3MenuItem1Label1.fontSize = 7.5
        lightPurpleSquare3MenuItem1Label1.fontColor = forbiddenFruit
        lightPurpleSquare3MenuItem1Label1.position = CGPoint(x: lightPurpleSquare3MenuItem1.frame.midX, y: lightPurpleSquare3MenuItem1.frame.midY - lightPurpleSquare3MenuItem1.frame.size.height)
        lightPurpleSquare3MenuItem1Label1.zPosition = 4
        addChild(lightPurpleSquare3MenuItem1Label1)
        
        lightPurpleSquare3MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare3MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightPurpleSquare3MenuItem1Label2.fontSize = 7.5
        lightPurpleSquare3MenuItem1Label2.fontColor = forbiddenFruit
        lightPurpleSquare3MenuItem1Label2.position = CGPoint(x: lightPurpleSquare3MenuItem1.frame.midX, y: lightPurpleSquare3MenuItem1.frame.midY - lightPurpleSquare3MenuItem1.frame.size.height - lightPurpleSquare3MenuItem1Label2.frame.size.height)
        lightPurpleSquare3MenuItem1Label2.zPosition = 4
        addChild(lightPurpleSquare3MenuItem1Label2)
        
        lightPurpleSquare3Item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: lightPurpleSquare3MenuItem1.frame.midX, y: lightPurpleSquare3MenuItem1.frame.midY - lightPurpleSquare3MenuItem1.frame.size.height * 2))
        addChild(lightPurpleSquare3Item1Label1)
        
    }
    
    func moveLightPurpleSquare3Menu(view: SKView) {
        // ITEM BACKDROP
        var lightPurpleSquare3MenuAction: SKAction
        
        // TITLE
        var lightPurpleSquare3TitleBackdropAction: SKAction
        var lightPurpleSquare3TitleLabelAction: SKAction
        
        // ITEM 1
        var lightPurpleSquare3MenuItem1Action: SKAction
        
        var lightPurpleSquare3Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightPurpleSquare3MenuItem1Label1Action: SKAction
        var lightPurpleSquare3MenuItem1Label2Action: SKAction
            
        lightPurpleSquare3MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightPurpleSquare3Menu.run(lightPurpleSquare3MenuAction)
        
        lightPurpleSquare3TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightPurpleSquare3TitleBackdrop.run(lightPurpleSquare3TitleBackdropAction)
        
        lightPurpleSquare3TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightPurpleSquare3TitleLabel.run(lightPurpleSquare3TitleLabelAction)
        
        lightPurpleSquare3MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare3MenuItem1.frame.size.height / 3), duration: 0.25)
        lightPurpleSquare3MenuItem1.run(lightPurpleSquare3MenuItem1Action)
        
        lightPurpleSquare3Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare3MenuItem1.frame.size.height), duration: 0.25)
        lightPurpleSquare3Item1Title.run(lightPurpleSquare3Item1TitleAction)
        
        lightPurpleSquare3MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare3MenuItem1.frame.size.height / 2), duration: 0.25)
        lightPurpleSquare3MenuItem1Label1.run(lightPurpleSquare3MenuItem1Label1Action)
        
        lightPurpleSquare3MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare3MenuItem1.frame.size.height / 2 - lightPurpleSquare3MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightPurpleSquare3MenuItem1Label2.run(lightPurpleSquare3MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightPurpleSquare3Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare3MenuItem1.frame.size.height / 2 - lightPurpleSquare3MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeLightPurpleSquare3Menu(view: SKView) {
        // MOVE ACTIONS
        var lightPurpleSquare3MenuAction: SKAction // BACKDROP
        var lightPurpleSquare3TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightPurpleSquare3TitleLabelAction: SKAction // TITLE
        var lightPurpleSquare3MenuItem1Action: SKAction // ITEM 1
        var lightPurpleSquare3Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightPurpleSquare3MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare3MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var lightPurpleSquare3MenuRemove: SKAction // BACKDROP
        var lightPurpleSquare3TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightPurpleSquare3TitleLabelRemove: SKAction // TITLE
        var lightPurpleSquare3MenuItem1Remove: SKAction // ITEM 1
        var lightPurpleSquare3Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightPurpleSquare3MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare3MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightPurpleSquare3MenuSequence: SKAction // BACKDROP
        var lightPurpleSquare3TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightPurpleSquare3TitleLabelSequence: SKAction // TITLE
        var lightPurpleSquare3MenuItem1Sequence: SKAction // ITEM 1
        var lightPurpleSquare3Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightPurpleSquare3MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare3MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        lightPurpleSquare3MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare3MenuRemove = SKAction.removeFromParent()
        lightPurpleSquare3MenuSequence = SKAction.sequence([lightPurpleSquare3MenuAction, lightPurpleSquare3MenuRemove])
        lightPurpleSquare3Menu.run(lightPurpleSquare3MenuSequence)
        
        lightPurpleSquare3TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare3TitleBackdropRemove = SKAction.removeFromParent()
        lightPurpleSquare3TitleBackdropSequence = SKAction.sequence([lightPurpleSquare3TitleBackdropAction, lightPurpleSquare3TitleBackdropRemove])
        lightPurpleSquare3TitleBackdrop.run(lightPurpleSquare3TitleBackdropSequence)
        
        lightPurpleSquare3TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare3TitleLabelRemove = SKAction.removeFromParent()
        lightPurpleSquare3TitleLabelSequence = SKAction.sequence([lightPurpleSquare3TitleLabelAction, lightPurpleSquare3TitleLabelRemove])
        lightPurpleSquare3TitleLabel.run(lightPurpleSquare3TitleLabelSequence)
        
        lightPurpleSquare3MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare3MenuItem1Remove = SKAction.removeFromParent()
        lightPurpleSquare3MenuItem1Sequence = SKAction.sequence([lightPurpleSquare3MenuItem1Action, lightPurpleSquare3MenuItem1Remove])
        lightPurpleSquare3MenuItem1.run(lightPurpleSquare3MenuItem1Sequence)
        
        lightPurpleSquare3Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare3Item1TitleRemove = SKAction.removeFromParent()
        lightPurpleSquare3Item1TitleSequence = SKAction.sequence([lightPurpleSquare3Item1TitleAction, lightPurpleSquare3Item1TitleRemove])
        lightPurpleSquare3Item1Title.run(lightPurpleSquare3Item1TitleSequence)
        
        lightPurpleSquare3MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare3MenuItem1Label1Remove = SKAction.removeFromParent()
        lightPurpleSquare3MenuItem1Label1Sequence = SKAction.sequence([lightPurpleSquare3MenuItem1Label1Action, lightPurpleSquare3MenuItem1Label1Remove])
        lightPurpleSquare3MenuItem1Label1.run(lightPurpleSquare3MenuItem1Label1Sequence)
        
        lightPurpleSquare3MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare3MenuItem1Label2Remove = SKAction.removeFromParent()
        lightPurpleSquare3MenuItem1Label2Sequence = SKAction.sequence([lightPurpleSquare3MenuItem1Label2Action, lightPurpleSquare3MenuItem1Label2Remove])
        lightPurpleSquare3MenuItem1Label2.run(lightPurpleSquare3MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: lightPurpleSquare3Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // LIGHT PURPLE SQUARE 4 ------------------- MENU
    
    func createMenuForLightPurpleSquare4(view: SKView) {
        lightPurpleSquare4Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightPurpleSquare4Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare4Menu.setScale(0.42)
        lightPurpleSquare4Menu.zPosition = 3
        lightPurpleSquare4Menu.name = "lightPurpleSquare4Menu"
        addChild(lightPurpleSquare4Menu)
        
        lightPurpleSquare4TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightPurpleSquare4TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare4TitleBackdrop.setScale(0.42)
        lightPurpleSquare4TitleBackdrop.zPosition = 3
        addChild(lightPurpleSquare4TitleBackdrop)
        
        lightPurpleSquare4TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare4TitleLabel.text = "Tavern"
        lightPurpleSquare4TitleLabel.fontSize = 18
        lightPurpleSquare4TitleLabel.fontColor = forbiddenFruit
        lightPurpleSquare4TitleLabel.position = CGPoint(x: lightPurpleSquare4TitleBackdrop.frame.midX, y: lightPurpleSquare4TitleBackdrop.frame.maxY - lightPurpleSquare4TitleLabel.frame.size.height)
        lightPurpleSquare4TitleLabel.zPosition = 4
        addChild(lightPurpleSquare4TitleLabel)
        
        lightPurpleSquare4MenuItem1 = SKSpriteNode(imageNamed: "Location 8")
        lightPurpleSquare4MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightPurpleSquare4Menu.position.y)
        lightPurpleSquare4MenuItem1.zPosition = 4
        lightPurpleSquare4MenuItem1.setScale(0.26)
        lightPurpleSquare4MenuItem1.name = "lightPurpleSquare4MenuItem1"
        addChild(lightPurpleSquare4MenuItem1)
        
        lightPurpleSquare4Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare4Item1Title.text = "Casino"
        lightPurpleSquare4Item1Title.fontSize = 9
        lightPurpleSquare4Item1Title.fontColor = forbiddenFruit
        lightPurpleSquare4Item1Title.position = CGPoint(x: lightPurpleSquare4MenuItem1.frame.midX, y: lightPurpleSquare4MenuItem1.frame.maxY + lightPurpleSquare4Item1Title.frame.size.height)
        lightPurpleSquare4Item1Title.zPosition = 4
        addChild(lightPurpleSquare4Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightPurpleSquare4MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare4MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightPurpleSquare4MenuItem1Label1.fontSize = 7.5
        lightPurpleSquare4MenuItem1Label1.fontColor = forbiddenFruit
        lightPurpleSquare4MenuItem1Label1.position = CGPoint(x: lightPurpleSquare4MenuItem1.frame.midX, y: lightPurpleSquare4MenuItem1.frame.midY - lightPurpleSquare4MenuItem1.frame.size.height)
        lightPurpleSquare4MenuItem1Label1.zPosition = 4
        addChild(lightPurpleSquare4MenuItem1Label1)
        
        lightPurpleSquare4MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare4MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightPurpleSquare4MenuItem1Label2.fontSize = 7.5
        lightPurpleSquare4MenuItem1Label2.fontColor = forbiddenFruit
        lightPurpleSquare4MenuItem1Label2.position = CGPoint(x: lightPurpleSquare4MenuItem1.frame.midX, y: lightPurpleSquare4MenuItem1.frame.midY - lightPurpleSquare4MenuItem1.frame.size.height - lightPurpleSquare4MenuItem1Label2.frame.size.height)
        lightPurpleSquare4MenuItem1Label2.zPosition = 4
        addChild(lightPurpleSquare4MenuItem1Label2)
        
        lightPurpleSquare4Item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: lightPurpleSquare4MenuItem1.frame.midX, y: lightPurpleSquare4MenuItem1.frame.midY - lightPurpleSquare4MenuItem1.frame.size.height * 2))
        addChild(lightPurpleSquare4Item1Label1)
        
    }
    
    func moveLightPurpleSquare4Menu(view: SKView) {
        // ITEM BACKDROP
        var lightPurpleSquare4MenuAction: SKAction
        
        // TITLE
        var lightPurpleSquare4TitleBackdropAction: SKAction
        var lightPurpleSquare4TitleLabelAction: SKAction
        
        // ITEM 1
        var lightPurpleSquare4MenuItem1Action: SKAction
        
        var lightPurpleSquare4Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightPurpleSquare4MenuItem1Label1Action: SKAction
        var lightPurpleSquare4MenuItem1Label2Action: SKAction
            
        lightPurpleSquare4MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightPurpleSquare4Menu.run(lightPurpleSquare4MenuAction)
        
        lightPurpleSquare4TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightPurpleSquare4TitleBackdrop.run(lightPurpleSquare4TitleBackdropAction)
        
        lightPurpleSquare4TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightPurpleSquare4TitleLabel.run(lightPurpleSquare4TitleLabelAction)
        
        lightPurpleSquare4MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare4MenuItem1.frame.size.height / 3), duration: 0.25)
        lightPurpleSquare4MenuItem1.run(lightPurpleSquare4MenuItem1Action)
        
        lightPurpleSquare4Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare4MenuItem1.frame.size.height), duration: 0.25)
        lightPurpleSquare4Item1Title.run(lightPurpleSquare4Item1TitleAction)
        
        lightPurpleSquare4MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare4MenuItem1.frame.size.height / 2), duration: 0.25)
        lightPurpleSquare4MenuItem1Label1.run(lightPurpleSquare4MenuItem1Label1Action)
        
        lightPurpleSquare4MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare4MenuItem1.frame.size.height / 2 - lightPurpleSquare4MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightPurpleSquare4MenuItem1Label2.run(lightPurpleSquare4MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightPurpleSquare4Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare4MenuItem1.frame.size.height / 2 - lightPurpleSquare4MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeLightPurpleSquare4Menu(view: SKView) {
        // MOVE ACTIONS
        var lightPurpleSquare4MenuAction: SKAction // BACKDROP
        var lightPurpleSquare4TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightPurpleSquare4TitleLabelAction: SKAction // TITLE
        var lightPurpleSquare4MenuItem1Action: SKAction // ITEM 1
        var lightPurpleSquare4Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightPurpleSquare4MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare4MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var lightPurpleSquare4MenuRemove: SKAction // BACKDROP
        var lightPurpleSquare4TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightPurpleSquare4TitleLabelRemove: SKAction // TITLE
        var lightPurpleSquare4MenuItem1Remove: SKAction // ITEM 1
        var lightPurpleSquare4Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightPurpleSquare4MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare4MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightPurpleSquare4MenuSequence: SKAction // BACKDROP
        var lightPurpleSquare4TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightPurpleSquare4TitleLabelSequence: SKAction // TITLE
        var lightPurpleSquare4MenuItem1Sequence: SKAction // ITEM 1
        var lightPurpleSquare4Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightPurpleSquare4MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare4MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        lightPurpleSquare4MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare4MenuRemove = SKAction.removeFromParent()
        lightPurpleSquare4MenuSequence = SKAction.sequence([lightPurpleSquare4MenuAction, lightPurpleSquare4MenuRemove])
        lightPurpleSquare4Menu.run(lightPurpleSquare4MenuSequence)
        
        lightPurpleSquare4TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare4TitleBackdropRemove = SKAction.removeFromParent()
        lightPurpleSquare4TitleBackdropSequence = SKAction.sequence([lightPurpleSquare4TitleBackdropAction, lightPurpleSquare4TitleBackdropRemove])
        lightPurpleSquare4TitleBackdrop.run(lightPurpleSquare4TitleBackdropSequence)
        
        lightPurpleSquare4TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare4TitleLabelRemove = SKAction.removeFromParent()
        lightPurpleSquare4TitleLabelSequence = SKAction.sequence([lightPurpleSquare4TitleLabelAction, lightPurpleSquare4TitleLabelRemove])
        lightPurpleSquare4TitleLabel.run(lightPurpleSquare4TitleLabelSequence)
        
        lightPurpleSquare4MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare4MenuItem1Remove = SKAction.removeFromParent()
        lightPurpleSquare4MenuItem1Sequence = SKAction.sequence([lightPurpleSquare4MenuItem1Action, lightPurpleSquare4MenuItem1Remove])
        lightPurpleSquare4MenuItem1.run(lightPurpleSquare4MenuItem1Sequence)
        
        lightPurpleSquare4Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare4Item1TitleRemove = SKAction.removeFromParent()
        lightPurpleSquare4Item1TitleSequence = SKAction.sequence([lightPurpleSquare4Item1TitleAction, lightPurpleSquare4Item1TitleRemove])
        lightPurpleSquare4Item1Title.run(lightPurpleSquare4Item1TitleSequence)
        
        lightPurpleSquare4MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare4MenuItem1Label1Remove = SKAction.removeFromParent()
        lightPurpleSquare4MenuItem1Label1Sequence = SKAction.sequence([lightPurpleSquare4MenuItem1Label1Action, lightPurpleSquare4MenuItem1Label1Remove])
        lightPurpleSquare4MenuItem1Label1.run(lightPurpleSquare4MenuItem1Label1Sequence)
        
        lightPurpleSquare4MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare4MenuItem1Label2Remove = SKAction.removeFromParent()
        lightPurpleSquare4MenuItem1Label2Sequence = SKAction.sequence([lightPurpleSquare4MenuItem1Label2Action, lightPurpleSquare4MenuItem1Label2Remove])
        lightPurpleSquare4MenuItem1Label2.run(lightPurpleSquare4MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: lightPurpleSquare4Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // LIGHT PURPLE SQUARE 5 ------------------- MENU
    
    func createMenuForLightPurpleSquare5(view: SKView) {
        lightPurpleSquare5Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightPurpleSquare5Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare5Menu.setScale(0.42)
        lightPurpleSquare5Menu.zPosition = 3
        lightPurpleSquare5Menu.name = "lightPurpleSquare5Menu"
        addChild(lightPurpleSquare5Menu)
        
        lightPurpleSquare5TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightPurpleSquare5TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare5TitleBackdrop.setScale(0.42)
        lightPurpleSquare5TitleBackdrop.zPosition = 3
        addChild(lightPurpleSquare5TitleBackdrop)
        
        lightPurpleSquare5TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare5TitleLabel.text = "Tavern"
        lightPurpleSquare5TitleLabel.fontSize = 18
        lightPurpleSquare5TitleLabel.fontColor = forbiddenFruit
        lightPurpleSquare5TitleLabel.position = CGPoint(x: lightPurpleSquare5TitleBackdrop.frame.midX, y: lightPurpleSquare5TitleBackdrop.frame.maxY - lightPurpleSquare5TitleLabel.frame.size.height)
        lightPurpleSquare5TitleLabel.zPosition = 4
        addChild(lightPurpleSquare5TitleLabel)
        
        lightPurpleSquare5MenuItem1 = SKSpriteNode(imageNamed: "Location 8")
        lightPurpleSquare5MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightPurpleSquare5Menu.position.y)
        lightPurpleSquare5MenuItem1.zPosition = 4
        lightPurpleSquare5MenuItem1.setScale(0.26)
        lightPurpleSquare5MenuItem1.name = "lightPurpleSquare5MenuItem1"
        addChild(lightPurpleSquare5MenuItem1)
        
        lightPurpleSquare5Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare5Item1Title.text = "Casino"
        lightPurpleSquare5Item1Title.fontSize = 9
        lightPurpleSquare5Item1Title.fontColor = forbiddenFruit
        lightPurpleSquare5Item1Title.position = CGPoint(x: lightPurpleSquare5MenuItem1.frame.midX, y: lightPurpleSquare5MenuItem1.frame.maxY + lightPurpleSquare5Item1Title.frame.size.height)
        lightPurpleSquare5Item1Title.zPosition = 4
        addChild(lightPurpleSquare5Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightPurpleSquare5MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare5MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightPurpleSquare5MenuItem1Label1.fontSize = 7.5
        lightPurpleSquare5MenuItem1Label1.fontColor = forbiddenFruit
        lightPurpleSquare5MenuItem1Label1.position = CGPoint(x: lightPurpleSquare5MenuItem1.frame.midX, y: lightPurpleSquare5MenuItem1.frame.midY - lightPurpleSquare5MenuItem1.frame.size.height)
        lightPurpleSquare5MenuItem1Label1.zPosition = 4
        addChild(lightPurpleSquare5MenuItem1Label1)
        
        lightPurpleSquare5MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare5MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightPurpleSquare5MenuItem1Label2.fontSize = 7.5
        lightPurpleSquare5MenuItem1Label2.fontColor = forbiddenFruit
        lightPurpleSquare5MenuItem1Label2.position = CGPoint(x: lightPurpleSquare5MenuItem1.frame.midX, y: lightPurpleSquare5MenuItem1.frame.midY - lightPurpleSquare5MenuItem1.frame.size.height - lightPurpleSquare5MenuItem1Label2.frame.size.height)
        lightPurpleSquare5MenuItem1Label2.zPosition = 4
        addChild(lightPurpleSquare5MenuItem1Label2)
        
        lightPurpleSquare5Item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: lightPurpleSquare5MenuItem1.frame.midX, y: lightPurpleSquare5MenuItem1.frame.midY - lightPurpleSquare5MenuItem1.frame.size.height * 2))
        addChild(lightPurpleSquare5Item1Label1)
        
    }
    
    func moveLightPurpleSquare5Menu(view: SKView) {
        // ITEM BACKDROP
        var lightPurpleSquare5MenuAction: SKAction
        
        // TITLE
        var lightPurpleSquare5TitleBackdropAction: SKAction
        var lightPurpleSquare5TitleLabelAction: SKAction
        
        // ITEM 1
        var lightPurpleSquare5MenuItem1Action: SKAction
        
        var lightPurpleSquare5Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightPurpleSquare5MenuItem1Label1Action: SKAction
        var lightPurpleSquare5MenuItem1Label2Action: SKAction
            
        lightPurpleSquare5MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightPurpleSquare5Menu.run(lightPurpleSquare5MenuAction)
        
        lightPurpleSquare5TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightPurpleSquare5TitleBackdrop.run(lightPurpleSquare5TitleBackdropAction)
        
        lightPurpleSquare5TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightPurpleSquare5TitleLabel.run(lightPurpleSquare5TitleLabelAction)
        
        lightPurpleSquare5MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare5MenuItem1.frame.size.height / 3), duration: 0.25)
        lightPurpleSquare5MenuItem1.run(lightPurpleSquare5MenuItem1Action)
        
        lightPurpleSquare5Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare5MenuItem1.frame.size.height), duration: 0.25)
        lightPurpleSquare5Item1Title.run(lightPurpleSquare5Item1TitleAction)
        
        lightPurpleSquare5MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare5MenuItem1.frame.size.height / 2), duration: 0.25)
        lightPurpleSquare5MenuItem1Label1.run(lightPurpleSquare5MenuItem1Label1Action)
        
        lightPurpleSquare5MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare5MenuItem1.frame.size.height / 2 - lightPurpleSquare5MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightPurpleSquare5MenuItem1Label2.run(lightPurpleSquare5MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightPurpleSquare5Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare5MenuItem1.frame.size.height / 2 - lightPurpleSquare5MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeLightPurpleSquare5Menu(view: SKView) {
        // MOVE ACTIONS
        var lightPurpleSquare5MenuAction: SKAction // BACKDROP
        var lightPurpleSquare5TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightPurpleSquare5TitleLabelAction: SKAction // TITLE
        var lightPurpleSquare5MenuItem1Action: SKAction // ITEM 1
        var lightPurpleSquare5Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightPurpleSquare5MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare5MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var lightPurpleSquare5MenuRemove: SKAction // BACKDROP
        var lightPurpleSquare5TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightPurpleSquare5TitleLabelRemove: SKAction // TITLE
        var lightPurpleSquare5MenuItem1Remove: SKAction // ITEM 1
        var lightPurpleSquare5Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightPurpleSquare5MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare5MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightPurpleSquare5MenuSequence: SKAction // BACKDROP
        var lightPurpleSquare5TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightPurpleSquare5TitleLabelSequence: SKAction // TITLE
        var lightPurpleSquare5MenuItem1Sequence: SKAction // ITEM 1
        var lightPurpleSquare5Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightPurpleSquare5MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare5MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        lightPurpleSquare5MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare5MenuRemove = SKAction.removeFromParent()
        lightPurpleSquare5MenuSequence = SKAction.sequence([lightPurpleSquare5MenuAction, lightPurpleSquare5MenuRemove])
        lightPurpleSquare5Menu.run(lightPurpleSquare5MenuSequence)
        
        lightPurpleSquare5TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare5TitleBackdropRemove = SKAction.removeFromParent()
        lightPurpleSquare5TitleBackdropSequence = SKAction.sequence([lightPurpleSquare5TitleBackdropAction, lightPurpleSquare5TitleBackdropRemove])
        lightPurpleSquare5TitleBackdrop.run(lightPurpleSquare5TitleBackdropSequence)
        
        lightPurpleSquare5TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare5TitleLabelRemove = SKAction.removeFromParent()
        lightPurpleSquare5TitleLabelSequence = SKAction.sequence([lightPurpleSquare5TitleLabelAction, lightPurpleSquare5TitleLabelRemove])
        lightPurpleSquare5TitleLabel.run(lightPurpleSquare5TitleLabelSequence)
        
        lightPurpleSquare5MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare5MenuItem1Remove = SKAction.removeFromParent()
        lightPurpleSquare5MenuItem1Sequence = SKAction.sequence([lightPurpleSquare5MenuItem1Action, lightPurpleSquare5MenuItem1Remove])
        lightPurpleSquare5MenuItem1.run(lightPurpleSquare5MenuItem1Sequence)
        
        lightPurpleSquare5Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare5Item1TitleRemove = SKAction.removeFromParent()
        lightPurpleSquare5Item1TitleSequence = SKAction.sequence([lightPurpleSquare5Item1TitleAction, lightPurpleSquare5Item1TitleRemove])
        lightPurpleSquare5Item1Title.run(lightPurpleSquare5Item1TitleSequence)
        
        lightPurpleSquare5MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare5MenuItem1Label1Remove = SKAction.removeFromParent()
        lightPurpleSquare5MenuItem1Label1Sequence = SKAction.sequence([lightPurpleSquare5MenuItem1Label1Action, lightPurpleSquare5MenuItem1Label1Remove])
        lightPurpleSquare5MenuItem1Label1.run(lightPurpleSquare5MenuItem1Label1Sequence)
        
        lightPurpleSquare5MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare5MenuItem1Label2Remove = SKAction.removeFromParent()
        lightPurpleSquare5MenuItem1Label2Sequence = SKAction.sequence([lightPurpleSquare5MenuItem1Label2Action, lightPurpleSquare5MenuItem1Label2Remove])
        lightPurpleSquare5MenuItem1Label2.run(lightPurpleSquare5MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: lightPurpleSquare5Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // LIGHT PURPLE SQUARE 6 ------------------- MENU
    
    func createMenuForLightPurpleSquare6(view: SKView) {
        lightPurpleSquare6Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightPurpleSquare6Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare6Menu.setScale(0.42)
        lightPurpleSquare6Menu.zPosition = 3
        lightPurpleSquare6Menu.name = "lightPurpleSquare6Menu"
        addChild(lightPurpleSquare6Menu)
        
        lightPurpleSquare6TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightPurpleSquare6TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightPurpleSquare6TitleBackdrop.setScale(0.42)
        lightPurpleSquare6TitleBackdrop.zPosition = 3
        addChild(lightPurpleSquare6TitleBackdrop)
        
        lightPurpleSquare6TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare6TitleLabel.text = "Tavern"
        lightPurpleSquare6TitleLabel.fontSize = 18
        lightPurpleSquare6TitleLabel.fontColor = forbiddenFruit
        lightPurpleSquare6TitleLabel.position = CGPoint(x: lightPurpleSquare6TitleBackdrop.frame.midX, y: lightPurpleSquare6TitleBackdrop.frame.maxY - lightPurpleSquare6TitleLabel.frame.size.height)
        lightPurpleSquare6TitleLabel.zPosition = 4
        addChild(lightPurpleSquare6TitleLabel)
        
        lightPurpleSquare6MenuItem1 = SKSpriteNode(imageNamed: "Location 8")
        lightPurpleSquare6MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightPurpleSquare6Menu.position.y)
        lightPurpleSquare6MenuItem1.zPosition = 4
        lightPurpleSquare6MenuItem1.setScale(0.26)
        lightPurpleSquare6MenuItem1.name = "lightPurpleSquare6MenuItem1"
        addChild(lightPurpleSquare6MenuItem1)
        
        lightPurpleSquare6Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare6Item1Title.text = "Casino"
        lightPurpleSquare6Item1Title.fontSize = 9
        lightPurpleSquare6Item1Title.fontColor = forbiddenFruit
        lightPurpleSquare6Item1Title.position = CGPoint(x: lightPurpleSquare6MenuItem1.frame.midX, y: lightPurpleSquare6MenuItem1.frame.maxY + lightPurpleSquare6Item1Title.frame.size.height)
        lightPurpleSquare6Item1Title.zPosition = 4
        addChild(lightPurpleSquare6Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightPurpleSquare6MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare6MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightPurpleSquare6MenuItem1Label1.fontSize = 7.5
        lightPurpleSquare6MenuItem1Label1.fontColor = forbiddenFruit
        lightPurpleSquare6MenuItem1Label1.position = CGPoint(x: lightPurpleSquare6MenuItem1.frame.midX, y: lightPurpleSquare6MenuItem1.frame.midY - lightPurpleSquare6MenuItem1.frame.size.height)
        lightPurpleSquare6MenuItem1Label1.zPosition = 4
        addChild(lightPurpleSquare6MenuItem1Label1)
        
        lightPurpleSquare6MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightPurpleSquare6MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightPurpleSquare6MenuItem1Label2.fontSize = 7.5
        lightPurpleSquare6MenuItem1Label2.fontColor = forbiddenFruit
        lightPurpleSquare6MenuItem1Label2.position = CGPoint(x: lightPurpleSquare6MenuItem1.frame.midX, y: lightPurpleSquare6MenuItem1.frame.midY - lightPurpleSquare6MenuItem1.frame.size.height - lightPurpleSquare6MenuItem1Label2.frame.size.height)
        lightPurpleSquare6MenuItem1Label2.zPosition = 4
        addChild(lightPurpleSquare6MenuItem1Label2)
        
        lightPurpleSquare6Item1Label1 = createMenuItemLabels(text: "Increases Gold", pos: CGPoint(x: lightPurpleSquare6MenuItem1.frame.midX, y: lightPurpleSquare6MenuItem1.frame.midY - lightPurpleSquare6MenuItem1.frame.size.height * 2))
        addChild(lightPurpleSquare6Item1Label1)
        
    }
    
    func moveLightPurpleSquare6Menu(view: SKView) {
        // ITEM BACKDROP
        var lightPurpleSquare6MenuAction: SKAction
        
        // TITLE
        var lightPurpleSquare6TitleBackdropAction: SKAction
        var lightPurpleSquare6TitleLabelAction: SKAction
        
        // ITEM 1
        var lightPurpleSquare6MenuItem1Action: SKAction
        
        var lightPurpleSquare6Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightPurpleSquare6MenuItem1Label1Action: SKAction
        var lightPurpleSquare6MenuItem1Label2Action: SKAction
            
        lightPurpleSquare6MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightPurpleSquare6Menu.run(lightPurpleSquare6MenuAction)
        
        lightPurpleSquare6TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightPurpleSquare6TitleBackdrop.run(lightPurpleSquare6TitleBackdropAction)
        
        lightPurpleSquare6TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightPurpleSquare6TitleLabel.run(lightPurpleSquare6TitleLabelAction)
        
        lightPurpleSquare6MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare6MenuItem1.frame.size.height / 3), duration: 0.25)
        lightPurpleSquare6MenuItem1.run(lightPurpleSquare6MenuItem1Action)
        
        lightPurpleSquare6Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightPurpleSquare6MenuItem1.frame.size.height), duration: 0.25)
        lightPurpleSquare6Item1Title.run(lightPurpleSquare6Item1TitleAction)
        
        lightPurpleSquare6MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare6MenuItem1.frame.size.height / 2), duration: 0.25)
        lightPurpleSquare6MenuItem1Label1.run(lightPurpleSquare6MenuItem1Label1Action)
        
        lightPurpleSquare6MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare6MenuItem1.frame.size.height / 2 - lightPurpleSquare6MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightPurpleSquare6MenuItem1Label2.run(lightPurpleSquare6MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightPurpleSquare6Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightPurpleSquare6MenuItem1.frame.size.height / 2 - lightPurpleSquare6MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeLightPurpleSquare6Menu(view: SKView) {
        // MOVE ACTIONS
        var lightPurpleSquare6MenuAction: SKAction // BACKDROP
        var lightPurpleSquare6TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightPurpleSquare6TitleLabelAction: SKAction // TITLE
        var lightPurpleSquare6MenuItem1Action: SKAction // ITEM 1
        var lightPurpleSquare6Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightPurpleSquare6MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare6MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var lightPurpleSquare6MenuRemove: SKAction // BACKDROP
        var lightPurpleSquare6TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightPurpleSquare6TitleLabelRemove: SKAction // TITLE
        var lightPurpleSquare6MenuItem1Remove: SKAction // ITEM 1
        var lightPurpleSquare6Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightPurpleSquare6MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare6MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightPurpleSquare6MenuSequence: SKAction // BACKDROP
        var lightPurpleSquare6TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightPurpleSquare6TitleLabelSequence: SKAction // TITLE
        var lightPurpleSquare6MenuItem1Sequence: SKAction // ITEM 1
        var lightPurpleSquare6Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightPurpleSquare6MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightPurpleSquare6MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        lightPurpleSquare6MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare6MenuRemove = SKAction.removeFromParent()
        lightPurpleSquare6MenuSequence = SKAction.sequence([lightPurpleSquare6MenuAction, lightPurpleSquare6MenuRemove])
        lightPurpleSquare6Menu.run(lightPurpleSquare6MenuSequence)
        
        lightPurpleSquare6TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare6TitleBackdropRemove = SKAction.removeFromParent()
        lightPurpleSquare6TitleBackdropSequence = SKAction.sequence([lightPurpleSquare6TitleBackdropAction, lightPurpleSquare6TitleBackdropRemove])
        lightPurpleSquare6TitleBackdrop.run(lightPurpleSquare6TitleBackdropSequence)
        
        lightPurpleSquare6TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare6TitleLabelRemove = SKAction.removeFromParent()
        lightPurpleSquare6TitleLabelSequence = SKAction.sequence([lightPurpleSquare6TitleLabelAction, lightPurpleSquare6TitleLabelRemove])
        lightPurpleSquare6TitleLabel.run(lightPurpleSquare6TitleLabelSequence)
        
        lightPurpleSquare6MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare6MenuItem1Remove = SKAction.removeFromParent()
        lightPurpleSquare6MenuItem1Sequence = SKAction.sequence([lightPurpleSquare6MenuItem1Action, lightPurpleSquare6MenuItem1Remove])
        lightPurpleSquare6MenuItem1.run(lightPurpleSquare6MenuItem1Sequence)
        
        lightPurpleSquare6Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare6Item1TitleRemove = SKAction.removeFromParent()
        lightPurpleSquare6Item1TitleSequence = SKAction.sequence([lightPurpleSquare6Item1TitleAction, lightPurpleSquare6Item1TitleRemove])
        lightPurpleSquare6Item1Title.run(lightPurpleSquare6Item1TitleSequence)
        
        lightPurpleSquare6MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare6MenuItem1Label1Remove = SKAction.removeFromParent()
        lightPurpleSquare6MenuItem1Label1Sequence = SKAction.sequence([lightPurpleSquare6MenuItem1Label1Action, lightPurpleSquare6MenuItem1Label1Remove])
        lightPurpleSquare6MenuItem1Label1.run(lightPurpleSquare6MenuItem1Label1Sequence)
        
        lightPurpleSquare6MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightPurpleSquare6MenuItem1Label2Remove = SKAction.removeFromParent()
        lightPurpleSquare6MenuItem1Label2Sequence = SKAction.sequence([lightPurpleSquare6MenuItem1Label2Action, lightPurpleSquare6MenuItem1Label2Remove])
        lightPurpleSquare6MenuItem1Label2.run(lightPurpleSquare6MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: lightPurpleSquare6Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}
