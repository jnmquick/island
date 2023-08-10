//
//  MenusToBuildOnDarkPurple.swift
//  mockup2
//
//  Created by Jason Quick on 6/28/23.
//

import Foundation
import SpriteKit

class MenuForDarkPurpleSquare: SKNode {
    
    var darkPurpleSquare2Menu: SKSpriteNode!
    var darkPurpleSquare2TitleBackdrop: SKSpriteNode!
    var darkPurpleSquare2TitleLabel: SKLabelNode!
    var darkPurpleSquare2MenuItem1: SKSpriteNode!
    var darkPurpleSquare2Item1Title: SKLabelNode!
    var darkPurpleSquare2MenuItem1Label1: SKLabelNode!
    var darkPurpleSquare2MenuItem1Label2: SKLabelNode!
    var darkPurpleSquare2Item1Label1: SKLabelNode!
    
    var darkPurpleSquare3Menu: SKSpriteNode!
    var darkPurpleSquare3TitleBackdrop: SKSpriteNode!
    var darkPurpleSquare3TitleLabel: SKLabelNode!
    var darkPurpleSquare3MenuItem1: SKSpriteNode!
    var darkPurpleSquare3Item1Title: SKLabelNode!
    var darkPurpleSquare3MenuItem1Label1: SKLabelNode!
    var darkPurpleSquare3MenuItem1Label2: SKLabelNode!
    var darkPurpleSquare3Item1Label1: SKLabelNode!
    
    var darkPurpleSquare4Menu: SKSpriteNode!
    var darkPurpleSquare4TitleBackdrop: SKSpriteNode!
    var darkPurpleSquare4TitleLabel: SKLabelNode!
    var darkPurpleSquare4MenuItem1: SKSpriteNode!
    var darkPurpleSquare4Item1Title: SKLabelNode!
    var darkPurpleSquare4MenuItem1Label1: SKLabelNode!
    var darkPurpleSquare4MenuItem1Label2: SKLabelNode!
    var darkPurpleSquare4Item1Label1: SKLabelNode!
    
    var darkPurpleSquare5Menu: SKSpriteNode!
    var darkPurpleSquare5TitleBackdrop: SKSpriteNode!
    var darkPurpleSquare5TitleLabel: SKLabelNode!
    var darkPurpleSquare5MenuItem1: SKSpriteNode!
    var darkPurpleSquare5Item1Title: SKLabelNode!
    var darkPurpleSquare5MenuItem1Label1: SKLabelNode!
    var darkPurpleSquare5MenuItem1Label2: SKLabelNode!
    var darkPurpleSquare5Item1Label1: SKLabelNode!
    
    var darkPurpleSquare6Menu: SKSpriteNode!
    var darkPurpleSquare6TitleBackdrop: SKSpriteNode!
    var darkPurpleSquare6TitleLabel: SKLabelNode!
    var darkPurpleSquare6MenuItem1: SKSpriteNode!
    var darkPurpleSquare6Item1Title: SKLabelNode!
    var darkPurpleSquare6MenuItem1Label1: SKLabelNode!
    var darkPurpleSquare6MenuItem1Label2: SKLabelNode!
    var darkPurpleSquare6Item1Label1: SKLabelNode!
    
    var priceOfMenuItem1 = 200
    var techLevelRequirementMenuItem1 = 0
    
    // DARK PURPLE SQUARE 2 ------------------- MENU
    
    func createMenuForDarkPurpleSquare2(view: SKView) {
        darkPurpleSquare2Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkPurpleSquare2Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare2Menu.setScale(0.42)
        darkPurpleSquare2Menu.zPosition = 3
        darkPurpleSquare2Menu.name = "darkPurpleSquare2Menu"
        addChild(darkPurpleSquare2Menu)
        
        darkPurpleSquare2TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkPurpleSquare2TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare2TitleBackdrop.setScale(0.42)
        darkPurpleSquare2TitleBackdrop.zPosition = 3
        addChild(darkPurpleSquare2TitleBackdrop)
        
        darkPurpleSquare2TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare2TitleLabel.text = "Reactor"
        darkPurpleSquare2TitleLabel.fontSize = 18
        darkPurpleSquare2TitleLabel.fontColor = forbiddenFruit
        darkPurpleSquare2TitleLabel.position = CGPoint(x: darkPurpleSquare2TitleBackdrop.frame.midX, y: darkPurpleSquare2TitleBackdrop.frame.maxY - darkPurpleSquare2TitleLabel.frame.size.height)
        darkPurpleSquare2TitleLabel.zPosition = 4
        addChild(darkPurpleSquare2TitleLabel)
        
        darkPurpleSquare2MenuItem1 = SKSpriteNode(imageNamed: "Location 7")
        darkPurpleSquare2MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkPurpleSquare2Menu.position.y)
        darkPurpleSquare2MenuItem1.zPosition = 4
        darkPurpleSquare2MenuItem1.setScale(0.26)
        darkPurpleSquare2MenuItem1.name = "darkPurpleSquare2MenuItem1"
        addChild(darkPurpleSquare2MenuItem1)
        
