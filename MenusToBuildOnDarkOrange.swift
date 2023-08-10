//
//  MenusToBuildOnDarkOrange.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class MenuForDarkOrangeSquare: SKNode {
    
    var darkOrangeSquare2Menu: SKSpriteNode!
    var darkOrangeSquare2TitleBackdrop: SKSpriteNode!
    var darkOrangeSquare2TitleLabel: SKLabelNode!
    var darkOrangeSquare2MenuItem1: SKSpriteNode!
    var darkOrangeSquare2Item1Title: SKLabelNode!
    var darkOrangeSquare2MenuItem1Label1: SKLabelNode!
    var darkOrangeSquare2MenuItem1Label2: SKLabelNode!
    var darkOrangeSquare2Item1Label1: SKLabelNode!
    var darkOrangeSquare2MenuItem2: SKSpriteNode!
    var darkOrangeSquare2Item2Title: SKLabelNode!
    var darkOrangeSquare2MenuItem2Label1: SKLabelNode!
    var darkOrangeSquare2MenuItem2Label2: SKLabelNode!
    var darkOrangeSquare2Item2Label1: SKLabelNode!
    
    var darkOrangeSquare3Menu: SKSpriteNode!
    var darkOrangeSquare3TitleBackdrop: SKSpriteNode!
    var darkOrangeSquare3TitleLabel: SKLabelNode!
    var darkOrangeSquare3MenuItem1: SKSpriteNode!
    var darkOrangeSquare3Item1Title: SKLabelNode!
    var darkOrangeSquare3MenuItem1Label1: SKLabelNode!
    var darkOrangeSquare3MenuItem1Label2: SKLabelNode!
    var darkOrangeSquare3Item1Label1: SKLabelNode!
    var darkOrangeSquare3MenuItem2: SKSpriteNode!
    var darkOrangeSquare3Item2Title: SKLabelNode!
    var darkOrangeSquare3MenuItem2Label1: SKLabelNode!
    var darkOrangeSquare3MenuItem2Label2: SKLabelNode!
    var darkOrangeSquare3Item2Label1: SKLabelNode!
    
    var darkOrangeSquare4Menu: SKSpriteNode!
    var darkOrangeSquare4TitleBackdrop: SKSpriteNode!
    var darkOrangeSquare4TitleLabel: SKLabelNode!
    var darkOrangeSquare4MenuItem1: SKSpriteNode!
    var darkOrangeSquare4Item1Title: SKLabelNode!
    var darkOrangeSquare4MenuItem1Label1: SKLabelNode!
    var darkOrangeSquare4MenuItem1Label2: SKLabelNode!
    var darkOrangeSquare4Item1Label1: SKLabelNode!
    var darkOrangeSquare4MenuItem2: SKSpriteNode!
    var darkOrangeSquare4Item2Title: SKLabelNode!
    var darkOrangeSquare4MenuItem2Label1: SKLabelNode!
    var darkOrangeSquare4MenuItem2Label2: SKLabelNode!
    var darkOrangeSquare4Item2Label1: SKLabelNode!
    
    var darkOrangeSquare5Menu: SKSpriteNode!
    var darkOrangeSquare5TitleBackdrop: SKSpriteNode!
    var darkOrangeSquare5TitleLabel: SKLabelNode!
    var darkOrangeSquare5MenuItem1: SKSpriteNode!
    var darkOrangeSquare5Item1Title: SKLabelNode!
    var darkOrangeSquare5MenuItem1Label1: SKLabelNode!
    var darkOrangeSquare5MenuItem1Label2: SKLabelNode!
    var darkOrangeSquare5Item1Label1: SKLabelNode!
    var darkOrangeSquare5MenuItem2: SKSpriteNode!
    var darkOrangeSquare5Item2Title: SKLabelNode!
    var darkOrangeSquare5MenuItem2Label1: SKLabelNode!
    var darkOrangeSquare5MenuItem2Label2: SKLabelNode!
    var darkOrangeSquare5Item2Label1: SKLabelNode!
    
    var darkOrangeSquare6Menu: SKSpriteNode!
    var darkOrangeSquare6TitleBackdrop: SKSpriteNode!
    var darkOrangeSquare6TitleLabel: SKLabelNode!
    var darkOrangeSquare6MenuItem1: SKSpriteNode!
    var darkOrangeSquare6Item1Title: SKLabelNode!
    var darkOrangeSquare6MenuItem1Label1: SKLabelNode!
    var darkOrangeSquare6MenuItem1Label2: SKLabelNode!
    var darkOrangeSquare6Item1Label1: SKLabelNode!
    var darkOrangeSquare6MenuItem2: SKSpriteNode!
    var darkOrangeSquare6Item2Title: SKLabelNode!
    var darkOrangeSquare6MenuItem2Label1: SKLabelNode!
    var darkOrangeSquare6MenuItem2Label2: SKLabelNode!
    var darkOrangeSquare6Item2Label1: SKLabelNode!
    
    var priceOfMenuItem1 = 200
    var techLevelRequirementMenuItem1 = 0
    var priceOfMenuItem2 = 200
    var techLevelRequirementMenuItem2 = 0
    
    // dark Orange SQUARE 2 ------------------- MENU
    
    func createMenuForDarkOrangeSquare2(view: SKView) {
        darkOrangeSquare2Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkOrangeSquare2Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare2Menu.setScale(0.42)
        darkOrangeSquare2Menu.zPosition = 3
        darkOrangeSquare2Menu.name = "darkOrangeSquare2Menu"
        addChild(darkOrangeSquare2Menu)
        
        darkOrangeSquare2TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkOrangeSquare2TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare2TitleBackdrop.setScale(0.42)
        darkOrangeSquare2TitleBackdrop.zPosition = 3
        addChild(darkOrangeSquare2TitleBackdrop)
        
        darkOrangeSquare2TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare2TitleLabel.text = "Pirateships"
        darkOrangeSquare2TitleLabel.fontSize = 18
        darkOrangeSquare2TitleLabel.fontColor = forbiddenFruit
        darkOrangeSquare2TitleLabel.position = CGPoint(x: darkOrangeSquare2TitleBackdrop.frame.midX, y: darkOrangeSquare2TitleBackdrop.frame.maxY - darkOrangeSquare2TitleLabel.frame.size.height)
        darkOrangeSquare2TitleLabel.zPosition = 4
        addChild(darkOrangeSquare2TitleLabel)
        
        darkOrangeSquare2MenuItem1 = SKSpriteNode(imageNamed: "Ship3")
        darkOrangeSquare2MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkOrangeSquare2Menu.position.y)
        darkOrangeSquare2MenuItem1.zPosition = 4
        darkOrangeSquare2MenuItem1.setScale(0.26)
        darkOrangeSquare2MenuItem1.name = "darkOrangeSquare2MenuItem1"
        addChild(darkOrangeSquare2MenuItem1)
        
        darkOrangeSquare2Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare2Item1Title.text = "Black Pearl"
        darkOrangeSquare2Item1Title.fontSize = 9
        darkOrangeSquare2Item1Title.fontColor = forbiddenFruit
        darkOrangeSquare2Item1Title.position = CGPoint(x: darkOrangeSquare2MenuItem1.frame.midX, y: darkOrangeSquare2MenuItem1.frame.maxY + darkOrangeSquare2Item1Title.frame.size.height)
        darkOrangeSquare2Item1Title.zPosition = 4
        addChild(darkOrangeSquare2Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkOrangeSquare2MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare2MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkOrangeSquare2MenuItem1Label1.fontSize = 7.5
        darkOrangeSquare2MenuItem1Label1.fontColor = forbiddenFruit
        darkOrangeSquare2MenuItem1Label1.position = CGPoint(x: darkOrangeSquare2MenuItem1.frame.midX, y: darkOrangeSquare2MenuItem1.frame.midY - darkOrangeSquare2MenuItem1.frame.size.height)
        darkOrangeSquare2MenuItem1Label1.zPosition = 4
        addChild(darkOrangeSquare2MenuItem1Label1)
        
        darkOrangeSquare2MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare2MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkOrangeSquare2MenuItem1Label2.fontSize = 7.5
        darkOrangeSquare2MenuItem1Label2.fontColor = forbiddenFruit
        darkOrangeSquare2MenuItem1Label2.position = CGPoint(x: darkOrangeSquare2MenuItem1.frame.midX, y: darkOrangeSquare2MenuItem1.frame.midY - darkOrangeSquare2MenuItem1.frame.size.height - darkOrangeSquare2MenuItem1Label2.frame.size.height)
        darkOrangeSquare2MenuItem1Label2.zPosition = 4
        addChild(darkOrangeSquare2MenuItem1Label2)
        
        darkOrangeSquare2Item1Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare2MenuItem1.frame.midX, y: darkOrangeSquare2MenuItem1.frame.midY - darkOrangeSquare2MenuItem1.frame.size.height * 2))
        addChild(darkOrangeSquare2Item1Label1)
        
        darkOrangeSquare2MenuItem2 = SKSpriteNode(imageNamed: "Ship4")
        darkOrangeSquare2MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: darkOrangeSquare2Menu.position.y)
        darkOrangeSquare2MenuItem2.zPosition = 4
        darkOrangeSquare2MenuItem2.setScale(0.26)
        darkOrangeSquare2MenuItem2.name = "darkOrangeSquare2MenuItem2"
        addChild(darkOrangeSquare2MenuItem2)
        
        darkOrangeSquare2Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare2Item2Title.text = "Flying Dutchman"
        darkOrangeSquare2Item2Title.fontSize = 9
        darkOrangeSquare2Item2Title.fontColor = forbiddenFruit
        darkOrangeSquare2Item2Title.position = CGPoint(x: darkOrangeSquare2MenuItem2.frame.midX, y: darkOrangeSquare2MenuItem2.frame.maxY + darkOrangeSquare2Item2Title.frame.size.height)
        darkOrangeSquare2Item2Title.zPosition = 4
        addChild(darkOrangeSquare2Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        darkOrangeSquare2MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare2MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        darkOrangeSquare2MenuItem2Label1.fontSize = 7.5
        darkOrangeSquare2MenuItem2Label1.fontColor = forbiddenFruit
        darkOrangeSquare2MenuItem2Label1.position = CGPoint(x: darkOrangeSquare2MenuItem2.frame.midX, y: darkOrangeSquare2MenuItem2.frame.midY - darkOrangeSquare2MenuItem2.frame.size.height)
        darkOrangeSquare2MenuItem2Label1.zPosition = 4
        addChild(darkOrangeSquare2MenuItem2Label1)
        
        darkOrangeSquare2MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare2MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        darkOrangeSquare2MenuItem2Label2.fontSize = 7.5
        darkOrangeSquare2MenuItem2Label2.fontColor = forbiddenFruit
        darkOrangeSquare2MenuItem2Label2.position = CGPoint(x: darkOrangeSquare2MenuItem2.frame.midX, y: darkOrangeSquare2MenuItem2.frame.midY - darkOrangeSquare2MenuItem2.frame.size.height - darkOrangeSquare2MenuItem2Label2.frame.size.height)
        darkOrangeSquare2MenuItem2Label2.zPosition = 4
        addChild(darkOrangeSquare2MenuItem2Label2)
        
        darkOrangeSquare2Item2Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare2MenuItem2.frame.midX, y: darkOrangeSquare2MenuItem2.frame.midY - darkOrangeSquare2MenuItem2.frame.size.height * 2))
        addChild(darkOrangeSquare2Item2Label1)
    }
    
    func moveDarkOrangeSquare2Menu(view: SKView) {
        // ITEM BACKDROP
        var darkOrangeSquare2MenuAction: SKAction
        
        // TITLE
        var darkOrangeSquare2TitleBackdropAction: SKAction
        var darkOrangeSquare2TitleLabelAction: SKAction
        
        // ITEM 1
        var darkOrangeSquare2MenuItem1Action: SKAction
        
        var darkOrangeSquare2Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkOrangeSquare2MenuItem1Label1Action: SKAction
        var darkOrangeSquare2MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var darkOrangeSquare2MenuItem2Action: SKAction
        
        var darkOrangeSquare2Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var darkOrangeSquare2MenuItem2Label1Action: SKAction
        var darkOrangeSquare2MenuItem2Label2Action: SKAction
            
        darkOrangeSquare2MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkOrangeSquare2Menu.run(darkOrangeSquare2MenuAction)
        
        darkOrangeSquare2TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkOrangeSquare2TitleBackdrop.run(darkOrangeSquare2TitleBackdropAction)
        
        darkOrangeSquare2TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkOrangeSquare2TitleLabel.run(darkOrangeSquare2TitleLabelAction)
        
        darkOrangeSquare2MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare2MenuItem1.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare2MenuItem1.run(darkOrangeSquare2MenuItem1Action)
        
        darkOrangeSquare2Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare2MenuItem1.frame.size.height), duration: 0.25)
        darkOrangeSquare2Item1Title.run(darkOrangeSquare2Item1TitleAction)
        
        darkOrangeSquare2MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare2MenuItem1.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare2MenuItem1Label1.run(darkOrangeSquare2MenuItem1Label1Action)
        
        darkOrangeSquare2MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare2MenuItem1.frame.size.height / 2 - darkOrangeSquare2MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare2MenuItem1Label2.run(darkOrangeSquare2MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare2Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare2MenuItem1.frame.size.height / 2 - darkOrangeSquare2MenuItem1Label2.frame.size.height * 3))
        
        darkOrangeSquare2MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare2MenuItem2.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare2MenuItem2.run(darkOrangeSquare2MenuItem2Action)
        
        darkOrangeSquare2Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare2MenuItem2.frame.size.height), duration: 0.25)
        darkOrangeSquare2Item2Title.run(darkOrangeSquare2Item2TitleAction)
        
        darkOrangeSquare2MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare2MenuItem2.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare2MenuItem2Label1.run(darkOrangeSquare2MenuItem2Label1Action)
        
        darkOrangeSquare2MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare2MenuItem2.frame.size.height / 2 - darkOrangeSquare2MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare2MenuItem2Label2.run(darkOrangeSquare2MenuItem2Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare2Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare2MenuItem2.frame.size.height / 2 - darkOrangeSquare2MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeDarkOrangeSquare2Menu(view: SKView) {
        // MOVE ACTIONS
        var darkOrangeSquare2MenuAction: SKAction // BACKDROP
        var darkOrangeSquare2TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkOrangeSquare2TitleLabelAction: SKAction // TITLE
        var darkOrangeSquare2MenuItem1Action: SKAction // ITEM 1
        var darkOrangeSquare2Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkOrangeSquare2MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare2MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare2MenuItem2Action: SKAction // ITEM 2
        var darkOrangeSquare2Item2TitleAction: SKAction // ITEM 2 TITLE
        var darkOrangeSquare2MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare2MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var darkOrangeSquare2MenuRemove: SKAction // BACKDROP
        var darkOrangeSquare2TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkOrangeSquare2TitleLabelRemove: SKAction // TITLE
        var darkOrangeSquare2MenuItem1Remove: SKAction // ITEM 1
        var darkOrangeSquare2Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkOrangeSquare2MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare2MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare2MenuItem2Remove: SKAction // ITEM 2
        var darkOrangeSquare2Item2TitleRemove: SKAction // ITEM 2 TITLE
        var darkOrangeSquare2MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare2MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkOrangeSquare2MenuSequence: SKAction // BACKDROP
        var darkOrangeSquare2TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkOrangeSquare2TitleLabelSequence: SKAction // TITLE
        var darkOrangeSquare2MenuItem1Sequence: SKAction // ITEM 1
        var darkOrangeSquare2Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkOrangeSquare2MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare2MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare2MenuItem2Sequence: SKAction // ITEM 2
        var darkOrangeSquare2Item2TitleSequence: SKAction // ITEM 2 TITLE
        var darkOrangeSquare2MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare2MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        darkOrangeSquare2MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2MenuRemove = SKAction.removeFromParent()
        darkOrangeSquare2MenuSequence = SKAction.sequence([darkOrangeSquare2MenuAction, darkOrangeSquare2MenuRemove])
        darkOrangeSquare2Menu.run(darkOrangeSquare2MenuSequence)
        
        darkOrangeSquare2TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2TitleBackdropRemove = SKAction.removeFromParent()
        darkOrangeSquare2TitleBackdropSequence = SKAction.sequence([darkOrangeSquare2TitleBackdropAction, darkOrangeSquare2TitleBackdropRemove])
        darkOrangeSquare2TitleBackdrop.run(darkOrangeSquare2TitleBackdropSequence)
        
        darkOrangeSquare2TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2TitleLabelRemove = SKAction.removeFromParent()
        darkOrangeSquare2TitleLabelSequence = SKAction.sequence([darkOrangeSquare2TitleLabelAction, darkOrangeSquare2TitleLabelRemove])
        darkOrangeSquare2TitleLabel.run(darkOrangeSquare2TitleLabelSequence)
        
        darkOrangeSquare2MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2MenuItem1Remove = SKAction.removeFromParent()
        darkOrangeSquare2MenuItem1Sequence = SKAction.sequence([darkOrangeSquare2MenuItem1Action, darkOrangeSquare2MenuItem1Remove])
        darkOrangeSquare2MenuItem1.run(darkOrangeSquare2MenuItem1Sequence)
        
        darkOrangeSquare2Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2Item1TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare2Item1TitleSequence = SKAction.sequence([darkOrangeSquare2Item1TitleAction, darkOrangeSquare2Item1TitleRemove])
        darkOrangeSquare2Item1Title.run(darkOrangeSquare2Item1TitleSequence)
        
        darkOrangeSquare2MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2MenuItem1Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare2MenuItem1Label1Sequence = SKAction.sequence([darkOrangeSquare2MenuItem1Label1Action, darkOrangeSquare2MenuItem1Label1Remove])
        darkOrangeSquare2MenuItem1Label1.run(darkOrangeSquare2MenuItem1Label1Sequence)
        
        darkOrangeSquare2MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2MenuItem1Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare2MenuItem1Label2Sequence = SKAction.sequence([darkOrangeSquare2MenuItem1Label2Action, darkOrangeSquare2MenuItem1Label2Remove])
        darkOrangeSquare2MenuItem1Label2.run(darkOrangeSquare2MenuItem1Label2Sequence)
        
        darkOrangeSquare2MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2MenuItem2Remove = SKAction.removeFromParent()
        darkOrangeSquare2MenuItem2Sequence = SKAction.sequence([darkOrangeSquare2MenuItem2Action, darkOrangeSquare2MenuItem2Remove])
        darkOrangeSquare2MenuItem2.run(darkOrangeSquare2MenuItem2Sequence)
        
        darkOrangeSquare2Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2Item2TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare2Item2TitleSequence = SKAction.sequence([darkOrangeSquare2Item2TitleAction, darkOrangeSquare2Item2TitleRemove])
        darkOrangeSquare2Item2Title.run(darkOrangeSquare2Item2TitleSequence)
        
        darkOrangeSquare2MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2MenuItem2Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare2MenuItem2Label1Sequence = SKAction.sequence([darkOrangeSquare2MenuItem2Label1Action, darkOrangeSquare2MenuItem2Label1Remove])
        darkOrangeSquare2MenuItem2Label1.run(darkOrangeSquare2MenuItem2Label1Sequence)
        
        darkOrangeSquare2MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare2MenuItem2Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare2MenuItem2Label2Sequence = SKAction.sequence([darkOrangeSquare2MenuItem2Label2Action, darkOrangeSquare2MenuItem2Label2Remove])
        darkOrangeSquare2MenuItem2Label2.run(darkOrangeSquare2MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: darkOrangeSquare2Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: darkOrangeSquare2Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // dark Orange SQUARE 3 ------------------- MENU
    
    func createMenuForDarkOrangeSquare3(view: SKView) {
        darkOrangeSquare3Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkOrangeSquare3Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare3Menu.setScale(0.42)
        darkOrangeSquare3Menu.zPosition = 3
        darkOrangeSquare3Menu.name = "darkOrangeSquare3Menu"
        addChild(darkOrangeSquare3Menu)
        
        darkOrangeSquare3TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkOrangeSquare3TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare3TitleBackdrop.setScale(0.42)
        darkOrangeSquare3TitleBackdrop.zPosition = 3
        addChild(darkOrangeSquare3TitleBackdrop)
        
        darkOrangeSquare3TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare3TitleLabel.text = "Pirateships"
        darkOrangeSquare3TitleLabel.fontSize = 18
        darkOrangeSquare3TitleLabel.fontColor = forbiddenFruit
        darkOrangeSquare3TitleLabel.position = CGPoint(x: darkOrangeSquare3TitleBackdrop.frame.midX, y: darkOrangeSquare3TitleBackdrop.frame.maxY - darkOrangeSquare3TitleLabel.frame.size.height)
        darkOrangeSquare3TitleLabel.zPosition = 4
        addChild(darkOrangeSquare3TitleLabel)
        
        darkOrangeSquare3MenuItem1 = SKSpriteNode(imageNamed: "Ship3")
        darkOrangeSquare3MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkOrangeSquare3Menu.position.y)
        darkOrangeSquare3MenuItem1.zPosition = 4
        darkOrangeSquare3MenuItem1.setScale(0.26)
        darkOrangeSquare3MenuItem1.name = "darkOrangeSquare3MenuItem1"
        addChild(darkOrangeSquare3MenuItem1)
        
        darkOrangeSquare3Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare3Item1Title.text = "Black Pearl"
        darkOrangeSquare3Item1Title.fontSize = 9
        darkOrangeSquare3Item1Title.fontColor = forbiddenFruit
        darkOrangeSquare3Item1Title.position = CGPoint(x: darkOrangeSquare3MenuItem1.frame.midX, y: darkOrangeSquare3MenuItem1.frame.maxY + darkOrangeSquare3Item1Title.frame.size.height)
        darkOrangeSquare3Item1Title.zPosition = 4
        addChild(darkOrangeSquare3Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkOrangeSquare3MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare3MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkOrangeSquare3MenuItem1Label1.fontSize = 7.5
        darkOrangeSquare3MenuItem1Label1.fontColor = forbiddenFruit
        darkOrangeSquare3MenuItem1Label1.position = CGPoint(x: darkOrangeSquare3MenuItem1.frame.midX, y: darkOrangeSquare3MenuItem1.frame.midY - darkOrangeSquare3MenuItem1.frame.size.height)
        darkOrangeSquare3MenuItem1Label1.zPosition = 4
        addChild(darkOrangeSquare3MenuItem1Label1)
        
        darkOrangeSquare3MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare3MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkOrangeSquare3MenuItem1Label2.fontSize = 7.5
        darkOrangeSquare3MenuItem1Label2.fontColor = forbiddenFruit
        darkOrangeSquare3MenuItem1Label2.position = CGPoint(x: darkOrangeSquare3MenuItem1.frame.midX, y: darkOrangeSquare3MenuItem1.frame.midY - darkOrangeSquare3MenuItem1.frame.size.height - darkOrangeSquare3MenuItem1Label2.frame.size.height)
        darkOrangeSquare3MenuItem1Label2.zPosition = 4
        addChild(darkOrangeSquare3MenuItem1Label2)
        
        darkOrangeSquare3Item1Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare3MenuItem1.frame.midX, y: darkOrangeSquare3MenuItem1.frame.midY - darkOrangeSquare3MenuItem1.frame.size.height * 2))
        addChild(darkOrangeSquare3Item1Label1)
        
        darkOrangeSquare3MenuItem2 = SKSpriteNode(imageNamed: "Ship4")
        darkOrangeSquare3MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: darkOrangeSquare3Menu.position.y)
        darkOrangeSquare3MenuItem2.zPosition = 4
        darkOrangeSquare3MenuItem2.setScale(0.26)
        darkOrangeSquare3MenuItem2.name = "darkOrangeSquare3MenuItem2"
        addChild(darkOrangeSquare3MenuItem2)
        
        darkOrangeSquare3Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare3Item2Title.text = "Flying Dutchman"
        darkOrangeSquare3Item2Title.fontSize = 9
        darkOrangeSquare3Item2Title.fontColor = forbiddenFruit
        darkOrangeSquare3Item2Title.position = CGPoint(x: darkOrangeSquare3MenuItem2.frame.midX, y: darkOrangeSquare3MenuItem2.frame.maxY + darkOrangeSquare3Item2Title.frame.size.height)
        darkOrangeSquare3Item2Title.zPosition = 4
        addChild(darkOrangeSquare3Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        darkOrangeSquare3MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare3MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        darkOrangeSquare3MenuItem2Label1.fontSize = 7.5
        darkOrangeSquare3MenuItem2Label1.fontColor = forbiddenFruit
        darkOrangeSquare3MenuItem2Label1.position = CGPoint(x: darkOrangeSquare3MenuItem2.frame.midX, y: darkOrangeSquare3MenuItem2.frame.midY - darkOrangeSquare3MenuItem2.frame.size.height)
        darkOrangeSquare3MenuItem2Label1.zPosition = 4
        addChild(darkOrangeSquare3MenuItem2Label1)
        
        darkOrangeSquare3MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare3MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        darkOrangeSquare3MenuItem2Label2.fontSize = 7.5
        darkOrangeSquare3MenuItem2Label2.fontColor = forbiddenFruit
        darkOrangeSquare3MenuItem2Label2.position = CGPoint(x: darkOrangeSquare3MenuItem2.frame.midX, y: darkOrangeSquare3MenuItem2.frame.midY - darkOrangeSquare3MenuItem2.frame.size.height - darkOrangeSquare3MenuItem2Label2.frame.size.height)
        darkOrangeSquare3MenuItem2Label2.zPosition = 4
        addChild(darkOrangeSquare3MenuItem2Label2)
        
        darkOrangeSquare3Item2Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare3MenuItem2.frame.midX, y: darkOrangeSquare3MenuItem2.frame.midY - darkOrangeSquare3MenuItem2.frame.size.height * 2))
        addChild(darkOrangeSquare3Item2Label1)
    }
    
    func moveDarkOrangeSquare3Menu(view: SKView) {
        // ITEM BACKDROP
        var darkOrangeSquare3MenuAction: SKAction
        
        // TITLE
        var darkOrangeSquare3TitleBackdropAction: SKAction
        var darkOrangeSquare3TitleLabelAction: SKAction
        
        // ITEM 1
        var darkOrangeSquare3MenuItem1Action: SKAction
        
        var darkOrangeSquare3Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkOrangeSquare3MenuItem1Label1Action: SKAction
        var darkOrangeSquare3MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var darkOrangeSquare3MenuItem2Action: SKAction
        
        var darkOrangeSquare3Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var darkOrangeSquare3MenuItem2Label1Action: SKAction
        var darkOrangeSquare3MenuItem2Label2Action: SKAction
            
        darkOrangeSquare3MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkOrangeSquare3Menu.run(darkOrangeSquare3MenuAction)
        
        darkOrangeSquare3TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkOrangeSquare3TitleBackdrop.run(darkOrangeSquare3TitleBackdropAction)
        
        darkOrangeSquare3TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkOrangeSquare3TitleLabel.run(darkOrangeSquare3TitleLabelAction)
        
        darkOrangeSquare3MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare3MenuItem1.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare3MenuItem1.run(darkOrangeSquare3MenuItem1Action)
        
        darkOrangeSquare3Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare3MenuItem1.frame.size.height), duration: 0.25)
        darkOrangeSquare3Item1Title.run(darkOrangeSquare3Item1TitleAction)
        
        darkOrangeSquare3MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare3MenuItem1.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare3MenuItem1Label1.run(darkOrangeSquare3MenuItem1Label1Action)
        
        darkOrangeSquare3MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare3MenuItem1.frame.size.height / 2 - darkOrangeSquare3MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare3MenuItem1Label2.run(darkOrangeSquare3MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare3Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare3MenuItem1.frame.size.height / 2 - darkOrangeSquare3MenuItem1Label2.frame.size.height * 3))
        
        darkOrangeSquare3MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare3MenuItem2.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare3MenuItem2.run(darkOrangeSquare3MenuItem2Action)
        
        darkOrangeSquare3Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare3MenuItem2.frame.size.height), duration: 0.25)
        darkOrangeSquare3Item2Title.run(darkOrangeSquare3Item2TitleAction)
        
        darkOrangeSquare3MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare3MenuItem2.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare3MenuItem2Label1.run(darkOrangeSquare3MenuItem2Label1Action)
        
        darkOrangeSquare3MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare3MenuItem2.frame.size.height / 2 - darkOrangeSquare3MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare3MenuItem2Label2.run(darkOrangeSquare3MenuItem2Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare3Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare3MenuItem2.frame.size.height / 2 - darkOrangeSquare3MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeDarkOrangeSquare3Menu(view: SKView) {
        // MOVE ACTIONS
        var darkOrangeSquare3MenuAction: SKAction // BACKDROP
        var darkOrangeSquare3TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkOrangeSquare3TitleLabelAction: SKAction // TITLE
        var darkOrangeSquare3MenuItem1Action: SKAction // ITEM 1
        var darkOrangeSquare3Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkOrangeSquare3MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare3MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare3MenuItem2Action: SKAction // ITEM 2
        var darkOrangeSquare3Item2TitleAction: SKAction // ITEM 2 TITLE
        var darkOrangeSquare3MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare3MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var darkOrangeSquare3MenuRemove: SKAction // BACKDROP
        var darkOrangeSquare3TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkOrangeSquare3TitleLabelRemove: SKAction // TITLE
        var darkOrangeSquare3MenuItem1Remove: SKAction // ITEM 1
        var darkOrangeSquare3Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkOrangeSquare3MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare3MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare3MenuItem2Remove: SKAction // ITEM 2
        var darkOrangeSquare3Item2TitleRemove: SKAction // ITEM 2 TITLE
        var darkOrangeSquare3MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare3MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkOrangeSquare3MenuSequence: SKAction // BACKDROP
        var darkOrangeSquare3TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkOrangeSquare3TitleLabelSequence: SKAction // TITLE
        var darkOrangeSquare3MenuItem1Sequence: SKAction // ITEM 1
        var darkOrangeSquare3Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkOrangeSquare3MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare3MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare3MenuItem2Sequence: SKAction // ITEM 2
        var darkOrangeSquare3Item2TitleSequence: SKAction // ITEM 2 TITLE
        var darkOrangeSquare3MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare3MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        darkOrangeSquare3MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3MenuRemove = SKAction.removeFromParent()
        darkOrangeSquare3MenuSequence = SKAction.sequence([darkOrangeSquare3MenuAction, darkOrangeSquare3MenuRemove])
        darkOrangeSquare3Menu.run(darkOrangeSquare3MenuSequence)
        
        darkOrangeSquare3TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3TitleBackdropRemove = SKAction.removeFromParent()
        darkOrangeSquare3TitleBackdropSequence = SKAction.sequence([darkOrangeSquare3TitleBackdropAction, darkOrangeSquare3TitleBackdropRemove])
        darkOrangeSquare3TitleBackdrop.run(darkOrangeSquare3TitleBackdropSequence)
        
        darkOrangeSquare3TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3TitleLabelRemove = SKAction.removeFromParent()
        darkOrangeSquare3TitleLabelSequence = SKAction.sequence([darkOrangeSquare3TitleLabelAction, darkOrangeSquare3TitleLabelRemove])
        darkOrangeSquare3TitleLabel.run(darkOrangeSquare3TitleLabelSequence)
        
        darkOrangeSquare3MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3MenuItem1Remove = SKAction.removeFromParent()
        darkOrangeSquare3MenuItem1Sequence = SKAction.sequence([darkOrangeSquare3MenuItem1Action, darkOrangeSquare3MenuItem1Remove])
        darkOrangeSquare3MenuItem1.run(darkOrangeSquare3MenuItem1Sequence)
        
        darkOrangeSquare3Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3Item1TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare3Item1TitleSequence = SKAction.sequence([darkOrangeSquare3Item1TitleAction, darkOrangeSquare3Item1TitleRemove])
        darkOrangeSquare3Item1Title.run(darkOrangeSquare3Item1TitleSequence)
        
        darkOrangeSquare3MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3MenuItem1Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare3MenuItem1Label1Sequence = SKAction.sequence([darkOrangeSquare3MenuItem1Label1Action, darkOrangeSquare3MenuItem1Label1Remove])
        darkOrangeSquare3MenuItem1Label1.run(darkOrangeSquare3MenuItem1Label1Sequence)
        
        darkOrangeSquare3MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3MenuItem1Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare3MenuItem1Label2Sequence = SKAction.sequence([darkOrangeSquare3MenuItem1Label2Action, darkOrangeSquare3MenuItem1Label2Remove])
        darkOrangeSquare3MenuItem1Label2.run(darkOrangeSquare3MenuItem1Label2Sequence)
        
        darkOrangeSquare3MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3MenuItem2Remove = SKAction.removeFromParent()
        darkOrangeSquare3MenuItem2Sequence = SKAction.sequence([darkOrangeSquare3MenuItem2Action, darkOrangeSquare3MenuItem2Remove])
        darkOrangeSquare3MenuItem2.run(darkOrangeSquare3MenuItem2Sequence)
        
        darkOrangeSquare3Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3Item2TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare3Item2TitleSequence = SKAction.sequence([darkOrangeSquare3Item2TitleAction, darkOrangeSquare3Item2TitleRemove])
        darkOrangeSquare3Item2Title.run(darkOrangeSquare3Item2TitleSequence)
        
        darkOrangeSquare3MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3MenuItem2Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare3MenuItem2Label1Sequence = SKAction.sequence([darkOrangeSquare3MenuItem2Label1Action, darkOrangeSquare3MenuItem2Label1Remove])
        darkOrangeSquare3MenuItem2Label1.run(darkOrangeSquare3MenuItem2Label1Sequence)
        
        darkOrangeSquare3MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare3MenuItem2Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare3MenuItem2Label2Sequence = SKAction.sequence([darkOrangeSquare3MenuItem2Label2Action, darkOrangeSquare3MenuItem2Label2Remove])
        darkOrangeSquare3MenuItem2Label2.run(darkOrangeSquare3MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: darkOrangeSquare3Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: darkOrangeSquare3Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // dark Orange SQUARE 4 ------------------- MENU
    
    func createMenuForDarkOrangeSquare4(view: SKView) {
        darkOrangeSquare4Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkOrangeSquare4Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare4Menu.setScale(0.42)
        darkOrangeSquare4Menu.zPosition = 3
        darkOrangeSquare4Menu.name = "darkOrangeSquare4Menu"
        addChild(darkOrangeSquare4Menu)
        
        darkOrangeSquare4TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkOrangeSquare4TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare4TitleBackdrop.setScale(0.42)
        darkOrangeSquare4TitleBackdrop.zPosition = 3
        addChild(darkOrangeSquare4TitleBackdrop)
        
        darkOrangeSquare4TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare4TitleLabel.text = "Pirateships"
        darkOrangeSquare4TitleLabel.fontSize = 18
        darkOrangeSquare4TitleLabel.fontColor = forbiddenFruit
        darkOrangeSquare4TitleLabel.position = CGPoint(x: darkOrangeSquare4TitleBackdrop.frame.midX, y: darkOrangeSquare4TitleBackdrop.frame.maxY - darkOrangeSquare4TitleLabel.frame.size.height)
        darkOrangeSquare4TitleLabel.zPosition = 4
        addChild(darkOrangeSquare4TitleLabel)
        
        darkOrangeSquare4MenuItem1 = SKSpriteNode(imageNamed: "Ship3")
        darkOrangeSquare4MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkOrangeSquare4Menu.position.y)
        darkOrangeSquare4MenuItem1.zPosition = 4
        darkOrangeSquare4MenuItem1.setScale(0.26)
        darkOrangeSquare4MenuItem1.name = "darkOrangeSquare4MenuItem1"
        addChild(darkOrangeSquare4MenuItem1)
        
        darkOrangeSquare4Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare4Item1Title.text = "Black Pearl"
        darkOrangeSquare4Item1Title.fontSize = 9
        darkOrangeSquare4Item1Title.fontColor = forbiddenFruit
        darkOrangeSquare4Item1Title.position = CGPoint(x: darkOrangeSquare4MenuItem1.frame.midX, y: darkOrangeSquare4MenuItem1.frame.maxY + darkOrangeSquare4Item1Title.frame.size.height)
        darkOrangeSquare4Item1Title.zPosition = 4
        addChild(darkOrangeSquare4Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkOrangeSquare4MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare4MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkOrangeSquare4MenuItem1Label1.fontSize = 7.5
        darkOrangeSquare4MenuItem1Label1.fontColor = forbiddenFruit
        darkOrangeSquare4MenuItem1Label1.position = CGPoint(x: darkOrangeSquare4MenuItem1.frame.midX, y: darkOrangeSquare4MenuItem1.frame.midY - darkOrangeSquare4MenuItem1.frame.size.height)
        darkOrangeSquare4MenuItem1Label1.zPosition = 4
        addChild(darkOrangeSquare4MenuItem1Label1)
        
        darkOrangeSquare4MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare4MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkOrangeSquare4MenuItem1Label2.fontSize = 7.5
        darkOrangeSquare4MenuItem1Label2.fontColor = forbiddenFruit
        darkOrangeSquare4MenuItem1Label2.position = CGPoint(x: darkOrangeSquare4MenuItem1.frame.midX, y: darkOrangeSquare4MenuItem1.frame.midY - darkOrangeSquare4MenuItem1.frame.size.height - darkOrangeSquare4MenuItem1Label2.frame.size.height)
        darkOrangeSquare4MenuItem1Label2.zPosition = 4
        addChild(darkOrangeSquare4MenuItem1Label2)
        
        darkOrangeSquare4Item1Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare4MenuItem1.frame.midX, y: darkOrangeSquare4MenuItem1.frame.midY - darkOrangeSquare4MenuItem1.frame.size.height * 2))
        addChild(darkOrangeSquare4Item1Label1)
        
        darkOrangeSquare4MenuItem2 = SKSpriteNode(imageNamed: "Ship4")
        darkOrangeSquare4MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: darkOrangeSquare4Menu.position.y)
        darkOrangeSquare4MenuItem2.zPosition = 4
        darkOrangeSquare4MenuItem2.setScale(0.26)
        darkOrangeSquare4MenuItem2.name = "darkOrangeSquare4MenuItem2"
        addChild(darkOrangeSquare4MenuItem2)
        
        darkOrangeSquare4Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare4Item2Title.text = "Flying Dutchman"
        darkOrangeSquare4Item2Title.fontSize = 9
        darkOrangeSquare4Item2Title.fontColor = forbiddenFruit
        darkOrangeSquare4Item2Title.position = CGPoint(x: darkOrangeSquare4MenuItem2.frame.midX, y: darkOrangeSquare4MenuItem2.frame.maxY + darkOrangeSquare4Item2Title.frame.size.height)
        darkOrangeSquare4Item2Title.zPosition = 4
        addChild(darkOrangeSquare4Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        darkOrangeSquare4MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare4MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        darkOrangeSquare4MenuItem2Label1.fontSize = 7.5
        darkOrangeSquare4MenuItem2Label1.fontColor = forbiddenFruit
        darkOrangeSquare4MenuItem2Label1.position = CGPoint(x: darkOrangeSquare4MenuItem2.frame.midX, y: darkOrangeSquare4MenuItem2.frame.midY - darkOrangeSquare4MenuItem2.frame.size.height)
        darkOrangeSquare4MenuItem2Label1.zPosition = 4
        addChild(darkOrangeSquare4MenuItem2Label1)
        
        darkOrangeSquare4MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare4MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        darkOrangeSquare4MenuItem2Label2.fontSize = 7.5
        darkOrangeSquare4MenuItem2Label2.fontColor = forbiddenFruit
        darkOrangeSquare4MenuItem2Label2.position = CGPoint(x: darkOrangeSquare4MenuItem2.frame.midX, y: darkOrangeSquare4MenuItem2.frame.midY - darkOrangeSquare4MenuItem2.frame.size.height - darkOrangeSquare4MenuItem2Label2.frame.size.height)
        darkOrangeSquare4MenuItem2Label2.zPosition = 4
        addChild(darkOrangeSquare4MenuItem2Label2)
        
        darkOrangeSquare4Item2Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare4MenuItem2.frame.midX, y: darkOrangeSquare4MenuItem2.frame.midY - darkOrangeSquare4MenuItem2.frame.size.height * 2))
        addChild(darkOrangeSquare4Item2Label1)
    }
    
    func moveDarkOrangeSquare4Menu(view: SKView) {
        // ITEM BACKDROP
        var darkOrangeSquare4MenuAction: SKAction
        
        // TITLE
        var darkOrangeSquare4TitleBackdropAction: SKAction
        var darkOrangeSquare4TitleLabelAction: SKAction
        
        // ITEM 1
        var darkOrangeSquare4MenuItem1Action: SKAction
        
        var darkOrangeSquare4Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkOrangeSquare4MenuItem1Label1Action: SKAction
        var darkOrangeSquare4MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var darkOrangeSquare4MenuItem2Action: SKAction
        
        var darkOrangeSquare4Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var darkOrangeSquare4MenuItem2Label1Action: SKAction
        var darkOrangeSquare4MenuItem2Label2Action: SKAction
            
        darkOrangeSquare4MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkOrangeSquare4Menu.run(darkOrangeSquare4MenuAction)
        
        darkOrangeSquare4TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkOrangeSquare4TitleBackdrop.run(darkOrangeSquare4TitleBackdropAction)
        
        darkOrangeSquare4TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkOrangeSquare4TitleLabel.run(darkOrangeSquare4TitleLabelAction)
        
        darkOrangeSquare4MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare4MenuItem1.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare4MenuItem1.run(darkOrangeSquare4MenuItem1Action)
        
        darkOrangeSquare4Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare4MenuItem1.frame.size.height), duration: 0.25)
        darkOrangeSquare4Item1Title.run(darkOrangeSquare4Item1TitleAction)
        
        darkOrangeSquare4MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare4MenuItem1.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare4MenuItem1Label1.run(darkOrangeSquare4MenuItem1Label1Action)
        
        darkOrangeSquare4MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare4MenuItem1.frame.size.height / 2 - darkOrangeSquare4MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare4MenuItem1Label2.run(darkOrangeSquare4MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare4Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare4MenuItem1.frame.size.height / 2 - darkOrangeSquare4MenuItem1Label2.frame.size.height * 3))
        
        darkOrangeSquare4MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare4MenuItem2.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare4MenuItem2.run(darkOrangeSquare4MenuItem2Action)
        
        darkOrangeSquare4Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare4MenuItem2.frame.size.height), duration: 0.25)
        darkOrangeSquare4Item2Title.run(darkOrangeSquare4Item2TitleAction)
        
        darkOrangeSquare4MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare4MenuItem2.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare4MenuItem2Label1.run(darkOrangeSquare4MenuItem2Label1Action)
        
        darkOrangeSquare4MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare4MenuItem2.frame.size.height / 2 - darkOrangeSquare4MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare4MenuItem2Label2.run(darkOrangeSquare4MenuItem2Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare4Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare4MenuItem2.frame.size.height / 2 - darkOrangeSquare4MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeDarkOrangeSquare4Menu(view: SKView) {
        // MOVE ACTIONS
        var darkOrangeSquare4MenuAction: SKAction // BACKDROP
        var darkOrangeSquare4TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkOrangeSquare4TitleLabelAction: SKAction // TITLE
        var darkOrangeSquare4MenuItem1Action: SKAction // ITEM 1
        var darkOrangeSquare4Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkOrangeSquare4MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare4MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare4MenuItem2Action: SKAction // ITEM 2
        var darkOrangeSquare4Item2TitleAction: SKAction // ITEM 2 TITLE
        var darkOrangeSquare4MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare4MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var darkOrangeSquare4MenuRemove: SKAction // BACKDROP
        var darkOrangeSquare4TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkOrangeSquare4TitleLabelRemove: SKAction // TITLE
        var darkOrangeSquare4MenuItem1Remove: SKAction // ITEM 1
        var darkOrangeSquare4Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkOrangeSquare4MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare4MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare4MenuItem2Remove: SKAction // ITEM 2
        var darkOrangeSquare4Item2TitleRemove: SKAction // ITEM 2 TITLE
        var darkOrangeSquare4MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare4MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkOrangeSquare4MenuSequence: SKAction // BACKDROP
        var darkOrangeSquare4TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkOrangeSquare4TitleLabelSequence: SKAction // TITLE
        var darkOrangeSquare4MenuItem1Sequence: SKAction // ITEM 1
        var darkOrangeSquare4Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkOrangeSquare4MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare4MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare4MenuItem2Sequence: SKAction // ITEM 2
        var darkOrangeSquare4Item2TitleSequence: SKAction // ITEM 2 TITLE
        var darkOrangeSquare4MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare4MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        darkOrangeSquare4MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4MenuRemove = SKAction.removeFromParent()
        darkOrangeSquare4MenuSequence = SKAction.sequence([darkOrangeSquare4MenuAction, darkOrangeSquare4MenuRemove])
        darkOrangeSquare4Menu.run(darkOrangeSquare4MenuSequence)
        
        darkOrangeSquare4TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4TitleBackdropRemove = SKAction.removeFromParent()
        darkOrangeSquare4TitleBackdropSequence = SKAction.sequence([darkOrangeSquare4TitleBackdropAction, darkOrangeSquare4TitleBackdropRemove])
        darkOrangeSquare4TitleBackdrop.run(darkOrangeSquare4TitleBackdropSequence)
        
        darkOrangeSquare4TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4TitleLabelRemove = SKAction.removeFromParent()
        darkOrangeSquare4TitleLabelSequence = SKAction.sequence([darkOrangeSquare4TitleLabelAction, darkOrangeSquare4TitleLabelRemove])
        darkOrangeSquare4TitleLabel.run(darkOrangeSquare4TitleLabelSequence)
        
        darkOrangeSquare4MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4MenuItem1Remove = SKAction.removeFromParent()
        darkOrangeSquare4MenuItem1Sequence = SKAction.sequence([darkOrangeSquare4MenuItem1Action, darkOrangeSquare4MenuItem1Remove])
        darkOrangeSquare4MenuItem1.run(darkOrangeSquare4MenuItem1Sequence)
        
        darkOrangeSquare4Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4Item1TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare4Item1TitleSequence = SKAction.sequence([darkOrangeSquare4Item1TitleAction, darkOrangeSquare4Item1TitleRemove])
        darkOrangeSquare4Item1Title.run(darkOrangeSquare4Item1TitleSequence)
        
        darkOrangeSquare4MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4MenuItem1Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare4MenuItem1Label1Sequence = SKAction.sequence([darkOrangeSquare4MenuItem1Label1Action, darkOrangeSquare4MenuItem1Label1Remove])
        darkOrangeSquare4MenuItem1Label1.run(darkOrangeSquare4MenuItem1Label1Sequence)
        
        darkOrangeSquare4MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4MenuItem1Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare4MenuItem1Label2Sequence = SKAction.sequence([darkOrangeSquare4MenuItem1Label2Action, darkOrangeSquare4MenuItem1Label2Remove])
        darkOrangeSquare4MenuItem1Label2.run(darkOrangeSquare4MenuItem1Label2Sequence)
        
        darkOrangeSquare4MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4MenuItem2Remove = SKAction.removeFromParent()
        darkOrangeSquare4MenuItem2Sequence = SKAction.sequence([darkOrangeSquare4MenuItem2Action, darkOrangeSquare4MenuItem2Remove])
        darkOrangeSquare4MenuItem2.run(darkOrangeSquare4MenuItem2Sequence)
        
        darkOrangeSquare4Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4Item2TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare4Item2TitleSequence = SKAction.sequence([darkOrangeSquare4Item2TitleAction, darkOrangeSquare4Item2TitleRemove])
        darkOrangeSquare4Item2Title.run(darkOrangeSquare4Item2TitleSequence)
        
        darkOrangeSquare4MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4MenuItem2Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare4MenuItem2Label1Sequence = SKAction.sequence([darkOrangeSquare4MenuItem2Label1Action, darkOrangeSquare4MenuItem2Label1Remove])
        darkOrangeSquare4MenuItem2Label1.run(darkOrangeSquare4MenuItem2Label1Sequence)
        
        darkOrangeSquare4MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare4MenuItem2Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare4MenuItem2Label2Sequence = SKAction.sequence([darkOrangeSquare4MenuItem2Label2Action, darkOrangeSquare4MenuItem2Label2Remove])
        darkOrangeSquare4MenuItem2Label2.run(darkOrangeSquare4MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: darkOrangeSquare4Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: darkOrangeSquare4Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // dark Orange SQUARE 5 ------------------- MENU
    
    func createMenuForDarkOrangeSquare5(view: SKView) {
        darkOrangeSquare5Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkOrangeSquare5Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare5Menu.setScale(0.42)
        darkOrangeSquare5Menu.zPosition = 3
        darkOrangeSquare5Menu.name = "darkOrangeSquare5Menu"
        addChild(darkOrangeSquare5Menu)
        
        darkOrangeSquare5TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkOrangeSquare5TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare5TitleBackdrop.setScale(0.42)
        darkOrangeSquare5TitleBackdrop.zPosition = 3
        addChild(darkOrangeSquare5TitleBackdrop)
        
        darkOrangeSquare5TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare5TitleLabel.text = "Pirateships"
        darkOrangeSquare5TitleLabel.fontSize = 18
        darkOrangeSquare5TitleLabel.fontColor = forbiddenFruit
        darkOrangeSquare5TitleLabel.position = CGPoint(x: darkOrangeSquare5TitleBackdrop.frame.midX, y: darkOrangeSquare5TitleBackdrop.frame.maxY - darkOrangeSquare5TitleLabel.frame.size.height)
        darkOrangeSquare5TitleLabel.zPosition = 4
        addChild(darkOrangeSquare5TitleLabel)
        
        darkOrangeSquare5MenuItem1 = SKSpriteNode(imageNamed: "Ship3")
        darkOrangeSquare5MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkOrangeSquare5Menu.position.y)
        darkOrangeSquare5MenuItem1.zPosition = 4
        darkOrangeSquare5MenuItem1.setScale(0.26)
        darkOrangeSquare5MenuItem1.name = "darkOrangeSquare5MenuItem1"
        addChild(darkOrangeSquare5MenuItem1)
        
        darkOrangeSquare5Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare5Item1Title.text = "Black Pearl"
        darkOrangeSquare5Item1Title.fontSize = 9
        darkOrangeSquare5Item1Title.fontColor = forbiddenFruit
        darkOrangeSquare5Item1Title.position = CGPoint(x: darkOrangeSquare5MenuItem1.frame.midX, y: darkOrangeSquare5MenuItem1.frame.maxY + darkOrangeSquare5Item1Title.frame.size.height)
        darkOrangeSquare5Item1Title.zPosition = 4
        addChild(darkOrangeSquare5Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkOrangeSquare5MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare5MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkOrangeSquare5MenuItem1Label1.fontSize = 7.5
        darkOrangeSquare5MenuItem1Label1.fontColor = forbiddenFruit
        darkOrangeSquare5MenuItem1Label1.position = CGPoint(x: darkOrangeSquare5MenuItem1.frame.midX, y: darkOrangeSquare5MenuItem1.frame.midY - darkOrangeSquare5MenuItem1.frame.size.height)
        darkOrangeSquare5MenuItem1Label1.zPosition = 4
        addChild(darkOrangeSquare5MenuItem1Label1)
        
        darkOrangeSquare5MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare5MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkOrangeSquare5MenuItem1Label2.fontSize = 7.5
        darkOrangeSquare5MenuItem1Label2.fontColor = forbiddenFruit
        darkOrangeSquare5MenuItem1Label2.position = CGPoint(x: darkOrangeSquare5MenuItem1.frame.midX, y: darkOrangeSquare5MenuItem1.frame.midY - darkOrangeSquare5MenuItem1.frame.size.height - darkOrangeSquare5MenuItem1Label2.frame.size.height)
        darkOrangeSquare5MenuItem1Label2.zPosition = 4
        addChild(darkOrangeSquare5MenuItem1Label2)
        
        darkOrangeSquare5Item1Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare5MenuItem1.frame.midX, y: darkOrangeSquare5MenuItem1.frame.midY - darkOrangeSquare5MenuItem1.frame.size.height * 2))
        addChild(darkOrangeSquare5Item1Label1)
        
        darkOrangeSquare5MenuItem2 = SKSpriteNode(imageNamed: "Ship4")
        darkOrangeSquare5MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: darkOrangeSquare5Menu.position.y)
        darkOrangeSquare5MenuItem2.zPosition = 4
        darkOrangeSquare5MenuItem2.setScale(0.26)
        darkOrangeSquare5MenuItem2.name = "darkOrangeSquare5MenuItem2"
        addChild(darkOrangeSquare5MenuItem2)
        
        darkOrangeSquare5Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare5Item2Title.text = "Flying Dutchman"
        darkOrangeSquare5Item2Title.fontSize = 9
        darkOrangeSquare5Item2Title.fontColor = forbiddenFruit
        darkOrangeSquare5Item2Title.position = CGPoint(x: darkOrangeSquare5MenuItem2.frame.midX, y: darkOrangeSquare5MenuItem2.frame.maxY + darkOrangeSquare5Item2Title.frame.size.height)
        darkOrangeSquare5Item2Title.zPosition = 4
        addChild(darkOrangeSquare5Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        darkOrangeSquare5MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare5MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        darkOrangeSquare5MenuItem2Label1.fontSize = 7.5
        darkOrangeSquare5MenuItem2Label1.fontColor = forbiddenFruit
        darkOrangeSquare5MenuItem2Label1.position = CGPoint(x: darkOrangeSquare5MenuItem2.frame.midX, y: darkOrangeSquare5MenuItem2.frame.midY - darkOrangeSquare5MenuItem2.frame.size.height)
        darkOrangeSquare5MenuItem2Label1.zPosition = 4
        addChild(darkOrangeSquare5MenuItem2Label1)
        
        darkOrangeSquare5MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare5MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        darkOrangeSquare5MenuItem2Label2.fontSize = 7.5
        darkOrangeSquare5MenuItem2Label2.fontColor = forbiddenFruit
        darkOrangeSquare5MenuItem2Label2.position = CGPoint(x: darkOrangeSquare5MenuItem2.frame.midX, y: darkOrangeSquare5MenuItem2.frame.midY - darkOrangeSquare5MenuItem2.frame.size.height - darkOrangeSquare5MenuItem2Label2.frame.size.height)
        darkOrangeSquare5MenuItem2Label2.zPosition = 4
        addChild(darkOrangeSquare5MenuItem2Label2)
        
        darkOrangeSquare5Item2Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare5MenuItem2.frame.midX, y: darkOrangeSquare5MenuItem2.frame.midY - darkOrangeSquare5MenuItem2.frame.size.height * 2))
        addChild(darkOrangeSquare5Item2Label1)
    }
    
    func moveDarkOrangeSquare5Menu(view: SKView) {
        // ITEM BACKDROP
        var darkOrangeSquare5MenuAction: SKAction
        
        // TITLE
        var darkOrangeSquare5TitleBackdropAction: SKAction
        var darkOrangeSquare5TitleLabelAction: SKAction
        
        // ITEM 1
        var darkOrangeSquare5MenuItem1Action: SKAction
        
        var darkOrangeSquare5Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkOrangeSquare5MenuItem1Label1Action: SKAction
        var darkOrangeSquare5MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var darkOrangeSquare5MenuItem2Action: SKAction
        
        var darkOrangeSquare5Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var darkOrangeSquare5MenuItem2Label1Action: SKAction
        var darkOrangeSquare5MenuItem2Label2Action: SKAction
            
        darkOrangeSquare5MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkOrangeSquare5Menu.run(darkOrangeSquare5MenuAction)
        
        darkOrangeSquare5TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkOrangeSquare5TitleBackdrop.run(darkOrangeSquare5TitleBackdropAction)
        
        darkOrangeSquare5TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkOrangeSquare5TitleLabel.run(darkOrangeSquare5TitleLabelAction)
        
        darkOrangeSquare5MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare5MenuItem1.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare5MenuItem1.run(darkOrangeSquare5MenuItem1Action)
        
        darkOrangeSquare5Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare5MenuItem1.frame.size.height), duration: 0.25)
        darkOrangeSquare5Item1Title.run(darkOrangeSquare5Item1TitleAction)
        
        darkOrangeSquare5MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare5MenuItem1.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare5MenuItem1Label1.run(darkOrangeSquare5MenuItem1Label1Action)
        
        darkOrangeSquare5MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare5MenuItem1.frame.size.height / 2 - darkOrangeSquare5MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare5MenuItem1Label2.run(darkOrangeSquare5MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare5Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare5MenuItem1.frame.size.height / 2 - darkOrangeSquare5MenuItem1Label2.frame.size.height * 3))
        
        darkOrangeSquare5MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare5MenuItem2.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare5MenuItem2.run(darkOrangeSquare5MenuItem2Action)
        
        darkOrangeSquare5Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare5MenuItem2.frame.size.height), duration: 0.25)
        darkOrangeSquare5Item2Title.run(darkOrangeSquare5Item2TitleAction)
        
        darkOrangeSquare5MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare5MenuItem2.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare5MenuItem2Label1.run(darkOrangeSquare5MenuItem2Label1Action)
        
        darkOrangeSquare5MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare5MenuItem2.frame.size.height / 2 - darkOrangeSquare5MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare5MenuItem2Label2.run(darkOrangeSquare5MenuItem2Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare5Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare5MenuItem2.frame.size.height / 2 - darkOrangeSquare5MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeDarkOrangeSquare5Menu(view: SKView) {
        // MOVE ACTIONS
        var darkOrangeSquare5MenuAction: SKAction // BACKDROP
        var darkOrangeSquare5TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkOrangeSquare5TitleLabelAction: SKAction // TITLE
        var darkOrangeSquare5MenuItem1Action: SKAction // ITEM 1
        var darkOrangeSquare5Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkOrangeSquare5MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare5MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare5MenuItem2Action: SKAction // ITEM 2
        var darkOrangeSquare5Item2TitleAction: SKAction // ITEM 2 TITLE
        var darkOrangeSquare5MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare5MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var darkOrangeSquare5MenuRemove: SKAction // BACKDROP
        var darkOrangeSquare5TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkOrangeSquare5TitleLabelRemove: SKAction // TITLE
        var darkOrangeSquare5MenuItem1Remove: SKAction // ITEM 1
        var darkOrangeSquare5Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkOrangeSquare5MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare5MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare5MenuItem2Remove: SKAction // ITEM 2
        var darkOrangeSquare5Item2TitleRemove: SKAction // ITEM 2 TITLE
        var darkOrangeSquare5MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare5MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkOrangeSquare5MenuSequence: SKAction // BACKDROP
        var darkOrangeSquare5TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkOrangeSquare5TitleLabelSequence: SKAction // TITLE
        var darkOrangeSquare5MenuItem1Sequence: SKAction // ITEM 1
        var darkOrangeSquare5Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkOrangeSquare5MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare5MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare5MenuItem2Sequence: SKAction // ITEM 2
        var darkOrangeSquare5Item2TitleSequence: SKAction // ITEM 2 TITLE
        var darkOrangeSquare5MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare5MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        darkOrangeSquare5MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5MenuRemove = SKAction.removeFromParent()
        darkOrangeSquare5MenuSequence = SKAction.sequence([darkOrangeSquare5MenuAction, darkOrangeSquare5MenuRemove])
        darkOrangeSquare5Menu.run(darkOrangeSquare5MenuSequence)
        
        darkOrangeSquare5TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5TitleBackdropRemove = SKAction.removeFromParent()
        darkOrangeSquare5TitleBackdropSequence = SKAction.sequence([darkOrangeSquare5TitleBackdropAction, darkOrangeSquare5TitleBackdropRemove])
        darkOrangeSquare5TitleBackdrop.run(darkOrangeSquare5TitleBackdropSequence)
        
        darkOrangeSquare5TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5TitleLabelRemove = SKAction.removeFromParent()
        darkOrangeSquare5TitleLabelSequence = SKAction.sequence([darkOrangeSquare5TitleLabelAction, darkOrangeSquare5TitleLabelRemove])
        darkOrangeSquare5TitleLabel.run(darkOrangeSquare5TitleLabelSequence)
        
        darkOrangeSquare5MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5MenuItem1Remove = SKAction.removeFromParent()
        darkOrangeSquare5MenuItem1Sequence = SKAction.sequence([darkOrangeSquare5MenuItem1Action, darkOrangeSquare5MenuItem1Remove])
        darkOrangeSquare5MenuItem1.run(darkOrangeSquare5MenuItem1Sequence)
        
        darkOrangeSquare5Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5Item1TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare5Item1TitleSequence = SKAction.sequence([darkOrangeSquare5Item1TitleAction, darkOrangeSquare5Item1TitleRemove])
        darkOrangeSquare5Item1Title.run(darkOrangeSquare5Item1TitleSequence)
        
        darkOrangeSquare5MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5MenuItem1Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare5MenuItem1Label1Sequence = SKAction.sequence([darkOrangeSquare5MenuItem1Label1Action, darkOrangeSquare5MenuItem1Label1Remove])
        darkOrangeSquare5MenuItem1Label1.run(darkOrangeSquare5MenuItem1Label1Sequence)
        
        darkOrangeSquare5MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5MenuItem1Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare5MenuItem1Label2Sequence = SKAction.sequence([darkOrangeSquare5MenuItem1Label2Action, darkOrangeSquare5MenuItem1Label2Remove])
        darkOrangeSquare5MenuItem1Label2.run(darkOrangeSquare5MenuItem1Label2Sequence)
        
        darkOrangeSquare5MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5MenuItem2Remove = SKAction.removeFromParent()
        darkOrangeSquare5MenuItem2Sequence = SKAction.sequence([darkOrangeSquare5MenuItem2Action, darkOrangeSquare5MenuItem2Remove])
        darkOrangeSquare5MenuItem2.run(darkOrangeSquare5MenuItem2Sequence)
        
        darkOrangeSquare5Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5Item2TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare5Item2TitleSequence = SKAction.sequence([darkOrangeSquare5Item2TitleAction, darkOrangeSquare5Item2TitleRemove])
        darkOrangeSquare5Item2Title.run(darkOrangeSquare5Item2TitleSequence)
        
        darkOrangeSquare5MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5MenuItem2Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare5MenuItem2Label1Sequence = SKAction.sequence([darkOrangeSquare5MenuItem2Label1Action, darkOrangeSquare5MenuItem2Label1Remove])
        darkOrangeSquare5MenuItem2Label1.run(darkOrangeSquare5MenuItem2Label1Sequence)
        
        darkOrangeSquare5MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare5MenuItem2Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare5MenuItem2Label2Sequence = SKAction.sequence([darkOrangeSquare5MenuItem2Label2Action, darkOrangeSquare5MenuItem2Label2Remove])
        darkOrangeSquare5MenuItem2Label2.run(darkOrangeSquare5MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: darkOrangeSquare5Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: darkOrangeSquare5Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // dark Orange SQUARE 6 ------------------- MENU
    
    func createMenuForDarkOrangeSquare6(view: SKView) {
        darkOrangeSquare6Menu = SKSpriteNode(imageNamed: "Asset 30")
        darkOrangeSquare6Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare6Menu.setScale(0.42)
        darkOrangeSquare6Menu.zPosition = 3
        darkOrangeSquare6Menu.name = "darkOrangeSquare6Menu"
        addChild(darkOrangeSquare6Menu)
        
        darkOrangeSquare6TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        darkOrangeSquare6TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        darkOrangeSquare6TitleBackdrop.setScale(0.42)
        darkOrangeSquare6TitleBackdrop.zPosition = 3
        addChild(darkOrangeSquare6TitleBackdrop)
        
        darkOrangeSquare6TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare6TitleLabel.text = "Pirateships"
        darkOrangeSquare6TitleLabel.fontSize = 18
        darkOrangeSquare6TitleLabel.fontColor = forbiddenFruit
        darkOrangeSquare6TitleLabel.position = CGPoint(x: darkOrangeSquare6TitleBackdrop.frame.midX, y: darkOrangeSquare6TitleBackdrop.frame.maxY - darkOrangeSquare6TitleLabel.frame.size.height)
        darkOrangeSquare6TitleLabel.zPosition = 4
        addChild(darkOrangeSquare6TitleLabel)
        
        darkOrangeSquare6MenuItem1 = SKSpriteNode(imageNamed: "Ship3")
        darkOrangeSquare6MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: darkOrangeSquare6Menu.position.y)
        darkOrangeSquare6MenuItem1.zPosition = 4
        darkOrangeSquare6MenuItem1.setScale(0.26)
        darkOrangeSquare6MenuItem1.name = "darkOrangeSquare6MenuItem1"
        addChild(darkOrangeSquare6MenuItem1)
        
        darkOrangeSquare6Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare6Item1Title.text = "Black Pearl"
        darkOrangeSquare6Item1Title.fontSize = 9
        darkOrangeSquare6Item1Title.fontColor = forbiddenFruit
        darkOrangeSquare6Item1Title.position = CGPoint(x: darkOrangeSquare6MenuItem1.frame.midX, y: darkOrangeSquare6MenuItem1.frame.maxY + darkOrangeSquare6Item1Title.frame.size.height)
        darkOrangeSquare6Item1Title.zPosition = 4
        addChild(darkOrangeSquare6Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        darkOrangeSquare6MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare6MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        darkOrangeSquare6MenuItem1Label1.fontSize = 7.5
        darkOrangeSquare6MenuItem1Label1.fontColor = forbiddenFruit
        darkOrangeSquare6MenuItem1Label1.position = CGPoint(x: darkOrangeSquare6MenuItem1.frame.midX, y: darkOrangeSquare6MenuItem1.frame.midY - darkOrangeSquare6MenuItem1.frame.size.height)
        darkOrangeSquare6MenuItem1Label1.zPosition = 4
        addChild(darkOrangeSquare6MenuItem1Label1)
        
        darkOrangeSquare6MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare6MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        darkOrangeSquare6MenuItem1Label2.fontSize = 7.5
        darkOrangeSquare6MenuItem1Label2.fontColor = forbiddenFruit
        darkOrangeSquare6MenuItem1Label2.position = CGPoint(x: darkOrangeSquare6MenuItem1.frame.midX, y: darkOrangeSquare6MenuItem1.frame.midY - darkOrangeSquare6MenuItem1.frame.size.height - darkOrangeSquare6MenuItem1Label2.frame.size.height)
        darkOrangeSquare6MenuItem1Label2.zPosition = 4
        addChild(darkOrangeSquare6MenuItem1Label2)
        
        darkOrangeSquare6Item1Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare6MenuItem1.frame.midX, y: darkOrangeSquare6MenuItem1.frame.midY - darkOrangeSquare6MenuItem1.frame.size.height * 2))
        addChild(darkOrangeSquare6Item1Label1)
        
        darkOrangeSquare6MenuItem2 = SKSpriteNode(imageNamed: "Ship4")
        darkOrangeSquare6MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: darkOrangeSquare6Menu.position.y)
        darkOrangeSquare6MenuItem2.zPosition = 4
        darkOrangeSquare6MenuItem2.setScale(0.26)
        darkOrangeSquare6MenuItem2.name = "darkOrangeSquare6MenuItem2"
        addChild(darkOrangeSquare6MenuItem2)
        
        darkOrangeSquare6Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare6Item2Title.text = "Flying Dutchman"
        darkOrangeSquare6Item2Title.fontSize = 9
        darkOrangeSquare6Item2Title.fontColor = forbiddenFruit
        darkOrangeSquare6Item2Title.position = CGPoint(x: darkOrangeSquare6MenuItem2.frame.midX, y: darkOrangeSquare6MenuItem2.frame.maxY + darkOrangeSquare6Item2Title.frame.size.height)
        darkOrangeSquare6Item2Title.zPosition = 4
        addChild(darkOrangeSquare6Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        darkOrangeSquare6MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare6MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        darkOrangeSquare6MenuItem2Label1.fontSize = 7.5
        darkOrangeSquare6MenuItem2Label1.fontColor = forbiddenFruit
        darkOrangeSquare6MenuItem2Label1.position = CGPoint(x: darkOrangeSquare6MenuItem2.frame.midX, y: darkOrangeSquare6MenuItem2.frame.midY - darkOrangeSquare6MenuItem2.frame.size.height)
        darkOrangeSquare6MenuItem2Label1.zPosition = 4
        addChild(darkOrangeSquare6MenuItem2Label1)
        
        darkOrangeSquare6MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        darkOrangeSquare6MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        darkOrangeSquare6MenuItem2Label2.fontSize = 7.5
        darkOrangeSquare6MenuItem2Label2.fontColor = forbiddenFruit
        darkOrangeSquare6MenuItem2Label2.position = CGPoint(x: darkOrangeSquare6MenuItem2.frame.midX, y: darkOrangeSquare6MenuItem2.frame.midY - darkOrangeSquare6MenuItem2.frame.size.height - darkOrangeSquare6MenuItem2Label2.frame.size.height)
        darkOrangeSquare6MenuItem2Label2.zPosition = 4
        addChild(darkOrangeSquare6MenuItem2Label2)
        
        darkOrangeSquare6Item2Label1 = createMenuItemLabels(text: "Attack", pos: CGPoint(x: darkOrangeSquare6MenuItem2.frame.midX, y: darkOrangeSquare6MenuItem2.frame.midY - darkOrangeSquare6MenuItem2.frame.size.height * 2))
        addChild(darkOrangeSquare6Item2Label1)
    }
    
    func moveDarkOrangeSquare6Menu(view: SKView) {
        // ITEM BACKDROP
        var darkOrangeSquare6MenuAction: SKAction
        
        // TITLE
        var darkOrangeSquare6TitleBackdropAction: SKAction
        var darkOrangeSquare6TitleLabelAction: SKAction
        
        // ITEM 1
        var darkOrangeSquare6MenuItem1Action: SKAction
        
        var darkOrangeSquare6Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var darkOrangeSquare6MenuItem1Label1Action: SKAction
        var darkOrangeSquare6MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var darkOrangeSquare6MenuItem2Action: SKAction
        
        var darkOrangeSquare6Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var darkOrangeSquare6MenuItem2Label1Action: SKAction
        var darkOrangeSquare6MenuItem2Label2Action: SKAction
            
        darkOrangeSquare6MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        darkOrangeSquare6Menu.run(darkOrangeSquare6MenuAction)
        
        darkOrangeSquare6TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        darkOrangeSquare6TitleBackdrop.run(darkOrangeSquare6TitleBackdropAction)
        
        darkOrangeSquare6TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        darkOrangeSquare6TitleLabel.run(darkOrangeSquare6TitleLabelAction)
        
        darkOrangeSquare6MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare6MenuItem1.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare6MenuItem1.run(darkOrangeSquare6MenuItem1Action)
        
        darkOrangeSquare6Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare6MenuItem1.frame.size.height), duration: 0.25)
        darkOrangeSquare6Item1Title.run(darkOrangeSquare6Item1TitleAction)
        
        darkOrangeSquare6MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare6MenuItem1.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare6MenuItem1Label1.run(darkOrangeSquare6MenuItem1Label1Action)
        
        darkOrangeSquare6MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare6MenuItem1.frame.size.height / 2 - darkOrangeSquare6MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare6MenuItem1Label2.run(darkOrangeSquare6MenuItem1Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare6Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare6MenuItem1.frame.size.height / 2 - darkOrangeSquare6MenuItem1Label2.frame.size.height * 3))
        
        darkOrangeSquare6MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare6MenuItem2.frame.size.height / 3), duration: 0.25)
        darkOrangeSquare6MenuItem2.run(darkOrangeSquare6MenuItem2Action)
        
        darkOrangeSquare6Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + darkOrangeSquare6MenuItem2.frame.size.height), duration: 0.25)
        darkOrangeSquare6Item2Title.run(darkOrangeSquare6Item2TitleAction)
        
        darkOrangeSquare6MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare6MenuItem2.frame.size.height / 2), duration: 0.25)
        darkOrangeSquare6MenuItem2Label1.run(darkOrangeSquare6MenuItem2Label1Action)
        
        darkOrangeSquare6MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare6MenuItem2.frame.size.height / 2 - darkOrangeSquare6MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        darkOrangeSquare6MenuItem2Label2.run(darkOrangeSquare6MenuItem2Label2Action)
        
        moveMenuItemLabels(label: darkOrangeSquare6Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - darkOrangeSquare6MenuItem2.frame.size.height / 2 - darkOrangeSquare6MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeDarkOrangeSquare6Menu(view: SKView) {
        // MOVE ACTIONS
        var darkOrangeSquare6MenuAction: SKAction // BACKDROP
        var darkOrangeSquare6TitleBackdropAction: SKAction // TITLE BACKDROP
        var darkOrangeSquare6TitleLabelAction: SKAction // TITLE
        var darkOrangeSquare6MenuItem1Action: SKAction // ITEM 1
        var darkOrangeSquare6Item1TitleAction: SKAction // ITEM 1 TITLE
        var darkOrangeSquare6MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare6MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare6MenuItem2Action: SKAction // ITEM 2
        var darkOrangeSquare6Item2TitleAction: SKAction // ITEM 2 TITLE
        var darkOrangeSquare6MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare6MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var darkOrangeSquare6MenuRemove: SKAction // BACKDROP
        var darkOrangeSquare6TitleBackdropRemove: SKAction // TITLE BACKDROP
        var darkOrangeSquare6TitleLabelRemove: SKAction // TITLE
        var darkOrangeSquare6MenuItem1Remove: SKAction // ITEM 1
        var darkOrangeSquare6Item1TitleRemove: SKAction // ITEM 1 TITLE
        var darkOrangeSquare6MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare6MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare6MenuItem2Remove: SKAction // ITEM 2
        var darkOrangeSquare6Item2TitleRemove: SKAction // ITEM 2 TITLE
        var darkOrangeSquare6MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare6MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var darkOrangeSquare6MenuSequence: SKAction // BACKDROP
        var darkOrangeSquare6TitleBackdropSequence: SKAction // TITLE BACKDROP
        var darkOrangeSquare6TitleLabelSequence: SKAction // TITLE
        var darkOrangeSquare6MenuItem1Sequence: SKAction // ITEM 1
        var darkOrangeSquare6Item1TitleSequence: SKAction // ITEM 1 TITLE
        var darkOrangeSquare6MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var darkOrangeSquare6MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var darkOrangeSquare6MenuItem2Sequence: SKAction // ITEM 2
        var darkOrangeSquare6Item2TitleSequence: SKAction // ITEM 2 TITLE
        var darkOrangeSquare6MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var darkOrangeSquare6MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        darkOrangeSquare6MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6MenuRemove = SKAction.removeFromParent()
        darkOrangeSquare6MenuSequence = SKAction.sequence([darkOrangeSquare6MenuAction, darkOrangeSquare6MenuRemove])
        darkOrangeSquare6Menu.run(darkOrangeSquare6MenuSequence)
        
        darkOrangeSquare6TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6TitleBackdropRemove = SKAction.removeFromParent()
        darkOrangeSquare6TitleBackdropSequence = SKAction.sequence([darkOrangeSquare6TitleBackdropAction, darkOrangeSquare6TitleBackdropRemove])
        darkOrangeSquare6TitleBackdrop.run(darkOrangeSquare6TitleBackdropSequence)
        
        darkOrangeSquare6TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6TitleLabelRemove = SKAction.removeFromParent()
        darkOrangeSquare6TitleLabelSequence = SKAction.sequence([darkOrangeSquare6TitleLabelAction, darkOrangeSquare6TitleLabelRemove])
        darkOrangeSquare6TitleLabel.run(darkOrangeSquare6TitleLabelSequence)
        
        darkOrangeSquare6MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6MenuItem1Remove = SKAction.removeFromParent()
        darkOrangeSquare6MenuItem1Sequence = SKAction.sequence([darkOrangeSquare6MenuItem1Action, darkOrangeSquare6MenuItem1Remove])
        darkOrangeSquare6MenuItem1.run(darkOrangeSquare6MenuItem1Sequence)
        
        darkOrangeSquare6Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6Item1TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare6Item1TitleSequence = SKAction.sequence([darkOrangeSquare6Item1TitleAction, darkOrangeSquare6Item1TitleRemove])
        darkOrangeSquare6Item1Title.run(darkOrangeSquare6Item1TitleSequence)
        
        darkOrangeSquare6MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6MenuItem1Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare6MenuItem1Label1Sequence = SKAction.sequence([darkOrangeSquare6MenuItem1Label1Action, darkOrangeSquare6MenuItem1Label1Remove])
        darkOrangeSquare6MenuItem1Label1.run(darkOrangeSquare6MenuItem1Label1Sequence)
        
        darkOrangeSquare6MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6MenuItem1Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare6MenuItem1Label2Sequence = SKAction.sequence([darkOrangeSquare6MenuItem1Label2Action, darkOrangeSquare6MenuItem1Label2Remove])
        darkOrangeSquare6MenuItem1Label2.run(darkOrangeSquare6MenuItem1Label2Sequence)
        
        darkOrangeSquare6MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6MenuItem2Remove = SKAction.removeFromParent()
        darkOrangeSquare6MenuItem2Sequence = SKAction.sequence([darkOrangeSquare6MenuItem2Action, darkOrangeSquare6MenuItem2Remove])
        darkOrangeSquare6MenuItem2.run(darkOrangeSquare6MenuItem2Sequence)
        
        darkOrangeSquare6Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6Item2TitleRemove = SKAction.removeFromParent()
        darkOrangeSquare6Item2TitleSequence = SKAction.sequence([darkOrangeSquare6Item2TitleAction, darkOrangeSquare6Item2TitleRemove])
        darkOrangeSquare6Item2Title.run(darkOrangeSquare6Item2TitleSequence)
        
        darkOrangeSquare6MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6MenuItem2Label1Remove = SKAction.removeFromParent()
        darkOrangeSquare6MenuItem2Label1Sequence = SKAction.sequence([darkOrangeSquare6MenuItem2Label1Action, darkOrangeSquare6MenuItem2Label1Remove])
        darkOrangeSquare6MenuItem2Label1.run(darkOrangeSquare6MenuItem2Label1Sequence)
        
        darkOrangeSquare6MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        darkOrangeSquare6MenuItem2Label2Remove = SKAction.removeFromParent()
        darkOrangeSquare6MenuItem2Label2Sequence = SKAction.sequence([darkOrangeSquare6MenuItem2Label2Action, darkOrangeSquare6MenuItem2Label2Remove])
        darkOrangeSquare6MenuItem2Label2.run(darkOrangeSquare6MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: darkOrangeSquare6Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: darkOrangeSquare6Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}