        darkPurpleSquare2Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare2Item1Title.text = "Power Plant"
        darkPurpleSquare2Item1Title.fontSize = 9
        darkPurpleSquare2Item1Title.fontColor = forbiddenFruit
        darkPurpleSquare2Item1Title.position = CGPoint(x: darkPurpleSquare2MenuItem1.frame.midX, y: darkPurpleSquare2MenuItem1.frame.maxY + darkPurpleSquare2Item1Title.frame.size.height)
        darkPurpleSquare2Item1Title.zPosition = 4
        addChild(darkPurpleSquare2Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkPurpleSquare2MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare2MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkPurpleSquare2MenuItem1Label1.fontSize = 7.5
        darkPurpleSquare2MenuItem1Label1.fontColor = forbiddenFruit
        darkPurpleSquare2MenuItem1Label1.position = CGPoint(x: darkPurpleSquare2MenuItem1.frame.midX, y: darkPurpleSquare2MenuItem1.frame.midY - darkPurpleSquare2MenuItem1.frame.size.height)
        darkPurpleSquare2MenuItem1Label1.zPosition = 4
        addChild(darkPurpleSquare2MenuItem1Label1)
        
        darkPurpleSquare2MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare2MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkPurpleSquare2MenuItem1Label2.fontSize = 7.5
        darkPurpleSquare2MenuItem1Label2.fontColor = forbiddenFruit
        darkPurpleSquare2MenuItem1Label2.position = CGPoint(x: darkPurpleSquare2MenuItem1.frame.midX, y: darkPurpleSquare2MenuItem1.frame.midY - darkPurpleSquare2MenuItem1.frame.size.height - darkPurpleSquare2MenuItem1Label2.frame.size.height)
        darkPurpleSquare2MenuItem1Label2.zPosition = 4
        addChild(darkPurpleSquare2MenuItem1Label2)
        
        darkPurpleSquare2Item1Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: darkPurpleSquare2MenuItem1.frame.midX, y: darkPurpleSquare2MenuItem1.frame.midY - darkPurpleSquare2MenuItem1.frame.size.height * 2))
        addChild(darkPurpleSquare2Item1Label1)
        
    }
    
    func moveDarkPurpleSquare2Menu(view: SKView) {
        // ITEM BACKDROP
        var darkPurpleSquare2MenuAction: SKAction
        
        // TITLE
        var darkPurpleSquare2TitleBackdropAction: SKAction
        var darkPurpleSquare2TitleLabelAction: SKAction
        
        // ITEM 1
        var darkPurpleSquare2MenuItem1Action: SKAction
        
        var darkPurpleSquare2Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkPurpleSquare2MenuItem1Label1Action: SKAction
        var darkPurpleSquare2MenuItem1Label2Action: SKAction
            
        darkPurpleSquare2MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkPurpleSquare2Menu.run(darkPurpleSquare2MenuAction)
        
        darkPurpleSquare2TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkPurpleSquare2TitleBackdrop.run(darkPurpleSquare2TitleBackdropAction)
        
        darkPurpleSquare2TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkPurpleSquare2TitleLabel.run(darkPurpleSquare2TitleLabelAction)
        
        darkPurpleSquare2MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare2MenuItem1.frame.size.height / 3), duration: 0.25)
        darkPurpleSquare2MenuItem1.run(darkPurpleSquare2MenuItem1Action)
        
        darkPurpleSquare2Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare2MenuItem1.frame.size.height), duration: 0.25)
        darkPurpleSquare2Item1Title.run(darkPurpleSquare2Item1TitleAction)
        
        darkPurpleSquare2MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare2MenuItem1.frame.size.height / 2), duration: 0.25)
        darkPurpleSquare2MenuItem1Label1.run(darkPurpleSquare2MenuItem1Label1Action)
        
        darkPurpleSquare2MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare2MenuItem1.frame.size.height / 2 - darkPurpleSquare2MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkPurpleSquare2MenuItem1Label2.run(darkPurpleSquare2MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkPurpleSquare2Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare2MenuItem1.frame.size.height / 2 - darkPurpleSquare2MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeDarkPurpleSquare2Menu(view: SKView) {
        // MOVE ACTIONS
        var darkPurpleSquare2MenuAction: SKAction // BACKDROP
        var darkPurpleSquare2TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkPurpleSquare2TitleLabelAction: SKAction // TITLE
        var darkPurpleSquare2MenuItem1Action: SKAction // ITEM 1
        var darkPurpleSquare2Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkPurpleSquare2MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare2MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var darkPurpleSquare2MenuRemove: SKAction // BACKDROP
        var darkPurpleSquare2TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkPurpleSquare2TitleLabelRemove: SKAction // TITLE
        var darkPurpleSquare2MenuItem1Remove: SKAction // ITEM 1
        var darkPurpleSquare2Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkPurpleSquare2MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare2MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkPurpleSquare2MenuSequence: SKAction // BACKDROP
        var darkPurpleSquare2TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkPurpleSquare2TitleLabelSequence: SKAction // TITLE
        var darkPurpleSquare2MenuItem1Sequence: SKAction // ITEM 1
        var darkPurpleSquare2Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkPurpleSquare2MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare2MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        darkPurpleSquare2MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare2MenuRemove = SKAction.removeFromParent()
        darkPurpleSquare2MenuSequence = SKAction.sequence([darkPurpleSquare2MenuAction, darkPurpleSquare2MenuRemove])
        darkPurpleSquare2Menu.run(darkPurpleSquare2MenuSequence)
        
        darkPurpleSquare2TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare2TitleBackdropRemove = SKAction.removeFromParent()
        darkPurpleSquare2TitleBackdropSequence = SKAction.sequence([darkPurpleSquare2TitleBackdropAction, darkPurpleSquare2TitleBackdropRemove])
        darkPurpleSquare2TitleBackdrop.run(darkPurpleSquare2TitleBackdropSequence)
        
        darkPurpleSquare2TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare2TitleLabelRemove = SKAction.removeFromParent()
        darkPurpleSquare2TitleLabelSequence = SKAction.sequence([darkPurpleSquare2TitleLabelAction, darkPurpleSquare2TitleLabelRemove])
        darkPurpleSquare2TitleLabel.run(darkPurpleSquare2TitleLabelSequence)
        
        darkPurpleSquare2MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare2MenuItem1Remove = SKAction.removeFromParent()
        darkPurpleSquare2MenuItem1Sequence = SKAction.sequence([darkPurpleSquare2MenuItem1Action, darkPurpleSquare2MenuItem1Remove])
        darkPurpleSquare2MenuItem1.run(darkPurpleSquare2MenuItem1Sequence)
        
        darkPurpleSquare2Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare2Item1TitleRemove = SKAction.removeFromParent()
        darkPurpleSquare2Item1TitleSequence = SKAction.sequence([darkPurpleSquare2Item1TitleAction, darkPurpleSquare2Item1TitleRemove])
        darkPurpleSquare2Item1Title.run(darkPurpleSquare2Item1TitleSequence)
        
        darkPurpleSquare2MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare2MenuItem1Label1Remove = SKAction.removeFromParent()
        darkPurpleSquare2MenuItem1Label1Sequence = SKAction.sequence([darkPurpleSquare2MenuItem1Label1Action, darkPurpleSquare2MenuItem1Label1Remove])
        darkPurpleSquare2MenuItem1Label1.run(darkPurpleSquare2MenuItem1Label1Sequence)
        
        darkPurpleSquare2MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare2MenuItem1Label2Remove = SKAction.removeFromParent()
        darkPurpleSquare2MenuItem1Label2Sequence = SKAction.sequence([darkPurpleSquare2MenuItem1Label2Action, darkPurpleSquare2MenuItem1Label2Remove])
        darkPurpleSquare2MenuItem1Label2.run(darkPurpleSquare2MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: darkPurpleSquare2Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // DARK PURPLE SQUARE 3 ------------------- MENU
    
    func createMenuForDarkPurpleSquare3(view: SKView) {
        darkPurpleSquare3Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkPurpleSquare3Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare3Menu.setScale(0.42)
        darkPurpleSquare3Menu.zPosition = 3
        darkPurpleSquare3Menu.name = "darkPurpleSquare3Menu"
        addChild(darkPurpleSquare3Menu)
        
        darkPurpleSquare3TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkPurpleSquare3TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare3TitleBackdrop.setScale(0.42)
        darkPurpleSquare3TitleBackdrop.zPosition = 3
        addChild(darkPurpleSquare3TitleBackdrop)
        
        darkPurpleSquare3TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare3TitleLabel.text = "Reactor"
        darkPurpleSquare3TitleLabel.fontSize = 18
        darkPurpleSquare3TitleLabel.fontColor = forbiddenFruit
        darkPurpleSquare3TitleLabel.position = CGPoint(x: darkPurpleSquare3TitleBackdrop.frame.midX, y: darkPurpleSquare3TitleBackdrop.frame.maxY - darkPurpleSquare3TitleLabel.frame.size.height)
        darkPurpleSquare3TitleLabel.zPosition = 4
        addChild(darkPurpleSquare3TitleLabel)
        
        darkPurpleSquare3MenuItem1 = SKSpriteNode(imageNamed: "Location 7")
        darkPurpleSquare3MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkPurpleSquare3Menu.position.y)
        darkPurpleSquare3MenuItem1.zPosition = 4
        darkPurpleSquare3MenuItem1.setScale(0.26)
        darkPurpleSquare3MenuItem1.name = "darkPurpleSquare3MenuItem1"
        addChild(darkPurpleSquare3MenuItem1)
        
        darkPurpleSquare3Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare3Item1Title.text = "Power Plant"
        darkPurpleSquare3Item1Title.fontSize = 9
        darkPurpleSquare3Item1Title.fontColor = forbiddenFruit
        darkPurpleSquare3Item1Title.position = CGPoint(x: darkPurpleSquare3MenuItem1.frame.midX, y: darkPurpleSquare3MenuItem1.frame.maxY + darkPurpleSquare3Item1Title.frame.size.height)
        darkPurpleSquare3Item1Title.zPosition = 4
        addChild(darkPurpleSquare3Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkPurpleSquare3MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare3MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkPurpleSquare3MenuItem1Label1.fontSize = 7.5
        darkPurpleSquare3MenuItem1Label1.fontColor = forbiddenFruit
        darkPurpleSquare3MenuItem1Label1.position = CGPoint(x: darkPurpleSquare3MenuItem1.frame.midX, y: darkPurpleSquare3MenuItem1.frame.midY - darkPurpleSquare3MenuItem1.frame.size.height)
        darkPurpleSquare3MenuItem1Label1.zPosition = 4
        addChild(darkPurpleSquare3MenuItem1Label1)
        
        darkPurpleSquare3MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare3MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkPurpleSquare3MenuItem1Label2.fontSize = 7.5
        darkPurpleSquare3MenuItem1Label2.fontColor = forbiddenFruit
        darkPurpleSquare3MenuItem1Label2.position = CGPoint(x: darkPurpleSquare3MenuItem1.frame.midX, y: darkPurpleSquare3MenuItem1.frame.midY - darkPurpleSquare3MenuItem1.frame.size.height - darkPurpleSquare3MenuItem1Label2.frame.size.height)
        darkPurpleSquare3MenuItem1Label2.zPosition = 4
        addChild(darkPurpleSquare3MenuItem1Label2)
        
        darkPurpleSquare3Item1Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: darkPurpleSquare3MenuItem1.frame.midX, y: darkPurpleSquare3MenuItem1.frame.midY - darkPurpleSquare3MenuItem1.frame.size.height * 2))
        addChild(darkPurpleSquare3Item1Label1)
        
    }
    
    func moveDarkPurpleSquare3Menu(view: SKView) {
        // ITEM BACKDROP
        var darkPurpleSquare3MenuAction: SKAction
        
        // TITLE
        var darkPurpleSquare3TitleBackdropAction: SKAction
        var darkPurpleSquare3TitleLabelAction: SKAction
        
        // ITEM 1
        var darkPurpleSquare3MenuItem1Action: SKAction
        
        var darkPurpleSquare3Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkPurpleSquare3MenuItem1Label1Action: SKAction
        var darkPurpleSquare3MenuItem1Label2Action: SKAction
            
        darkPurpleSquare3MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkPurpleSquare3Menu.run(darkPurpleSquare3MenuAction)
        
        darkPurpleSquare3TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkPurpleSquare3TitleBackdrop.run(darkPurpleSquare3TitleBackdropAction)
        
        darkPurpleSquare3TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkPurpleSquare3TitleLabel.run(darkPurpleSquare3TitleLabelAction)
        
        darkPurpleSquare3MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare3MenuItem1.frame.size.height / 3), duration: 0.25)
        darkPurpleSquare3MenuItem1.run(darkPurpleSquare3MenuItem1Action)
        
        darkPurpleSquare3Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare3MenuItem1.frame.size.height), duration: 0.25)
        darkPurpleSquare3Item1Title.run(darkPurpleSquare3Item1TitleAction)
        
        darkPurpleSquare3MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare3MenuItem1.frame.size.height / 2), duration: 0.25)
        darkPurpleSquare3MenuItem1Label1.run(darkPurpleSquare3MenuItem1Label1Action)
        
        darkPurpleSquare3MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare3MenuItem1.frame.size.height / 2 - darkPurpleSquare3MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkPurpleSquare3MenuItem1Label2.run(darkPurpleSquare3MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkPurpleSquare3Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare3MenuItem1.frame.size.height / 2 - darkPurpleSquare3MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeDarkPurpleSquare3Menu(view: SKView) {
        // MOVE ACTIONS
        var darkPurpleSquare3MenuAction: SKAction // BACKDROP
        var darkPurpleSquare3TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkPurpleSquare3TitleLabelAction: SKAction // TITLE
        var darkPurpleSquare3MenuItem1Action: SKAction // ITEM 1
        var darkPurpleSquare3Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkPurpleSquare3MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare3MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var darkPurpleSquare3MenuRemove: SKAction // BACKDROP
        var darkPurpleSquare3TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkPurpleSquare3TitleLabelRemove: SKAction // TITLE
        var darkPurpleSquare3MenuItem1Remove: SKAction // ITEM 1
        var darkPurpleSquare3Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkPurpleSquare3MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare3MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkPurpleSquare3MenuSequence: SKAction // BACKDROP
        var darkPurpleSquare3TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkPurpleSquare3TitleLabelSequence: SKAction // TITLE
        var darkPurpleSquare3MenuItem1Sequence: SKAction // ITEM 1
        var darkPurpleSquare3Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkPurpleSquare3MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare3MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        darkPurpleSquare3MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare3MenuRemove = SKAction.removeFromParent()
        darkPurpleSquare3MenuSequence = SKAction.sequence([darkPurpleSquare3MenuAction, darkPurpleSquare3MenuRemove])
        darkPurpleSquare3Menu.run(darkPurpleSquare3MenuSequence)
        
        darkPurpleSquare3TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare3TitleBackdropRemove = SKAction.removeFromParent()
        darkPurpleSquare3TitleBackdropSequence = SKAction.sequence([darkPurpleSquare3TitleBackdropAction, darkPurpleSquare3TitleBackdropRemove])
        darkPurpleSquare3TitleBackdrop.run(darkPurpleSquare3TitleBackdropSequence)
        
        darkPurpleSquare3TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare3TitleLabelRemove = SKAction.removeFromParent()
        darkPurpleSquare3TitleLabelSequence = SKAction.sequence([darkPurpleSquare3TitleLabelAction, darkPurpleSquare3TitleLabelRemove])
        darkPurpleSquare3TitleLabel.run(darkPurpleSquare3TitleLabelSequence)
        
        darkPurpleSquare3MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare3MenuItem1Remove = SKAction.removeFromParent()
        darkPurpleSquare3MenuItem1Sequence = SKAction.sequence([darkPurpleSquare3MenuItem1Action, darkPurpleSquare3MenuItem1Remove])
        darkPurpleSquare3MenuItem1.run(darkPurpleSquare3MenuItem1Sequence)
        
        darkPurpleSquare3Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare3Item1TitleRemove = SKAction.removeFromParent()
        darkPurpleSquare3Item1TitleSequence = SKAction.sequence([darkPurpleSquare3Item1TitleAction, darkPurpleSquare3Item1TitleRemove])
        darkPurpleSquare3Item1Title.run(darkPurpleSquare3Item1TitleSequence)
        
        darkPurpleSquare3MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare3MenuItem1Label1Remove = SKAction.removeFromParent()
        darkPurpleSquare3MenuItem1Label1Sequence = SKAction.sequence([darkPurpleSquare3MenuItem1Label1Action, darkPurpleSquare3MenuItem1Label1Remove])
        darkPurpleSquare3MenuItem1Label1.run(darkPurpleSquare3MenuItem1Label1Sequence)
        
        darkPurpleSquare3MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare3MenuItem1Label2Remove = SKAction.removeFromParent()
        darkPurpleSquare3MenuItem1Label2Sequence = SKAction.sequence([darkPurpleSquare3MenuItem1Label2Action, darkPurpleSquare3MenuItem1Label2Remove])
        darkPurpleSquare3MenuItem1Label2.run(darkPurpleSquare3MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: darkPurpleSquare3Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // DARK PURPLE SQUARE 4 ------------------- MENU
    
    func createMenuForDarkPurpleSquare4(view: SKView) {
        darkPurpleSquare4Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkPurpleSquare4Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare4Menu.setScale(0.42)
        darkPurpleSquare4Menu.zPosition = 3
        darkPurpleSquare4Menu.name = "darkPurpleSquare4Menu"
        addChild(darkPurpleSquare4Menu)
        
        darkPurpleSquare4TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkPurpleSquare4TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare4TitleBackdrop.setScale(0.42)
        darkPurpleSquare4TitleBackdrop.zPosition = 3
        addChild(darkPurpleSquare4TitleBackdrop)
        
        darkPurpleSquare4TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare4TitleLabel.text = "Reactor"
        darkPurpleSquare4TitleLabel.fontSize = 18
        darkPurpleSquare4TitleLabel.fontColor = forbiddenFruit
        darkPurpleSquare4TitleLabel.position = CGPoint(x: darkPurpleSquare4TitleBackdrop.frame.midX, y: darkPurpleSquare4TitleBackdrop.frame.maxY - darkPurpleSquare4TitleLabel.frame.size.height)
        darkPurpleSquare4TitleLabel.zPosition = 4
        addChild(darkPurpleSquare4TitleLabel)
        
        darkPurpleSquare4MenuItem1 = SKSpriteNode(imageNamed: "Location 7")
        darkPurpleSquare4MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkPurpleSquare4Menu.position.y)
        darkPurpleSquare4MenuItem1.zPosition = 4
        darkPurpleSquare4MenuItem1.setScale(0.26)
        darkPurpleSquare4MenuItem1.name = "darkPurpleSquare4MenuItem1"
        addChild(darkPurpleSquare4MenuItem1)
        
        darkPurpleSquare4Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare4Item1Title.text = "Power Plant"
        darkPurpleSquare4Item1Title.fontSize = 9
        darkPurpleSquare4Item1Title.fontColor = forbiddenFruit
        darkPurpleSquare4Item1Title.position = CGPoint(x: darkPurpleSquare4MenuItem1.frame.midX, y: darkPurpleSquare4MenuItem1.frame.maxY + darkPurpleSquare4Item1Title.frame.size.height)
        darkPurpleSquare4Item1Title.zPosition = 4
        addChild(darkPurpleSquare4Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkPurpleSquare4MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare4MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkPurpleSquare4MenuItem1Label1.fontSize = 7.5
        darkPurpleSquare4MenuItem1Label1.fontColor = forbiddenFruit
        darkPurpleSquare4MenuItem1Label1.position = CGPoint(x: darkPurpleSquare4MenuItem1.frame.midX, y: darkPurpleSquare4MenuItem1.frame.midY - darkPurpleSquare4MenuItem1.frame.size.height)
        darkPurpleSquare4MenuItem1Label1.zPosition = 4
        addChild(darkPurpleSquare4MenuItem1Label1)
        
        darkPurpleSquare4MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare4MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkPurpleSquare4MenuItem1Label2.fontSize = 7.5
        darkPurpleSquare4MenuItem1Label2.fontColor = forbiddenFruit
        darkPurpleSquare4MenuItem1Label2.position = CGPoint(x: darkPurpleSquare4MenuItem1.frame.midX, y: darkPurpleSquare4MenuItem1.frame.midY - darkPurpleSquare4MenuItem1.frame.size.height - darkPurpleSquare4MenuItem1Label2.frame.size.height)
        darkPurpleSquare4MenuItem1Label2.zPosition = 4
        addChild(darkPurpleSquare4MenuItem1Label2)
        
        darkPurpleSquare4Item1Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: darkPurpleSquare4MenuItem1.frame.midX, y: darkPurpleSquare4MenuItem1.frame.midY - darkPurpleSquare4MenuItem1.frame.size.height * 2))
        addChild(darkPurpleSquare4Item1Label1)
        
    }
    
    func moveDarkPurpleSquare4Menu(view: SKView) {
        // ITEM BACKDROP
        var darkPurpleSquare4MenuAction: SKAction
        
        // TITLE
        var darkPurpleSquare4TitleBackdropAction: SKAction
        var darkPurpleSquare4TitleLabelAction: SKAction
        
        // ITEM 1
        var darkPurpleSquare4MenuItem1Action: SKAction
        
        var darkPurpleSquare4Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkPurpleSquare4MenuItem1Label1Action: SKAction
        var darkPurpleSquare4MenuItem1Label2Action: SKAction
            
        darkPurpleSquare4MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkPurpleSquare4Menu.run(darkPurpleSquare4MenuAction)
        
        darkPurpleSquare4TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkPurpleSquare4TitleBackdrop.run(darkPurpleSquare4TitleBackdropAction)
        
        darkPurpleSquare4TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkPurpleSquare4TitleLabel.run(darkPurpleSquare4TitleLabelAction)
        
        darkPurpleSquare4MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare4MenuItem1.frame.size.height / 3), duration: 0.25)
        darkPurpleSquare4MenuItem1.run(darkPurpleSquare4MenuItem1Action)
        
        darkPurpleSquare4Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare4MenuItem1.frame.size.height), duration: 0.25)
        darkPurpleSquare4Item1Title.run(darkPurpleSquare4Item1TitleAction)
        
        darkPurpleSquare4MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare4MenuItem1.frame.size.height / 2), duration: 0.25)
        darkPurpleSquare4MenuItem1Label1.run(darkPurpleSquare4MenuItem1Label1Action)
        
        darkPurpleSquare4MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare4MenuItem1.frame.size.height / 2 - darkPurpleSquare4MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkPurpleSquare4MenuItem1Label2.run(darkPurpleSquare4MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkPurpleSquare4Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare4MenuItem1.frame.size.height / 2 - darkPurpleSquare4MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeDarkPurpleSquare4Menu(view: SKView) {
        // MOVE ACTIONS
        var darkPurpleSquare4MenuAction: SKAction // BACKDROP
        var darkPurpleSquare4TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkPurpleSquare4TitleLabelAction: SKAction // TITLE
        var darkPurpleSquare4MenuItem1Action: SKAction // ITEM 1
        var darkPurpleSquare4Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkPurpleSquare4MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare4MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var darkPurpleSquare4MenuRemove: SKAction // BACKDROP
        var darkPurpleSquare4TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkPurpleSquare4TitleLabelRemove: SKAction // TITLE
        var darkPurpleSquare4MenuItem1Remove: SKAction // ITEM 1
        var darkPurpleSquare4Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkPurpleSquare4MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare4MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkPurpleSquare4MenuSequence: SKAction // BACKDROP
        var darkPurpleSquare4TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkPurpleSquare4TitleLabelSequence: SKAction // TITLE
        var darkPurpleSquare4MenuItem1Sequence: SKAction // ITEM 1
        var darkPurpleSquare4Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkPurpleSquare4MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare4MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        darkPurpleSquare4MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare4MenuRemove = SKAction.removeFromParent()
        darkPurpleSquare4MenuSequence = SKAction.sequence([darkPurpleSquare4MenuAction, darkPurpleSquare4MenuRemove])
        darkPurpleSquare4Menu.run(darkPurpleSquare4MenuSequence)
        
        darkPurpleSquare4TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare4TitleBackdropRemove = SKAction.removeFromParent()
        darkPurpleSquare4TitleBackdropSequence = SKAction.sequence([darkPurpleSquare4TitleBackdropAction, darkPurpleSquare4TitleBackdropRemove])
        darkPurpleSquare4TitleBackdrop.run(darkPurpleSquare4TitleBackdropSequence)
        
        darkPurpleSquare4TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare4TitleLabelRemove = SKAction.removeFromParent()
        darkPurpleSquare4TitleLabelSequence = SKAction.sequence([darkPurpleSquare4TitleLabelAction, darkPurpleSquare4TitleLabelRemove])
        darkPurpleSquare4TitleLabel.run(darkPurpleSquare4TitleLabelSequence)
        
        darkPurpleSquare4MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare4MenuItem1Remove = SKAction.removeFromParent()
        darkPurpleSquare4MenuItem1Sequence = SKAction.sequence([darkPurpleSquare4MenuItem1Action, darkPurpleSquare4MenuItem1Remove])
        darkPurpleSquare4MenuItem1.run(darkPurpleSquare4MenuItem1Sequence)
        
        darkPurpleSquare4Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare4Item1TitleRemove = SKAction.removeFromParent()
        darkPurpleSquare4Item1TitleSequence = SKAction.sequence([darkPurpleSquare4Item1TitleAction, darkPurpleSquare4Item1TitleRemove])
        darkPurpleSquare4Item1Title.run(darkPurpleSquare4Item1TitleSequence)
        
        darkPurpleSquare4MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare4MenuItem1Label1Remove = SKAction.removeFromParent()
        darkPurpleSquare4MenuItem1Label1Sequence = SKAction.sequence([darkPurpleSquare4MenuItem1Label1Action, darkPurpleSquare4MenuItem1Label1Remove])
        darkPurpleSquare4MenuItem1Label1.run(darkPurpleSquare4MenuItem1Label1Sequence)
        
        darkPurpleSquare4MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare4MenuItem1Label2Remove = SKAction.removeFromParent()
        darkPurpleSquare4MenuItem1Label2Sequence = SKAction.sequence([darkPurpleSquare4MenuItem1Label2Action, darkPurpleSquare4MenuItem1Label2Remove])
        darkPurpleSquare4MenuItem1Label2.run(darkPurpleSquare4MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: darkPurpleSquare4Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // DARK PURPLE SQUARE 5 ------------------- MENU
    
    func createMenuForDarkPurpleSquare5(view: SKView) {
        darkPurpleSquare5Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkPurpleSquare5Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare5Menu.setScale(0.42)
        darkPurpleSquare5Menu.zPosition = 3
        darkPurpleSquare5Menu.name = "darkPurpleSquare5Menu"
        addChild(darkPurpleSquare5Menu)
        
        darkPurpleSquare5TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkPurpleSquare5TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare5TitleBackdrop.setScale(0.42)
        darkPurpleSquare5TitleBackdrop.zPosition = 3
        addChild(darkPurpleSquare5TitleBackdrop)
        
        darkPurpleSquare5TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare5TitleLabel.text = "Reactor"
        darkPurpleSquare5TitleLabel.fontSize = 18
        darkPurpleSquare5TitleLabel.fontColor = forbiddenFruit
        darkPurpleSquare5TitleLabel.position = CGPoint(x: darkPurpleSquare5TitleBackdrop.frame.midX, y: darkPurpleSquare5TitleBackdrop.frame.maxY - darkPurpleSquare5TitleLabel.frame.size.height)
        darkPurpleSquare5TitleLabel.zPosition = 4
        addChild(darkPurpleSquare5TitleLabel)
        
        darkPurpleSquare5MenuItem1 = SKSpriteNode(imageNamed: "Location 7")
        darkPurpleSquare5MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkPurpleSquare5Menu.position.y)
        darkPurpleSquare5MenuItem1.zPosition = 4
        darkPurpleSquare5MenuItem1.setScale(0.26)
        darkPurpleSquare5MenuItem1.name = "darkPurpleSquare5MenuItem1"
        addChild(darkPurpleSquare5MenuItem1)
        
        darkPurpleSquare5Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare5Item1Title.text = "Power Plant"
        darkPurpleSquare5Item1Title.fontSize = 9
        darkPurpleSquare5Item1Title.fontColor = forbiddenFruit
        darkPurpleSquare5Item1Title.position = CGPoint(x: darkPurpleSquare5MenuItem1.frame.midX, y: darkPurpleSquare5MenuItem1.frame.maxY + darkPurpleSquare5Item1Title.frame.size.height)
        darkPurpleSquare5Item1Title.zPosition = 4
        addChild(darkPurpleSquare5Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkPurpleSquare5MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare5MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkPurpleSquare5MenuItem1Label1.fontSize = 7.5
        darkPurpleSquare5MenuItem1Label1.fontColor = forbiddenFruit
        darkPurpleSquare5MenuItem1Label1.position = CGPoint(x: darkPurpleSquare5MenuItem1.frame.midX, y: darkPurpleSquare5MenuItem1.frame.midY - darkPurpleSquare5MenuItem1.frame.size.height)
        darkPurpleSquare5MenuItem1Label1.zPosition = 4
        addChild(darkPurpleSquare5MenuItem1Label1)
        
        darkPurpleSquare5MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare5MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkPurpleSquare5MenuItem1Label2.fontSize = 7.5
        darkPurpleSquare5MenuItem1Label2.fontColor = forbiddenFruit
        darkPurpleSquare5MenuItem1Label2.position = CGPoint(x: darkPurpleSquare5MenuItem1.frame.midX, y: darkPurpleSquare5MenuItem1.frame.midY - darkPurpleSquare5MenuItem1.frame.size.height - darkPurpleSquare5MenuItem1Label2.frame.size.height)
        darkPurpleSquare5MenuItem1Label2.zPosition = 4
        addChild(darkPurpleSquare5MenuItem1Label2)
        
        darkPurpleSquare5Item1Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: darkPurpleSquare5MenuItem1.frame.midX, y: darkPurpleSquare5MenuItem1.frame.midY - darkPurpleSquare5MenuItem1.frame.size.height * 2))
        addChild(darkPurpleSquare5Item1Label1)
        
    }
    
    func moveDarkPurpleSquare5Menu(view: SKView) {
        // ITEM BACKDROP
        var darkPurpleSquare5MenuAction: SKAction
        
        // TITLE
        var darkPurpleSquare5TitleBackdropAction: SKAction
        var darkPurpleSquare5TitleLabelAction: SKAction
        
        // ITEM 1
        var darkPurpleSquare5MenuItem1Action: SKAction
        
        var darkPurpleSquare5Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkPurpleSquare5MenuItem1Label1Action: SKAction
        var darkPurpleSquare5MenuItem1Label2Action: SKAction
            
        darkPurpleSquare5MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkPurpleSquare5Menu.run(darkPurpleSquare5MenuAction)
        
        darkPurpleSquare5TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkPurpleSquare5TitleBackdrop.run(darkPurpleSquare5TitleBackdropAction)
        
        darkPurpleSquare5TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkPurpleSquare5TitleLabel.run(darkPurpleSquare5TitleLabelAction)
        
        darkPurpleSquare5MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare5MenuItem1.frame.size.height / 3), duration: 0.25)
        darkPurpleSquare5MenuItem1.run(darkPurpleSquare5MenuItem1Action)
        
        darkPurpleSquare5Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare5MenuItem1.frame.size.height), duration: 0.25)
        darkPurpleSquare5Item1Title.run(darkPurpleSquare5Item1TitleAction)
        
        darkPurpleSquare5MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare5MenuItem1.frame.size.height / 2), duration: 0.25)
        darkPurpleSquare5MenuItem1Label1.run(darkPurpleSquare5MenuItem1Label1Action)
        
        darkPurpleSquare5MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare5MenuItem1.frame.size.height / 2 - darkPurpleSquare5MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkPurpleSquare5MenuItem1Label2.run(darkPurpleSquare5MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkPurpleSquare5Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare5MenuItem1.frame.size.height / 2 - darkPurpleSquare5MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeDarkPurpleSquare5Menu(view: SKView) {
        // MOVE ACTIONS
        var darkPurpleSquare5MenuAction: SKAction // BACKDROP
        var darkPurpleSquare5TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkPurpleSquare5TitleLabelAction: SKAction // TITLE
        var darkPurpleSquare5MenuItem1Action: SKAction // ITEM 1
        var darkPurpleSquare5Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkPurpleSquare5MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare5MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var darkPurpleSquare5MenuRemove: SKAction // BACKDROP
        var darkPurpleSquare5TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkPurpleSquare5TitleLabelRemove: SKAction // TITLE
        var darkPurpleSquare5MenuItem1Remove: SKAction // ITEM 1
        var darkPurpleSquare5Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkPurpleSquare5MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare5MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkPurpleSquare5MenuSequence: SKAction // BACKDROP
        var darkPurpleSquare5TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkPurpleSquare5TitleLabelSequence: SKAction // TITLE
        var darkPurpleSquare5MenuItem1Sequence: SKAction // ITEM 1
        var darkPurpleSquare5Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkPurpleSquare5MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare5MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        darkPurpleSquare5MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare5MenuRemove = SKAction.removeFromParent()
        darkPurpleSquare5MenuSequence = SKAction.sequence([darkPurpleSquare5MenuAction, darkPurpleSquare5MenuRemove])
        darkPurpleSquare5Menu.run(darkPurpleSquare5MenuSequence)
        
        darkPurpleSquare5TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare5TitleBackdropRemove = SKAction.removeFromParent()
        darkPurpleSquare5TitleBackdropSequence = SKAction.sequence([darkPurpleSquare5TitleBackdropAction, darkPurpleSquare5TitleBackdropRemove])
        darkPurpleSquare5TitleBackdrop.run(darkPurpleSquare5TitleBackdropSequence)
        
        darkPurpleSquare5TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare5TitleLabelRemove = SKAction.removeFromParent()
        darkPurpleSquare5TitleLabelSequence = SKAction.sequence([darkPurpleSquare5TitleLabelAction, darkPurpleSquare5TitleLabelRemove])
        darkPurpleSquare5TitleLabel.run(darkPurpleSquare5TitleLabelSequence)
        
        darkPurpleSquare5MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare5MenuItem1Remove = SKAction.removeFromParent()
        darkPurpleSquare5MenuItem1Sequence = SKAction.sequence([darkPurpleSquare5MenuItem1Action, darkPurpleSquare5MenuItem1Remove])
        darkPurpleSquare5MenuItem1.run(darkPurpleSquare5MenuItem1Sequence)
        
        darkPurpleSquare5Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare5Item1TitleRemove = SKAction.removeFromParent()
        darkPurpleSquare5Item1TitleSequence = SKAction.sequence([darkPurpleSquare5Item1TitleAction, darkPurpleSquare5Item1TitleRemove])
        darkPurpleSquare5Item1Title.run(darkPurpleSquare5Item1TitleSequence)
        
        darkPurpleSquare5MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare5MenuItem1Label1Remove = SKAction.removeFromParent()
        darkPurpleSquare5MenuItem1Label1Sequence = SKAction.sequence([darkPurpleSquare5MenuItem1Label1Action, darkPurpleSquare5MenuItem1Label1Remove])
        darkPurpleSquare5MenuItem1Label1.run(darkPurpleSquare5MenuItem1Label1Sequence)
        
        darkPurpleSquare5MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare5MenuItem1Label2Remove = SKAction.removeFromParent()
        darkPurpleSquare5MenuItem1Label2Sequence = SKAction.sequence([darkPurpleSquare5MenuItem1Label2Action, darkPurpleSquare5MenuItem1Label2Remove])
        darkPurpleSquare5MenuItem1Label2.run(darkPurpleSquare5MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: darkPurpleSquare5Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // DARK PURPLE SQUARE 6 ------------------- MENU
    
    func createMenuForDarkPurpleSquare6(view: SKView) {
        darkPurpleSquare6Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkPurpleSquare6Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare6Menu.setScale(0.42)
        darkPurpleSquare6Menu.zPosition = 3
        darkPurpleSquare6Menu.name = "darkPurpleSquare6Menu"
        addChild(darkPurpleSquare6Menu)
        
        darkPurpleSquare6TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkPurpleSquare6TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkPurpleSquare6TitleBackdrop.setScale(0.42)
        darkPurpleSquare6TitleBackdrop.zPosition = 3
        addChild(darkPurpleSquare6TitleBackdrop)
        
        darkPurpleSquare6TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare6TitleLabel.text = "Reactor"
        darkPurpleSquare6TitleLabel.fontSize = 18
        darkPurpleSquare6TitleLabel.fontColor = forbiddenFruit
        darkPurpleSquare6TitleLabel.position = CGPoint(x: darkPurpleSquare6TitleBackdrop.frame.midX, y: darkPurpleSquare6TitleBackdrop.frame.maxY - darkPurpleSquare6TitleLabel.frame.size.height)
        darkPurpleSquare6TitleLabel.zPosition = 4
        addChild(darkPurpleSquare6TitleLabel)
        
        darkPurpleSquare6MenuItem1 = SKSpriteNode(imageNamed: "Location 7")
        darkPurpleSquare6MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkPurpleSquare6Menu.position.y)
        darkPurpleSquare6MenuItem1.zPosition = 4
        darkPurpleSquare6MenuItem1.setScale(0.26)
        darkPurpleSquare6MenuItem1.name = "darkPurpleSquare6MenuItem1"
        addChild(darkPurpleSquare6MenuItem1)
        
        darkPurpleSquare6Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare6Item1Title.text = "Power Plant"
        darkPurpleSquare6Item1Title.fontSize = 9
        darkPurpleSquare6Item1Title.fontColor = forbiddenFruit
        darkPurpleSquare6Item1Title.position = CGPoint(x: darkPurpleSquare6MenuItem1.frame.midX, y: darkPurpleSquare6MenuItem1.frame.maxY + darkPurpleSquare6Item1Title.frame.size.height)
        darkPurpleSquare6Item1Title.zPosition = 4
        addChild(darkPurpleSquare6Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkPurpleSquare6MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare6MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkPurpleSquare6MenuItem1Label1.fontSize = 7.5
        darkPurpleSquare6MenuItem1Label1.fontColor = forbiddenFruit
        darkPurpleSquare6MenuItem1Label1.position = CGPoint(x: darkPurpleSquare6MenuItem1.frame.midX, y: darkPurpleSquare6MenuItem1.frame.midY - darkPurpleSquare6MenuItem1.frame.size.height)
        darkPurpleSquare6MenuItem1Label1.zPosition = 4
        addChild(darkPurpleSquare6MenuItem1Label1)
        
        darkPurpleSquare6MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkPurpleSquare6MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkPurpleSquare6MenuItem1Label2.fontSize = 7.5
        darkPurpleSquare6MenuItem1Label2.fontColor = forbiddenFruit
        darkPurpleSquare6MenuItem1Label2.position = CGPoint(x: darkPurpleSquare6MenuItem1.frame.midX, y: darkPurpleSquare6MenuItem1.frame.midY - darkPurpleSquare6MenuItem1.frame.size.height - darkPurpleSquare6MenuItem1Label2.frame.size.height)
        darkPurpleSquare6MenuItem1Label2.zPosition = 4
        addChild(darkPurpleSquare6MenuItem1Label2)
        
        darkPurpleSquare6Item1Label1 = createMenuItemLabels(text: "Raises Tech Level", pos: CGPoint(x: darkPurpleSquare6MenuItem1.frame.midX, y: darkPurpleSquare6MenuItem1.frame.midY - darkPurpleSquare6MenuItem1.frame.size.height * 2))
        addChild(darkPurpleSquare6Item1Label1)
        
    }
    
    func moveDarkPurpleSquare6Menu(view: SKView) {
        // ITEM BACKDROP
        var darkPurpleSquare6MenuAction: SKAction
        
        // TITLE
        var darkPurpleSquare6TitleBackdropAction: SKAction
        var darkPurpleSquare6TitleLabelAction: SKAction
        
        // ITEM 1
        var darkPurpleSquare6MenuItem1Action: SKAction
        
        var darkPurpleSquare6Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkPurpleSquare6MenuItem1Label1Action: SKAction
        var darkPurpleSquare6MenuItem1Label2Action: SKAction
            
        darkPurpleSquare6MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkPurpleSquare6Menu.run(darkPurpleSquare6MenuAction)
        
        darkPurpleSquare6TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkPurpleSquare6TitleBackdrop.run(darkPurpleSquare6TitleBackdropAction)
        
        darkPurpleSquare6TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkPurpleSquare6TitleLabel.run(darkPurpleSquare6TitleLabelAction)
        
        darkPurpleSquare6MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare6MenuItem1.frame.size.height / 3), duration: 0.25)
        darkPurpleSquare6MenuItem1.run(darkPurpleSquare6MenuItem1Action)
        
        darkPurpleSquare6Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkPurpleSquare6MenuItem1.frame.size.height), duration: 0.25)
        darkPurpleSquare6Item1Title.run(darkPurpleSquare6Item1TitleAction)
        
        darkPurpleSquare6MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare6MenuItem1.frame.size.height / 2), duration: 0.25)
        darkPurpleSquare6MenuItem1Label1.run(darkPurpleSquare6MenuItem1Label1Action)
        
        darkPurpleSquare6MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare6MenuItem1.frame.size.height / 2 - darkPurpleSquare6MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkPurpleSquare6MenuItem1Label2.run(darkPurpleSquare6MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkPurpleSquare6Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkPurpleSquare6MenuItem1.frame.size.height / 2 - darkPurpleSquare6MenuItem1Label2.frame.size.height * 3))
        
    }
    
    func removeDarkPurpleSquare6Menu(view: SKView) {
        // MOVE ACTIONS
        var darkPurpleSquare6MenuAction: SKAction // BACKDROP
        var darkPurpleSquare6TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkPurpleSquare6TitleLabelAction: SKAction // TITLE
        var darkPurpleSquare6MenuItem1Action: SKAction // ITEM 1
        var darkPurpleSquare6Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkPurpleSquare6MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare6MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        
        // REMOVE ACTIONS
        var darkPurpleSquare6MenuRemove: SKAction // BACKDROP
        var darkPurpleSquare6TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkPurpleSquare6TitleLabelRemove: SKAction // TITLE
        var darkPurpleSquare6MenuItem1Remove: SKAction // ITEM 1
        var darkPurpleSquare6Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkPurpleSquare6MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare6MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkPurpleSquare6MenuSequence: SKAction // BACKDROP
        var darkPurpleSquare6TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkPurpleSquare6TitleLabelSequence: SKAction // TITLE
        var darkPurpleSquare6MenuItem1Sequence: SKAction // ITEM 1
        var darkPurpleSquare6Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkPurpleSquare6MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkPurpleSquare6MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        
        darkPurpleSquare6MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare6MenuRemove = SKAction.removeFromParent()
        darkPurpleSquare6MenuSequence = SKAction.sequence([darkPurpleSquare6MenuAction, darkPurpleSquare6MenuRemove])
        darkPurpleSquare6Menu.run(darkPurpleSquare6MenuSequence)
        
        darkPurpleSquare6TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare6TitleBackdropRemove = SKAction.removeFromParent()
        darkPurpleSquare6TitleBackdropSequence = SKAction.sequence([darkPurpleSquare6TitleBackdropAction, darkPurpleSquare6TitleBackdropRemove])
        darkPurpleSquare6TitleBackdrop.run(darkPurpleSquare6TitleBackdropSequence)
        
        darkPurpleSquare6TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare6TitleLabelRemove = SKAction.removeFromParent()
        darkPurpleSquare6TitleLabelSequence = SKAction.sequence([darkPurpleSquare6TitleLabelAction, darkPurpleSquare6TitleLabelRemove])
        darkPurpleSquare6TitleLabel.run(darkPurpleSquare6TitleLabelSequence)
        
        darkPurpleSquare6MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare6MenuItem1Remove = SKAction.removeFromParent()
        darkPurpleSquare6MenuItem1Sequence = SKAction.sequence([darkPurpleSquare6MenuItem1Action, darkPurpleSquare6MenuItem1Remove])
        darkPurpleSquare6MenuItem1.run(darkPurpleSquare6MenuItem1Sequence)
        
        darkPurpleSquare6Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare6Item1TitleRemove = SKAction.removeFromParent()
        darkPurpleSquare6Item1TitleSequence = SKAction.sequence([darkPurpleSquare6Item1TitleAction, darkPurpleSquare6Item1TitleRemove])
        darkPurpleSquare6Item1Title.run(darkPurpleSquare6Item1TitleSequence)
        
        darkPurpleSquare6MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare6MenuItem1Label1Remove = SKAction.removeFromParent()
        darkPurpleSquare6MenuItem1Label1Sequence = SKAction.sequence([darkPurpleSquare6MenuItem1Label1Action, darkPurpleSquare6MenuItem1Label1Remove])
        darkPurpleSquare6MenuItem1Label1.run(darkPurpleSquare6MenuItem1Label1Sequence)
        
        darkPurpleSquare6MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkPurpleSquare6MenuItem1Label2Remove = SKAction.removeFromParent()
        darkPurpleSquare6MenuItem1Label2Sequence = SKAction.sequence([darkPurpleSquare6MenuItem1Label2Action, darkPurpleSquare6MenuItem1Label2Remove])
        darkPurpleSquare6MenuItem1Label2.run(darkPurpleSquare6MenuItem1Label2Sequence)
        
        removeMenuItemLabels(label: darkPurpleSquare6Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}
