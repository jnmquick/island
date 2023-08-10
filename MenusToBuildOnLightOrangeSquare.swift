//
//  MenusToBuildOnLightOrange.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class MenuForLightOrangeSquare: SKNode {
    
    var lightOrangeSquare2Menu: SKSpriteNode!
    var lightOrangeSquare2TitleBackdrop: SKSpriteNode!
    var lightOrangeSquare2TitleLabel: SKLabelNode!
    var lightOrangeSquare2MenuItem1: SKSpriteNode!
    var lightOrangeSquare2Item1Title: SKLabelNode!
    var lightOrangeSquare2MenuItem1Label1: SKLabelNode!
    var lightOrangeSquare2MenuItem1Label2: SKLabelNode!
    var lightOrangeSquare2Item1Label1: SKLabelNode!
    var lightOrangeSquare2MenuItem2: SKSpriteNode!
    var lightOrangeSquare2Item2Title: SKLabelNode!
    var lightOrangeSquare2MenuItem2Label1: SKLabelNode!
    var lightOrangeSquare2MenuItem2Label2: SKLabelNode!
    var lightOrangeSquare2Item2Label1: SKLabelNode!
    
    var lightOrangeSquare3Menu: SKSpriteNode!
    var lightOrangeSquare3TitleBackdrop: SKSpriteNode!
    var lightOrangeSquare3TitleLabel: SKLabelNode!
    var lightOrangeSquare3MenuItem1: SKSpriteNode!
    var lightOrangeSquare3Item1Title: SKLabelNode!
    var lightOrangeSquare3MenuItem1Label1: SKLabelNode!
    var lightOrangeSquare3MenuItem1Label2: SKLabelNode!
    var lightOrangeSquare3Item1Label1: SKLabelNode!
    var lightOrangeSquare3MenuItem2: SKSpriteNode!
    var lightOrangeSquare3Item2Title: SKLabelNode!
    var lightOrangeSquare3MenuItem2Label1: SKLabelNode!
    var lightOrangeSquare3MenuItem2Label2: SKLabelNode!
    var lightOrangeSquare3Item2Label1: SKLabelNode!
    
    var lightOrangeSquare4Menu: SKSpriteNode!
    var lightOrangeSquare4TitleBackdrop: SKSpriteNode!
    var lightOrangeSquare4TitleLabel: SKLabelNode!
    var lightOrangeSquare4MenuItem1: SKSpriteNode!
    var lightOrangeSquare4Item1Title: SKLabelNode!
    var lightOrangeSquare4MenuItem1Label1: SKLabelNode!
    var lightOrangeSquare4MenuItem1Label2: SKLabelNode!
    var lightOrangeSquare4Item1Label1: SKLabelNode!
    var lightOrangeSquare4MenuItem2: SKSpriteNode!
    var lightOrangeSquare4Item2Title: SKLabelNode!
    var lightOrangeSquare4MenuItem2Label1: SKLabelNode!
    var lightOrangeSquare4MenuItem2Label2: SKLabelNode!
    var lightOrangeSquare4Item2Label1: SKLabelNode!
    
    var lightOrangeSquare5Menu: SKSpriteNode!
    var lightOrangeSquare5TitleBackdrop: SKSpriteNode!
    var lightOrangeSquare5TitleLabel: SKLabelNode!
    var lightOrangeSquare5MenuItem1: SKSpriteNode!
    var lightOrangeSquare5Item1Title: SKLabelNode!
    var lightOrangeSquare5MenuItem1Label1: SKLabelNode!
    var lightOrangeSquare5MenuItem1Label2: SKLabelNode!
    var lightOrangeSquare5Item1Label1: SKLabelNode!
    var lightOrangeSquare5MenuItem2: SKSpriteNode!
    var lightOrangeSquare5Item2Title: SKLabelNode!
    var lightOrangeSquare5MenuItem2Label1: SKLabelNode!
    var lightOrangeSquare5MenuItem2Label2: SKLabelNode!
    var lightOrangeSquare5Item2Label1: SKLabelNode!
    
    var lightOrangeSquare6Menu: SKSpriteNode!
    var lightOrangeSquare6TitleBackdrop: SKSpriteNode!
    var lightOrangeSquare6TitleLabel: SKLabelNode!
    var lightOrangeSquare6MenuItem1: SKSpriteNode!
    var lightOrangeSquare6Item1Title: SKLabelNode!
    var lightOrangeSquare6MenuItem1Label1: SKLabelNode!
    var lightOrangeSquare6MenuItem1Label2: SKLabelNode!
    var lightOrangeSquare6Item1Label1: SKLabelNode!
    var lightOrangeSquare6MenuItem2: SKSpriteNode!
    var lightOrangeSquare6Item2Title: SKLabelNode!
    var lightOrangeSquare6MenuItem2Label1: SKLabelNode!
    var lightOrangeSquare6MenuItem2Label2: SKLabelNode!
    var lightOrangeSquare6Item2Label1: SKLabelNode!
    
    var priceOfMenuItem1 = 200
    var techLevelRequirementMenuItem1 = 0
    var priceOfMenuItem2 = 200
    var techLevelRequirementMenuItem2 = 0
    
    // LIGHT Orange SQUARE 2 ------------------- MENU
    
    func createMenuForLightOrangeSquare2(view: SKView) {
        lightOrangeSquare2Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightOrangeSquare2Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare2Menu.setScale(0.42)
        lightOrangeSquare2Menu.zPosition = 3
        lightOrangeSquare2Menu.name = "lightOrangeSquare2Menu"
        addChild(lightOrangeSquare2Menu)
        
        lightOrangeSquare2TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightOrangeSquare2TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare2TitleBackdrop.setScale(0.42)
        lightOrangeSquare2TitleBackdrop.zPosition = 3
        addChild(lightOrangeSquare2TitleBackdrop)
        
        lightOrangeSquare2TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare2TitleLabel.text = "Battleships"
        lightOrangeSquare2TitleLabel.fontSize = 18
        lightOrangeSquare2TitleLabel.fontColor = forbiddenFruit
        lightOrangeSquare2TitleLabel.position = CGPoint(x: lightOrangeSquare2TitleBackdrop.frame.midX, y: lightOrangeSquare2TitleBackdrop.frame.maxY - lightOrangeSquare2TitleLabel.frame.size.height)
        lightOrangeSquare2TitleLabel.zPosition = 4
        addChild(lightOrangeSquare2TitleLabel)
        
        lightOrangeSquare2MenuItem1 = SKSpriteNode(imageNamed: "Ship")
        lightOrangeSquare2MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightOrangeSquare2Menu.position.y)
        lightOrangeSquare2MenuItem1.zPosition = 4
        lightOrangeSquare2MenuItem1.setScale(0.26)
        lightOrangeSquare2MenuItem1.name = "lightOrangeSquare2MenuItem1"
        addChild(lightOrangeSquare2MenuItem1)
        
        lightOrangeSquare2Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare2Item1Title.text = "Destroyer"
        lightOrangeSquare2Item1Title.fontSize = 9
        lightOrangeSquare2Item1Title.fontColor = forbiddenFruit
        lightOrangeSquare2Item1Title.position = CGPoint(x: lightOrangeSquare2MenuItem1.frame.midX, y: lightOrangeSquare2MenuItem1.frame.maxY + lightOrangeSquare2Item1Title.frame.size.height)
        lightOrangeSquare2Item1Title.zPosition = 4
        addChild(lightOrangeSquare2Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightOrangeSquare2MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare2MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightOrangeSquare2MenuItem1Label1.fontSize = 7.5
        lightOrangeSquare2MenuItem1Label1.fontColor = forbiddenFruit
        lightOrangeSquare2MenuItem1Label1.position = CGPoint(x: lightOrangeSquare2MenuItem1.frame.midX, y: lightOrangeSquare2MenuItem1.frame.midY - lightOrangeSquare2MenuItem1.frame.size.height)
        lightOrangeSquare2MenuItem1Label1.zPosition = 4
        addChild(lightOrangeSquare2MenuItem1Label1)
        
        lightOrangeSquare2MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare2MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightOrangeSquare2MenuItem1Label2.fontSize = 7.5
        lightOrangeSquare2MenuItem1Label2.fontColor = forbiddenFruit
        lightOrangeSquare2MenuItem1Label2.position = CGPoint(x: lightOrangeSquare2MenuItem1.frame.midX, y: lightOrangeSquare2MenuItem1.frame.midY - lightOrangeSquare2MenuItem1.frame.size.height - lightOrangeSquare2MenuItem1Label2.frame.size.height)
        lightOrangeSquare2MenuItem1Label2.zPosition = 4
        addChild(lightOrangeSquare2MenuItem1Label2)
        
        lightOrangeSquare2Item1Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare2MenuItem1.frame.midX, y: lightOrangeSquare2MenuItem1.frame.midY - lightOrangeSquare2MenuItem1.frame.size.height * 2))
        addChild(lightOrangeSquare2Item1Label1)
        
        lightOrangeSquare2MenuItem2 = SKSpriteNode(imageNamed: "Ship2")
        lightOrangeSquare2MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: lightOrangeSquare2Menu.position.y)
        lightOrangeSquare2MenuItem2.zPosition = 4
        lightOrangeSquare2MenuItem2.setScale(0.26)
        lightOrangeSquare2MenuItem2.name = "lightOrangeSquare2MenuItem2"
        addChild(lightOrangeSquare2MenuItem2)
        
        lightOrangeSquare2Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare2Item2Title.text = "Navigator"
        lightOrangeSquare2Item2Title.fontSize = 9
        lightOrangeSquare2Item2Title.fontColor = forbiddenFruit
        lightOrangeSquare2Item2Title.position = CGPoint(x: lightOrangeSquare2MenuItem2.frame.midX, y: lightOrangeSquare2MenuItem2.frame.maxY + lightOrangeSquare2Item2Title.frame.size.height)
        lightOrangeSquare2Item2Title.zPosition = 4
        addChild(lightOrangeSquare2Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        lightOrangeSquare2MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare2MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        lightOrangeSquare2MenuItem2Label1.fontSize = 7.5
        lightOrangeSquare2MenuItem2Label1.fontColor = forbiddenFruit
        lightOrangeSquare2MenuItem2Label1.position = CGPoint(x: lightOrangeSquare2MenuItem2.frame.midX, y: lightOrangeSquare2MenuItem2.frame.midY - lightOrangeSquare2MenuItem2.frame.size.height)
        lightOrangeSquare2MenuItem2Label1.zPosition = 4
        addChild(lightOrangeSquare2MenuItem2Label1)
        
        lightOrangeSquare2MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare2MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        lightOrangeSquare2MenuItem2Label2.fontSize = 7.5
        lightOrangeSquare2MenuItem2Label2.fontColor = forbiddenFruit
        lightOrangeSquare2MenuItem2Label2.position = CGPoint(x: lightOrangeSquare2MenuItem2.frame.midX, y: lightOrangeSquare2MenuItem2.frame.midY - lightOrangeSquare2MenuItem2.frame.size.height - lightOrangeSquare2MenuItem2Label2.frame.size.height)
        lightOrangeSquare2MenuItem2Label2.zPosition = 4
        addChild(lightOrangeSquare2MenuItem2Label2)
        
        lightOrangeSquare2Item2Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare2MenuItem2.frame.midX, y: lightOrangeSquare2MenuItem2.frame.midY - lightOrangeSquare2MenuItem2.frame.size.height * 2))
        addChild(lightOrangeSquare2Item2Label1)
    }
    
    func moveLightOrangeSquare2Menu(view: SKView) {
        // ITEM BACKDROP
        var lightOrangeSquare2MenuAction: SKAction
        
        // TITLE
        var lightOrangeSquare2TitleBackdropAction: SKAction
        var lightOrangeSquare2TitleLabelAction: SKAction
        
        // ITEM 1
        var lightOrangeSquare2MenuItem1Action: SKAction
        
        var lightOrangeSquare2Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightOrangeSquare2MenuItem1Label1Action: SKAction
        var lightOrangeSquare2MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var lightOrangeSquare2MenuItem2Action: SKAction
        
        var lightOrangeSquare2Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var lightOrangeSquare2MenuItem2Label1Action: SKAction
        var lightOrangeSquare2MenuItem2Label2Action: SKAction
            
        lightOrangeSquare2MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightOrangeSquare2Menu.run(lightOrangeSquare2MenuAction)
        
        lightOrangeSquare2TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightOrangeSquare2TitleBackdrop.run(lightOrangeSquare2TitleBackdropAction)
        
        lightOrangeSquare2TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightOrangeSquare2TitleLabel.run(lightOrangeSquare2TitleLabelAction)
        
        lightOrangeSquare2MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare2MenuItem1.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare2MenuItem1.run(lightOrangeSquare2MenuItem1Action)
        
        lightOrangeSquare2Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare2MenuItem1.frame.size.height), duration: 0.25)
        lightOrangeSquare2Item1Title.run(lightOrangeSquare2Item1TitleAction)
        
        lightOrangeSquare2MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare2MenuItem1.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare2MenuItem1Label1.run(lightOrangeSquare2MenuItem1Label1Action)
        
        lightOrangeSquare2MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare2MenuItem1.frame.size.height / 2 - lightOrangeSquare2MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare2MenuItem1Label2.run(lightOrangeSquare2MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare2Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare2MenuItem1.frame.size.height / 2 - lightOrangeSquare2MenuItem1Label2.frame.size.height * 3))
        
        lightOrangeSquare2MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare2MenuItem2.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare2MenuItem2.run(lightOrangeSquare2MenuItem2Action)
        
        lightOrangeSquare2Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare2MenuItem2.frame.size.height), duration: 0.25)
        lightOrangeSquare2Item2Title.run(lightOrangeSquare2Item2TitleAction)
        
        lightOrangeSquare2MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare2MenuItem2.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare2MenuItem2Label1.run(lightOrangeSquare2MenuItem2Label1Action)
        
        lightOrangeSquare2MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare2MenuItem2.frame.size.height / 2 - lightOrangeSquare2MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare2MenuItem2Label2.run(lightOrangeSquare2MenuItem2Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare2Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare2MenuItem2.frame.size.height / 2 - lightOrangeSquare2MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeLightOrangeSquare2Menu(view: SKView) {
        // MOVE ACTIONS
        var lightOrangeSquare2MenuAction: SKAction // BACKDROP
        var lightOrangeSquare2TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightOrangeSquare2TitleLabelAction: SKAction // TITLE
        var lightOrangeSquare2MenuItem1Action: SKAction // ITEM 1
        var lightOrangeSquare2Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightOrangeSquare2MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare2MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare2MenuItem2Action: SKAction // ITEM 2
        var lightOrangeSquare2Item2TitleAction: SKAction // ITEM 2 TITLE
        var lightOrangeSquare2MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare2MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var lightOrangeSquare2MenuRemove: SKAction // BACKDROP
        var lightOrangeSquare2TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightOrangeSquare2TitleLabelRemove: SKAction // TITLE
        var lightOrangeSquare2MenuItem1Remove: SKAction // ITEM 1
        var lightOrangeSquare2Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightOrangeSquare2MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare2MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare2MenuItem2Remove: SKAction // ITEM 2
        var lightOrangeSquare2Item2TitleRemove: SKAction // ITEM 2 TITLE
        var lightOrangeSquare2MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare2MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightOrangeSquare2MenuSequence: SKAction // BACKDROP
        var lightOrangeSquare2TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightOrangeSquare2TitleLabelSequence: SKAction // TITLE
        var lightOrangeSquare2MenuItem1Sequence: SKAction // ITEM 1
        var lightOrangeSquare2Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightOrangeSquare2MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare2MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare2MenuItem2Sequence: SKAction // ITEM 2
        var lightOrangeSquare2Item2TitleSequence: SKAction // ITEM 2 TITLE
        var lightOrangeSquare2MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare2MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        lightOrangeSquare2MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2MenuRemove = SKAction.removeFromParent()
        lightOrangeSquare2MenuSequence = SKAction.sequence([lightOrangeSquare2MenuAction, lightOrangeSquare2MenuRemove])
        lightOrangeSquare2Menu.run(lightOrangeSquare2MenuSequence)
        
        lightOrangeSquare2TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2TitleBackdropRemove = SKAction.removeFromParent()
        lightOrangeSquare2TitleBackdropSequence = SKAction.sequence([lightOrangeSquare2TitleBackdropAction, lightOrangeSquare2TitleBackdropRemove])
        lightOrangeSquare2TitleBackdrop.run(lightOrangeSquare2TitleBackdropSequence)
        
        lightOrangeSquare2TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2TitleLabelRemove = SKAction.removeFromParent()
        lightOrangeSquare2TitleLabelSequence = SKAction.sequence([lightOrangeSquare2TitleLabelAction, lightOrangeSquare2TitleLabelRemove])
        lightOrangeSquare2TitleLabel.run(lightOrangeSquare2TitleLabelSequence)
        
        lightOrangeSquare2MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2MenuItem1Remove = SKAction.removeFromParent()
        lightOrangeSquare2MenuItem1Sequence = SKAction.sequence([lightOrangeSquare2MenuItem1Action, lightOrangeSquare2MenuItem1Remove])
        lightOrangeSquare2MenuItem1.run(lightOrangeSquare2MenuItem1Sequence)
        
        lightOrangeSquare2Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2Item1TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare2Item1TitleSequence = SKAction.sequence([lightOrangeSquare2Item1TitleAction, lightOrangeSquare2Item1TitleRemove])
        lightOrangeSquare2Item1Title.run(lightOrangeSquare2Item1TitleSequence)
        
        lightOrangeSquare2MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2MenuItem1Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare2MenuItem1Label1Sequence = SKAction.sequence([lightOrangeSquare2MenuItem1Label1Action, lightOrangeSquare2MenuItem1Label1Remove])
        lightOrangeSquare2MenuItem1Label1.run(lightOrangeSquare2MenuItem1Label1Sequence)
        
        lightOrangeSquare2MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2MenuItem1Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare2MenuItem1Label2Sequence = SKAction.sequence([lightOrangeSquare2MenuItem1Label2Action, lightOrangeSquare2MenuItem1Label2Remove])
        lightOrangeSquare2MenuItem1Label2.run(lightOrangeSquare2MenuItem1Label2Sequence)
        
        lightOrangeSquare2MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2MenuItem2Remove = SKAction.removeFromParent()
        lightOrangeSquare2MenuItem2Sequence = SKAction.sequence([lightOrangeSquare2MenuItem2Action, lightOrangeSquare2MenuItem2Remove])
        lightOrangeSquare2MenuItem2.run(lightOrangeSquare2MenuItem2Sequence)
        
        lightOrangeSquare2Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2Item2TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare2Item2TitleSequence = SKAction.sequence([lightOrangeSquare2Item2TitleAction, lightOrangeSquare2Item2TitleRemove])
        lightOrangeSquare2Item2Title.run(lightOrangeSquare2Item2TitleSequence)
        
        lightOrangeSquare2MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2MenuItem2Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare2MenuItem2Label1Sequence = SKAction.sequence([lightOrangeSquare2MenuItem2Label1Action, lightOrangeSquare2MenuItem2Label1Remove])
        lightOrangeSquare2MenuItem2Label1.run(lightOrangeSquare2MenuItem2Label1Sequence)
        
        lightOrangeSquare2MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare2MenuItem2Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare2MenuItem2Label2Sequence = SKAction.sequence([lightOrangeSquare2MenuItem2Label2Action, lightOrangeSquare2MenuItem2Label2Remove])
        lightOrangeSquare2MenuItem2Label2.run(lightOrangeSquare2MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: lightOrangeSquare2Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: lightOrangeSquare2Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // LIGHT Orange SQUARE 3 ------------------- MENU
    
    func createMenuForLightOrangeSquare3(view: SKView) {
        lightOrangeSquare3Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightOrangeSquare3Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare3Menu.setScale(0.42)
        lightOrangeSquare3Menu.zPosition = 3
        lightOrangeSquare3Menu.name = "lightOrangeSquare3Menu"
        addChild(lightOrangeSquare3Menu)
        
        lightOrangeSquare3TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightOrangeSquare3TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare3TitleBackdrop.setScale(0.42)
        lightOrangeSquare3TitleBackdrop.zPosition = 3
        addChild(lightOrangeSquare3TitleBackdrop)
        
        lightOrangeSquare3TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare3TitleLabel.text = "Battleships"
        lightOrangeSquare3TitleLabel.fontSize = 18
        lightOrangeSquare3TitleLabel.fontColor = forbiddenFruit
        lightOrangeSquare3TitleLabel.position = CGPoint(x: lightOrangeSquare3TitleBackdrop.frame.midX, y: lightOrangeSquare3TitleBackdrop.frame.maxY - lightOrangeSquare3TitleLabel.frame.size.height)
        lightOrangeSquare3TitleLabel.zPosition = 4
        addChild(lightOrangeSquare3TitleLabel)
        
        lightOrangeSquare3MenuItem1 = SKSpriteNode(imageNamed: "Ship")
        lightOrangeSquare3MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightOrangeSquare3Menu.position.y)
        lightOrangeSquare3MenuItem1.zPosition = 4
        lightOrangeSquare3MenuItem1.setScale(0.26)
        lightOrangeSquare3MenuItem1.name = "lightOrangeSquare3MenuItem1"
        addChild(lightOrangeSquare3MenuItem1)
        
        lightOrangeSquare3Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare3Item1Title.text = "Destroyer"
        lightOrangeSquare3Item1Title.fontSize = 9
        lightOrangeSquare3Item1Title.fontColor = forbiddenFruit
        lightOrangeSquare3Item1Title.position = CGPoint(x: lightOrangeSquare3MenuItem1.frame.midX, y: lightOrangeSquare3MenuItem1.frame.maxY + lightOrangeSquare3Item1Title.frame.size.height)
        lightOrangeSquare3Item1Title.zPosition = 4
        addChild(lightOrangeSquare3Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightOrangeSquare3MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare3MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightOrangeSquare3MenuItem1Label1.fontSize = 7.5
        lightOrangeSquare3MenuItem1Label1.fontColor = forbiddenFruit
        lightOrangeSquare3MenuItem1Label1.position = CGPoint(x: lightOrangeSquare3MenuItem1.frame.midX, y: lightOrangeSquare3MenuItem1.frame.midY - lightOrangeSquare3MenuItem1.frame.size.height)
        lightOrangeSquare3MenuItem1Label1.zPosition = 4
        addChild(lightOrangeSquare3MenuItem1Label1)
        
        lightOrangeSquare3MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare3MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightOrangeSquare3MenuItem1Label2.fontSize = 7.5
        lightOrangeSquare3MenuItem1Label2.fontColor = forbiddenFruit
        lightOrangeSquare3MenuItem1Label2.position = CGPoint(x: lightOrangeSquare3MenuItem1.frame.midX, y: lightOrangeSquare3MenuItem1.frame.midY - lightOrangeSquare3MenuItem1.frame.size.height - lightOrangeSquare3MenuItem1Label2.frame.size.height)
        lightOrangeSquare3MenuItem1Label2.zPosition = 4
        addChild(lightOrangeSquare3MenuItem1Label2)
        
        lightOrangeSquare3Item1Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare3MenuItem1.frame.midX, y: lightOrangeSquare3MenuItem1.frame.midY - lightOrangeSquare3MenuItem1.frame.size.height * 2))
        addChild(lightOrangeSquare3Item1Label1)
        
        lightOrangeSquare3MenuItem2 = SKSpriteNode(imageNamed: "Ship2")
        lightOrangeSquare3MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: lightOrangeSquare3Menu.position.y)
        lightOrangeSquare3MenuItem2.zPosition = 4
        lightOrangeSquare3MenuItem2.setScale(0.26)
        lightOrangeSquare3MenuItem2.name = "lightOrangeSquare3MenuItem2"
        addChild(lightOrangeSquare3MenuItem2)
        
        lightOrangeSquare3Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare3Item2Title.text = "Navigator"
        lightOrangeSquare3Item2Title.fontSize = 9
        lightOrangeSquare3Item2Title.fontColor = forbiddenFruit
        lightOrangeSquare3Item2Title.position = CGPoint(x: lightOrangeSquare3MenuItem2.frame.midX, y: lightOrangeSquare3MenuItem2.frame.maxY + lightOrangeSquare3Item2Title.frame.size.height)
        lightOrangeSquare3Item2Title.zPosition = 4
        addChild(lightOrangeSquare3Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        lightOrangeSquare3MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare3MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        lightOrangeSquare3MenuItem2Label1.fontSize = 7.5
        lightOrangeSquare3MenuItem2Label1.fontColor = forbiddenFruit
        lightOrangeSquare3MenuItem2Label1.position = CGPoint(x: lightOrangeSquare3MenuItem2.frame.midX, y: lightOrangeSquare3MenuItem2.frame.midY - lightOrangeSquare3MenuItem2.frame.size.height)
        lightOrangeSquare3MenuItem2Label1.zPosition = 4
        addChild(lightOrangeSquare3MenuItem2Label1)
        
        lightOrangeSquare3MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare3MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        lightOrangeSquare3MenuItem2Label2.fontSize = 7.5
        lightOrangeSquare3MenuItem2Label2.fontColor = forbiddenFruit
        lightOrangeSquare3MenuItem2Label2.position = CGPoint(x: lightOrangeSquare3MenuItem2.frame.midX, y: lightOrangeSquare3MenuItem2.frame.midY - lightOrangeSquare3MenuItem2.frame.size.height - lightOrangeSquare3MenuItem2Label2.frame.size.height)
        lightOrangeSquare3MenuItem2Label2.zPosition = 4
        addChild(lightOrangeSquare3MenuItem2Label2)
        
        lightOrangeSquare3Item2Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare3MenuItem2.frame.midX, y: lightOrangeSquare3MenuItem2.frame.midY - lightOrangeSquare3MenuItem2.frame.size.height * 2))
        addChild(lightOrangeSquare3Item2Label1)
    }
    
    func moveLightOrangeSquare3Menu(view: SKView) {
        // ITEM BACKDROP
        var lightOrangeSquare3MenuAction: SKAction
        
        // TITLE
        var lightOrangeSquare3TitleBackdropAction: SKAction
        var lightOrangeSquare3TitleLabelAction: SKAction
        
        // ITEM 1
        var lightOrangeSquare3MenuItem1Action: SKAction
        
        var lightOrangeSquare3Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightOrangeSquare3MenuItem1Label1Action: SKAction
        var lightOrangeSquare3MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var lightOrangeSquare3MenuItem2Action: SKAction
        
        var lightOrangeSquare3Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var lightOrangeSquare3MenuItem2Label1Action: SKAction
        var lightOrangeSquare3MenuItem2Label2Action: SKAction
            
        lightOrangeSquare3MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightOrangeSquare3Menu.run(lightOrangeSquare3MenuAction)
        
        lightOrangeSquare3TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightOrangeSquare3TitleBackdrop.run(lightOrangeSquare3TitleBackdropAction)
        
        lightOrangeSquare3TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightOrangeSquare3TitleLabel.run(lightOrangeSquare3TitleLabelAction)
        
        lightOrangeSquare3MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare3MenuItem1.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare3MenuItem1.run(lightOrangeSquare3MenuItem1Action)
        
        lightOrangeSquare3Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare3MenuItem1.frame.size.height), duration: 0.25)
        lightOrangeSquare3Item1Title.run(lightOrangeSquare3Item1TitleAction)
        
        lightOrangeSquare3MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare3MenuItem1.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare3MenuItem1Label1.run(lightOrangeSquare3MenuItem1Label1Action)
        
        lightOrangeSquare3MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare3MenuItem1.frame.size.height / 2 - lightOrangeSquare3MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare3MenuItem1Label2.run(lightOrangeSquare3MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare3Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare3MenuItem1.frame.size.height / 2 - lightOrangeSquare3MenuItem1Label2.frame.size.height * 3))
        
        lightOrangeSquare3MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare3MenuItem2.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare3MenuItem2.run(lightOrangeSquare3MenuItem2Action)
        
        lightOrangeSquare3Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare3MenuItem2.frame.size.height), duration: 0.25)
        lightOrangeSquare3Item2Title.run(lightOrangeSquare3Item2TitleAction)
        
        lightOrangeSquare3MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare3MenuItem2.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare3MenuItem2Label1.run(lightOrangeSquare3MenuItem2Label1Action)
        
        lightOrangeSquare3MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare3MenuItem2.frame.size.height / 2 - lightOrangeSquare3MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare3MenuItem2Label2.run(lightOrangeSquare3MenuItem2Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare3Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare3MenuItem2.frame.size.height / 2 - lightOrangeSquare3MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeLightOrangeSquare3Menu(view: SKView) {
        // MOVE ACTIONS
        var lightOrangeSquare3MenuAction: SKAction // BACKDROP
        var lightOrangeSquare3TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightOrangeSquare3TitleLabelAction: SKAction // TITLE
        var lightOrangeSquare3MenuItem1Action: SKAction // ITEM 1
        var lightOrangeSquare3Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightOrangeSquare3MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare3MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare3MenuItem2Action: SKAction // ITEM 2
        var lightOrangeSquare3Item2TitleAction: SKAction // ITEM 2 TITLE
        var lightOrangeSquare3MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare3MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var lightOrangeSquare3MenuRemove: SKAction // BACKDROP
        var lightOrangeSquare3TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightOrangeSquare3TitleLabelRemove: SKAction // TITLE
        var lightOrangeSquare3MenuItem1Remove: SKAction // ITEM 1
        var lightOrangeSquare3Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightOrangeSquare3MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare3MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare3MenuItem2Remove: SKAction // ITEM 2
        var lightOrangeSquare3Item2TitleRemove: SKAction // ITEM 2 TITLE
        var lightOrangeSquare3MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare3MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightOrangeSquare3MenuSequence: SKAction // BACKDROP
        var lightOrangeSquare3TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightOrangeSquare3TitleLabelSequence: SKAction // TITLE
        var lightOrangeSquare3MenuItem1Sequence: SKAction // ITEM 1
        var lightOrangeSquare3Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightOrangeSquare3MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare3MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare3MenuItem2Sequence: SKAction // ITEM 2
        var lightOrangeSquare3Item2TitleSequence: SKAction // ITEM 2 TITLE
        var lightOrangeSquare3MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare3MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        lightOrangeSquare3MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3MenuRemove = SKAction.removeFromParent()
        lightOrangeSquare3MenuSequence = SKAction.sequence([lightOrangeSquare3MenuAction, lightOrangeSquare3MenuRemove])
        lightOrangeSquare3Menu.run(lightOrangeSquare3MenuSequence)
        
        lightOrangeSquare3TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3TitleBackdropRemove = SKAction.removeFromParent()
        lightOrangeSquare3TitleBackdropSequence = SKAction.sequence([lightOrangeSquare3TitleBackdropAction, lightOrangeSquare3TitleBackdropRemove])
        lightOrangeSquare3TitleBackdrop.run(lightOrangeSquare3TitleBackdropSequence)
        
        lightOrangeSquare3TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3TitleLabelRemove = SKAction.removeFromParent()
        lightOrangeSquare3TitleLabelSequence = SKAction.sequence([lightOrangeSquare3TitleLabelAction, lightOrangeSquare3TitleLabelRemove])
        lightOrangeSquare3TitleLabel.run(lightOrangeSquare3TitleLabelSequence)
        
        lightOrangeSquare3MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3MenuItem1Remove = SKAction.removeFromParent()
        lightOrangeSquare3MenuItem1Sequence = SKAction.sequence([lightOrangeSquare3MenuItem1Action, lightOrangeSquare3MenuItem1Remove])
        lightOrangeSquare3MenuItem1.run(lightOrangeSquare3MenuItem1Sequence)
        
        lightOrangeSquare3Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3Item1TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare3Item1TitleSequence = SKAction.sequence([lightOrangeSquare3Item1TitleAction, lightOrangeSquare3Item1TitleRemove])
        lightOrangeSquare3Item1Title.run(lightOrangeSquare3Item1TitleSequence)
        
        lightOrangeSquare3MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3MenuItem1Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare3MenuItem1Label1Sequence = SKAction.sequence([lightOrangeSquare3MenuItem1Label1Action, lightOrangeSquare3MenuItem1Label1Remove])
        lightOrangeSquare3MenuItem1Label1.run(lightOrangeSquare3MenuItem1Label1Sequence)
        
        lightOrangeSquare3MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3MenuItem1Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare3MenuItem1Label2Sequence = SKAction.sequence([lightOrangeSquare3MenuItem1Label2Action, lightOrangeSquare3MenuItem1Label2Remove])
        lightOrangeSquare3MenuItem1Label2.run(lightOrangeSquare3MenuItem1Label2Sequence)
        
        lightOrangeSquare3MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3MenuItem2Remove = SKAction.removeFromParent()
        lightOrangeSquare3MenuItem2Sequence = SKAction.sequence([lightOrangeSquare3MenuItem2Action, lightOrangeSquare3MenuItem2Remove])
        lightOrangeSquare3MenuItem2.run(lightOrangeSquare3MenuItem2Sequence)
        
        lightOrangeSquare3Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3Item2TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare3Item2TitleSequence = SKAction.sequence([lightOrangeSquare3Item2TitleAction, lightOrangeSquare3Item2TitleRemove])
        lightOrangeSquare3Item2Title.run(lightOrangeSquare3Item2TitleSequence)
        
        lightOrangeSquare3MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3MenuItem2Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare3MenuItem2Label1Sequence = SKAction.sequence([lightOrangeSquare3MenuItem2Label1Action, lightOrangeSquare3MenuItem2Label1Remove])
        lightOrangeSquare3MenuItem2Label1.run(lightOrangeSquare3MenuItem2Label1Sequence)
        
        lightOrangeSquare3MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare3MenuItem2Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare3MenuItem2Label2Sequence = SKAction.sequence([lightOrangeSquare3MenuItem2Label2Action, lightOrangeSquare3MenuItem2Label2Remove])
        lightOrangeSquare3MenuItem2Label2.run(lightOrangeSquare3MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: lightOrangeSquare3Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: lightOrangeSquare3Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // LIGHT Orange SQUARE 4 ------------------- MENU
    
    func createMenuForLightOrangeSquare4(view: SKView) {
        lightOrangeSquare4Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightOrangeSquare4Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare4Menu.setScale(0.42)
        lightOrangeSquare4Menu.zPosition = 3
        lightOrangeSquare4Menu.name = "lightOrangeSquare4Menu"
        addChild(lightOrangeSquare4Menu)
        
        lightOrangeSquare4TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightOrangeSquare4TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare4TitleBackdrop.setScale(0.42)
        lightOrangeSquare4TitleBackdrop.zPosition = 3
        addChild(lightOrangeSquare4TitleBackdrop)
        
        lightOrangeSquare4TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare4TitleLabel.text = "Battleships"
        lightOrangeSquare4TitleLabel.fontSize = 18
        lightOrangeSquare4TitleLabel.fontColor = forbiddenFruit
        lightOrangeSquare4TitleLabel.position = CGPoint(x: lightOrangeSquare4TitleBackdrop.frame.midX, y: lightOrangeSquare4TitleBackdrop.frame.maxY - lightOrangeSquare4TitleLabel.frame.size.height)
        lightOrangeSquare4TitleLabel.zPosition = 4
        addChild(lightOrangeSquare4TitleLabel)
        
        lightOrangeSquare4MenuItem1 = SKSpriteNode(imageNamed: "Ship")
        lightOrangeSquare4MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightOrangeSquare4Menu.position.y)
        lightOrangeSquare4MenuItem1.zPosition = 4
        lightOrangeSquare4MenuItem1.setScale(0.26)
        lightOrangeSquare4MenuItem1.name = "lightOrangeSquare4MenuItem1"
        addChild(lightOrangeSquare4MenuItem1)
        
        lightOrangeSquare4Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare4Item1Title.text = "Destroyer"
        lightOrangeSquare4Item1Title.fontSize = 9
        lightOrangeSquare4Item1Title.fontColor = forbiddenFruit
        lightOrangeSquare4Item1Title.position = CGPoint(x: lightOrangeSquare4MenuItem1.frame.midX, y: lightOrangeSquare4MenuItem1.frame.maxY + lightOrangeSquare4Item1Title.frame.size.height)
        lightOrangeSquare4Item1Title.zPosition = 4
        addChild(lightOrangeSquare4Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightOrangeSquare4MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare4MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightOrangeSquare4MenuItem1Label1.fontSize = 7.5
        lightOrangeSquare4MenuItem1Label1.fontColor = forbiddenFruit
        lightOrangeSquare4MenuItem1Label1.position = CGPoint(x: lightOrangeSquare4MenuItem1.frame.midX, y: lightOrangeSquare4MenuItem1.frame.midY - lightOrangeSquare4MenuItem1.frame.size.height)
        lightOrangeSquare4MenuItem1Label1.zPosition = 4
        addChild(lightOrangeSquare4MenuItem1Label1)
        
        lightOrangeSquare4MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare4MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightOrangeSquare4MenuItem1Label2.fontSize = 7.5
        lightOrangeSquare4MenuItem1Label2.fontColor = forbiddenFruit
        lightOrangeSquare4MenuItem1Label2.position = CGPoint(x: lightOrangeSquare4MenuItem1.frame.midX, y: lightOrangeSquare4MenuItem1.frame.midY - lightOrangeSquare4MenuItem1.frame.size.height - lightOrangeSquare4MenuItem1Label2.frame.size.height)
        lightOrangeSquare4MenuItem1Label2.zPosition = 4
        addChild(lightOrangeSquare4MenuItem1Label2)
        
        lightOrangeSquare4Item1Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare4MenuItem1.frame.midX, y: lightOrangeSquare4MenuItem1.frame.midY - lightOrangeSquare4MenuItem1.frame.size.height * 2))
        addChild(lightOrangeSquare4Item1Label1)
        
        lightOrangeSquare4MenuItem2 = SKSpriteNode(imageNamed: "Ship2")
        lightOrangeSquare4MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: lightOrangeSquare4Menu.position.y)
        lightOrangeSquare4MenuItem2.zPosition = 4
        lightOrangeSquare4MenuItem2.setScale(0.26)
        lightOrangeSquare4MenuItem2.name = "lightOrangeSquare4MenuItem2"
        addChild(lightOrangeSquare4MenuItem2)
        
        lightOrangeSquare4Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare4Item2Title.text = "Navigator"
        lightOrangeSquare4Item2Title.fontSize = 9
        lightOrangeSquare4Item2Title.fontColor = forbiddenFruit
        lightOrangeSquare4Item2Title.position = CGPoint(x: lightOrangeSquare4MenuItem2.frame.midX, y: lightOrangeSquare4MenuItem2.frame.maxY + lightOrangeSquare4Item2Title.frame.size.height)
        lightOrangeSquare4Item2Title.zPosition = 4
        addChild(lightOrangeSquare4Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        lightOrangeSquare4MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare4MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        lightOrangeSquare4MenuItem2Label1.fontSize = 7.5
        lightOrangeSquare4MenuItem2Label1.fontColor = forbiddenFruit
        lightOrangeSquare4MenuItem2Label1.position = CGPoint(x: lightOrangeSquare4MenuItem2.frame.midX, y: lightOrangeSquare4MenuItem2.frame.midY - lightOrangeSquare4MenuItem2.frame.size.height)
        lightOrangeSquare4MenuItem2Label1.zPosition = 4
        addChild(lightOrangeSquare4MenuItem2Label1)
        
        lightOrangeSquare4MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare4MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        lightOrangeSquare4MenuItem2Label2.fontSize = 7.5
        lightOrangeSquare4MenuItem2Label2.fontColor = forbiddenFruit
        lightOrangeSquare4MenuItem2Label2.position = CGPoint(x: lightOrangeSquare4MenuItem2.frame.midX, y: lightOrangeSquare4MenuItem2.frame.midY - lightOrangeSquare4MenuItem2.frame.size.height - lightOrangeSquare4MenuItem2Label2.frame.size.height)
        lightOrangeSquare4MenuItem2Label2.zPosition = 4
        addChild(lightOrangeSquare4MenuItem2Label2)
        
        lightOrangeSquare4Item2Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare4MenuItem2.frame.midX, y: lightOrangeSquare4MenuItem2.frame.midY - lightOrangeSquare4MenuItem2.frame.size.height * 2))
        addChild(lightOrangeSquare4Item2Label1)
    }
    
    func moveLightOrangeSquare4Menu(view: SKView) {
        // ITEM BACKDROP
        var lightOrangeSquare4MenuAction: SKAction
        
        // TITLE
        var lightOrangeSquare4TitleBackdropAction: SKAction
        var lightOrangeSquare4TitleLabelAction: SKAction
        
        // ITEM 1
        var lightOrangeSquare4MenuItem1Action: SKAction
        
        var lightOrangeSquare4Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightOrangeSquare4MenuItem1Label1Action: SKAction
        var lightOrangeSquare4MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var lightOrangeSquare4MenuItem2Action: SKAction
        
        var lightOrangeSquare4Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var lightOrangeSquare4MenuItem2Label1Action: SKAction
        var lightOrangeSquare4MenuItem2Label2Action: SKAction
            
        lightOrangeSquare4MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightOrangeSquare4Menu.run(lightOrangeSquare4MenuAction)
        
        lightOrangeSquare4TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightOrangeSquare4TitleBackdrop.run(lightOrangeSquare4TitleBackdropAction)
        
        lightOrangeSquare4TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightOrangeSquare4TitleLabel.run(lightOrangeSquare4TitleLabelAction)
        
        lightOrangeSquare4MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare4MenuItem1.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare4MenuItem1.run(lightOrangeSquare4MenuItem1Action)
        
        lightOrangeSquare4Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare4MenuItem1.frame.size.height), duration: 0.25)
        lightOrangeSquare4Item1Title.run(lightOrangeSquare4Item1TitleAction)
        
        lightOrangeSquare4MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare4MenuItem1.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare4MenuItem1Label1.run(lightOrangeSquare4MenuItem1Label1Action)
        
        lightOrangeSquare4MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare4MenuItem1.frame.size.height / 2 - lightOrangeSquare4MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare4MenuItem1Label2.run(lightOrangeSquare4MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare4Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare4MenuItem1.frame.size.height / 2 - lightOrangeSquare4MenuItem1Label2.frame.size.height * 3))
        
        lightOrangeSquare4MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare4MenuItem2.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare4MenuItem2.run(lightOrangeSquare4MenuItem2Action)
        
        lightOrangeSquare4Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare4MenuItem2.frame.size.height), duration: 0.25)
        lightOrangeSquare4Item2Title.run(lightOrangeSquare4Item2TitleAction)
        
        lightOrangeSquare4MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare4MenuItem2.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare4MenuItem2Label1.run(lightOrangeSquare4MenuItem2Label1Action)
        
        lightOrangeSquare4MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare4MenuItem2.frame.size.height / 2 - lightOrangeSquare4MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare4MenuItem2Label2.run(lightOrangeSquare4MenuItem2Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare4Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare4MenuItem2.frame.size.height / 2 - lightOrangeSquare4MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeLightOrangeSquare4Menu(view: SKView) {
        // MOVE ACTIONS
        var lightOrangeSquare4MenuAction: SKAction // BACKDROP
        var lightOrangeSquare4TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightOrangeSquare4TitleLabelAction: SKAction // TITLE
        var lightOrangeSquare4MenuItem1Action: SKAction // ITEM 1
        var lightOrangeSquare4Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightOrangeSquare4MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare4MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare4MenuItem2Action: SKAction // ITEM 2
        var lightOrangeSquare4Item2TitleAction: SKAction // ITEM 2 TITLE
        var lightOrangeSquare4MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare4MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var lightOrangeSquare4MenuRemove: SKAction // BACKDROP
        var lightOrangeSquare4TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightOrangeSquare4TitleLabelRemove: SKAction // TITLE
        var lightOrangeSquare4MenuItem1Remove: SKAction // ITEM 1
        var lightOrangeSquare4Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightOrangeSquare4MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare4MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare4MenuItem2Remove: SKAction // ITEM 2
        var lightOrangeSquare4Item2TitleRemove: SKAction // ITEM 2 TITLE
        var lightOrangeSquare4MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare4MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightOrangeSquare4MenuSequence: SKAction // BACKDROP
        var lightOrangeSquare4TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightOrangeSquare4TitleLabelSequence: SKAction // TITLE
        var lightOrangeSquare4MenuItem1Sequence: SKAction // ITEM 1
        var lightOrangeSquare4Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightOrangeSquare4MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare4MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare4MenuItem2Sequence: SKAction // ITEM 2
        var lightOrangeSquare4Item2TitleSequence: SKAction // ITEM 2 TITLE
        var lightOrangeSquare4MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare4MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        lightOrangeSquare4MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4MenuRemove = SKAction.removeFromParent()
        lightOrangeSquare4MenuSequence = SKAction.sequence([lightOrangeSquare4MenuAction, lightOrangeSquare4MenuRemove])
        lightOrangeSquare4Menu.run(lightOrangeSquare4MenuSequence)
        
        lightOrangeSquare4TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4TitleBackdropRemove = SKAction.removeFromParent()
        lightOrangeSquare4TitleBackdropSequence = SKAction.sequence([lightOrangeSquare4TitleBackdropAction, lightOrangeSquare4TitleBackdropRemove])
        lightOrangeSquare4TitleBackdrop.run(lightOrangeSquare4TitleBackdropSequence)
        
        lightOrangeSquare4TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4TitleLabelRemove = SKAction.removeFromParent()
        lightOrangeSquare4TitleLabelSequence = SKAction.sequence([lightOrangeSquare4TitleLabelAction, lightOrangeSquare4TitleLabelRemove])
        lightOrangeSquare4TitleLabel.run(lightOrangeSquare4TitleLabelSequence)
        
        lightOrangeSquare4MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4MenuItem1Remove = SKAction.removeFromParent()
        lightOrangeSquare4MenuItem1Sequence = SKAction.sequence([lightOrangeSquare4MenuItem1Action, lightOrangeSquare4MenuItem1Remove])
        lightOrangeSquare4MenuItem1.run(lightOrangeSquare4MenuItem1Sequence)
        
        lightOrangeSquare4Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4Item1TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare4Item1TitleSequence = SKAction.sequence([lightOrangeSquare4Item1TitleAction, lightOrangeSquare4Item1TitleRemove])
        lightOrangeSquare4Item1Title.run(lightOrangeSquare4Item1TitleSequence)
        
        lightOrangeSquare4MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4MenuItem1Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare4MenuItem1Label1Sequence = SKAction.sequence([lightOrangeSquare4MenuItem1Label1Action, lightOrangeSquare4MenuItem1Label1Remove])
        lightOrangeSquare4MenuItem1Label1.run(lightOrangeSquare4MenuItem1Label1Sequence)
        
        lightOrangeSquare4MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4MenuItem1Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare4MenuItem1Label2Sequence = SKAction.sequence([lightOrangeSquare4MenuItem1Label2Action, lightOrangeSquare4MenuItem1Label2Remove])
        lightOrangeSquare4MenuItem1Label2.run(lightOrangeSquare4MenuItem1Label2Sequence)
        
        lightOrangeSquare4MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4MenuItem2Remove = SKAction.removeFromParent()
        lightOrangeSquare4MenuItem2Sequence = SKAction.sequence([lightOrangeSquare4MenuItem2Action, lightOrangeSquare4MenuItem2Remove])
        lightOrangeSquare4MenuItem2.run(lightOrangeSquare4MenuItem2Sequence)
        
        lightOrangeSquare4Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4Item2TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare4Item2TitleSequence = SKAction.sequence([lightOrangeSquare4Item2TitleAction, lightOrangeSquare4Item2TitleRemove])
        lightOrangeSquare4Item2Title.run(lightOrangeSquare4Item2TitleSequence)
        
        lightOrangeSquare4MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4MenuItem2Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare4MenuItem2Label1Sequence = SKAction.sequence([lightOrangeSquare4MenuItem2Label1Action, lightOrangeSquare4MenuItem2Label1Remove])
        lightOrangeSquare4MenuItem2Label1.run(lightOrangeSquare4MenuItem2Label1Sequence)
        
        lightOrangeSquare4MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare4MenuItem2Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare4MenuItem2Label2Sequence = SKAction.sequence([lightOrangeSquare4MenuItem2Label2Action, lightOrangeSquare4MenuItem2Label2Remove])
        lightOrangeSquare4MenuItem2Label2.run(lightOrangeSquare4MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: lightOrangeSquare4Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: lightOrangeSquare4Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // LIGHT Orange SQUARE 5 ------------------- MENU
    
    func createMenuForLightOrangeSquare5(view: SKView) {
        lightOrangeSquare5Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightOrangeSquare5Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare5Menu.setScale(0.42)
        lightOrangeSquare5Menu.zPosition = 3
        lightOrangeSquare5Menu.name = "lightOrangeSquare5Menu"
        addChild(lightOrangeSquare5Menu)
        
        lightOrangeSquare5TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightOrangeSquare5TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare5TitleBackdrop.setScale(0.42)
        lightOrangeSquare5TitleBackdrop.zPosition = 3
        addChild(lightOrangeSquare5TitleBackdrop)
        
        lightOrangeSquare5TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare5TitleLabel.text = "Battleships"
        lightOrangeSquare5TitleLabel.fontSize = 18
        lightOrangeSquare5TitleLabel.fontColor = forbiddenFruit
        lightOrangeSquare5TitleLabel.position = CGPoint(x: lightOrangeSquare5TitleBackdrop.frame.midX, y: lightOrangeSquare5TitleBackdrop.frame.maxY - lightOrangeSquare5TitleLabel.frame.size.height)
        lightOrangeSquare5TitleLabel.zPosition = 4
        addChild(lightOrangeSquare5TitleLabel)
        
        lightOrangeSquare5MenuItem1 = SKSpriteNode(imageNamed: "Ship")
        lightOrangeSquare5MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightOrangeSquare5Menu.position.y)
        lightOrangeSquare5MenuItem1.zPosition = 4
        lightOrangeSquare5MenuItem1.setScale(0.26)
        lightOrangeSquare5MenuItem1.name = "lightOrangeSquare5MenuItem1"
        addChild(lightOrangeSquare5MenuItem1)
        
        lightOrangeSquare5Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare5Item1Title.text = "Destroyer"
        lightOrangeSquare5Item1Title.fontSize = 9
        lightOrangeSquare5Item1Title.fontColor = forbiddenFruit
        lightOrangeSquare5Item1Title.position = CGPoint(x: lightOrangeSquare5MenuItem1.frame.midX, y: lightOrangeSquare5MenuItem1.frame.maxY + lightOrangeSquare5Item1Title.frame.size.height)
        lightOrangeSquare5Item1Title.zPosition = 4
        addChild(lightOrangeSquare5Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightOrangeSquare5MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare5MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightOrangeSquare5MenuItem1Label1.fontSize = 7.5
        lightOrangeSquare5MenuItem1Label1.fontColor = forbiddenFruit
        lightOrangeSquare5MenuItem1Label1.position = CGPoint(x: lightOrangeSquare5MenuItem1.frame.midX, y: lightOrangeSquare5MenuItem1.frame.midY - lightOrangeSquare5MenuItem1.frame.size.height)
        lightOrangeSquare5MenuItem1Label1.zPosition = 4
        addChild(lightOrangeSquare5MenuItem1Label1)
        
        lightOrangeSquare5MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare5MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightOrangeSquare5MenuItem1Label2.fontSize = 7.5
        lightOrangeSquare5MenuItem1Label2.fontColor = forbiddenFruit
        lightOrangeSquare5MenuItem1Label2.position = CGPoint(x: lightOrangeSquare5MenuItem1.frame.midX, y: lightOrangeSquare5MenuItem1.frame.midY - lightOrangeSquare5MenuItem1.frame.size.height - lightOrangeSquare5MenuItem1Label2.frame.size.height)
        lightOrangeSquare5MenuItem1Label2.zPosition = 4
        addChild(lightOrangeSquare5MenuItem1Label2)
        
        lightOrangeSquare5Item1Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare5MenuItem1.frame.midX, y: lightOrangeSquare5MenuItem1.frame.midY - lightOrangeSquare5MenuItem1.frame.size.height * 2))
        addChild(lightOrangeSquare5Item1Label1)
        
        lightOrangeSquare5MenuItem2 = SKSpriteNode(imageNamed: "Ship2")
        lightOrangeSquare5MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: lightOrangeSquare5Menu.position.y)
        lightOrangeSquare5MenuItem2.zPosition = 4
        lightOrangeSquare5MenuItem2.setScale(0.26)
        lightOrangeSquare5MenuItem2.name = "lightOrangeSquare5MenuItem2"
        addChild(lightOrangeSquare5MenuItem2)
        
        lightOrangeSquare5Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare5Item2Title.text = "Navigator"
        lightOrangeSquare5Item2Title.fontSize = 9
        lightOrangeSquare5Item2Title.fontColor = forbiddenFruit
        lightOrangeSquare5Item2Title.position = CGPoint(x: lightOrangeSquare5MenuItem2.frame.midX, y: lightOrangeSquare5MenuItem2.frame.maxY + lightOrangeSquare5Item2Title.frame.size.height)
        lightOrangeSquare5Item2Title.zPosition = 4
        addChild(lightOrangeSquare5Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        lightOrangeSquare5MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare5MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        lightOrangeSquare5MenuItem2Label1.fontSize = 7.5
        lightOrangeSquare5MenuItem2Label1.fontColor = forbiddenFruit
        lightOrangeSquare5MenuItem2Label1.position = CGPoint(x: lightOrangeSquare5MenuItem2.frame.midX, y: lightOrangeSquare5MenuItem2.frame.midY - lightOrangeSquare5MenuItem2.frame.size.height)
        lightOrangeSquare5MenuItem2Label1.zPosition = 4
        addChild(lightOrangeSquare5MenuItem2Label1)
        
        lightOrangeSquare5MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare5MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        lightOrangeSquare5MenuItem2Label2.fontSize = 7.5
        lightOrangeSquare5MenuItem2Label2.fontColor = forbiddenFruit
        lightOrangeSquare5MenuItem2Label2.position = CGPoint(x: lightOrangeSquare5MenuItem2.frame.midX, y: lightOrangeSquare5MenuItem2.frame.midY - lightOrangeSquare5MenuItem2.frame.size.height - lightOrangeSquare5MenuItem2Label2.frame.size.height)
        lightOrangeSquare5MenuItem2Label2.zPosition = 4
        addChild(lightOrangeSquare5MenuItem2Label2)
        
        lightOrangeSquare5Item2Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare5MenuItem2.frame.midX, y: lightOrangeSquare5MenuItem2.frame.midY - lightOrangeSquare5MenuItem2.frame.size.height * 2))
        addChild(lightOrangeSquare5Item2Label1)
    }
    
    func moveLightOrangeSquare5Menu(view: SKView) {
        // ITEM BACKDROP
        var lightOrangeSquare5MenuAction: SKAction
        
        // TITLE
        var lightOrangeSquare5TitleBackdropAction: SKAction
        var lightOrangeSquare5TitleLabelAction: SKAction
        
        // ITEM 1
        var lightOrangeSquare5MenuItem1Action: SKAction
        
        var lightOrangeSquare5Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightOrangeSquare5MenuItem1Label1Action: SKAction
        var lightOrangeSquare5MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var lightOrangeSquare5MenuItem2Action: SKAction
        
        var lightOrangeSquare5Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var lightOrangeSquare5MenuItem2Label1Action: SKAction
        var lightOrangeSquare5MenuItem2Label2Action: SKAction
            
        lightOrangeSquare5MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightOrangeSquare5Menu.run(lightOrangeSquare5MenuAction)
        
        lightOrangeSquare5TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightOrangeSquare5TitleBackdrop.run(lightOrangeSquare5TitleBackdropAction)
        
        lightOrangeSquare5TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightOrangeSquare5TitleLabel.run(lightOrangeSquare5TitleLabelAction)
        
        lightOrangeSquare5MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare5MenuItem1.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare5MenuItem1.run(lightOrangeSquare5MenuItem1Action)
        
        lightOrangeSquare5Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare5MenuItem1.frame.size.height), duration: 0.25)
        lightOrangeSquare5Item1Title.run(lightOrangeSquare5Item1TitleAction)
        
        lightOrangeSquare5MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare5MenuItem1.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare5MenuItem1Label1.run(lightOrangeSquare5MenuItem1Label1Action)
        
        lightOrangeSquare5MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare5MenuItem1.frame.size.height / 2 - lightOrangeSquare5MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare5MenuItem1Label2.run(lightOrangeSquare5MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare5Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare5MenuItem1.frame.size.height / 2 - lightOrangeSquare5MenuItem1Label2.frame.size.height * 3))
        
        lightOrangeSquare5MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare5MenuItem2.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare5MenuItem2.run(lightOrangeSquare5MenuItem2Action)
        
        lightOrangeSquare5Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare5MenuItem2.frame.size.height), duration: 0.25)
        lightOrangeSquare5Item2Title.run(lightOrangeSquare5Item2TitleAction)
        
        lightOrangeSquare5MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare5MenuItem2.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare5MenuItem2Label1.run(lightOrangeSquare5MenuItem2Label1Action)
        
        lightOrangeSquare5MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare5MenuItem2.frame.size.height / 2 - lightOrangeSquare5MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare5MenuItem2Label2.run(lightOrangeSquare5MenuItem2Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare5Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare5MenuItem2.frame.size.height / 2 - lightOrangeSquare5MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeLightOrangeSquare5Menu(view: SKView) {
        // MOVE ACTIONS
        var lightOrangeSquare5MenuAction: SKAction // BACKDROP
        var lightOrangeSquare5TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightOrangeSquare5TitleLabelAction: SKAction // TITLE
        var lightOrangeSquare5MenuItem1Action: SKAction // ITEM 1
        var lightOrangeSquare5Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightOrangeSquare5MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare5MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare5MenuItem2Action: SKAction // ITEM 2
        var lightOrangeSquare5Item2TitleAction: SKAction // ITEM 2 TITLE
        var lightOrangeSquare5MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare5MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var lightOrangeSquare5MenuRemove: SKAction // BACKDROP
        var lightOrangeSquare5TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightOrangeSquare5TitleLabelRemove: SKAction // TITLE
        var lightOrangeSquare5MenuItem1Remove: SKAction // ITEM 1
        var lightOrangeSquare5Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightOrangeSquare5MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare5MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare5MenuItem2Remove: SKAction // ITEM 2
        var lightOrangeSquare5Item2TitleRemove: SKAction // ITEM 2 TITLE
        var lightOrangeSquare5MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare5MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightOrangeSquare5MenuSequence: SKAction // BACKDROP
        var lightOrangeSquare5TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightOrangeSquare5TitleLabelSequence: SKAction // TITLE
        var lightOrangeSquare5MenuItem1Sequence: SKAction // ITEM 1
        var lightOrangeSquare5Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightOrangeSquare5MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare5MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare5MenuItem2Sequence: SKAction // ITEM 2
        var lightOrangeSquare5Item2TitleSequence: SKAction // ITEM 2 TITLE
        var lightOrangeSquare5MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare5MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        lightOrangeSquare5MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5MenuRemove = SKAction.removeFromParent()
        lightOrangeSquare5MenuSequence = SKAction.sequence([lightOrangeSquare5MenuAction, lightOrangeSquare5MenuRemove])
        lightOrangeSquare5Menu.run(lightOrangeSquare5MenuSequence)
        
        lightOrangeSquare5TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5TitleBackdropRemove = SKAction.removeFromParent()
        lightOrangeSquare5TitleBackdropSequence = SKAction.sequence([lightOrangeSquare5TitleBackdropAction, lightOrangeSquare5TitleBackdropRemove])
        lightOrangeSquare5TitleBackdrop.run(lightOrangeSquare5TitleBackdropSequence)
        
        lightOrangeSquare5TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5TitleLabelRemove = SKAction.removeFromParent()
        lightOrangeSquare5TitleLabelSequence = SKAction.sequence([lightOrangeSquare5TitleLabelAction, lightOrangeSquare5TitleLabelRemove])
        lightOrangeSquare5TitleLabel.run(lightOrangeSquare5TitleLabelSequence)
        
        lightOrangeSquare5MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5MenuItem1Remove = SKAction.removeFromParent()
        lightOrangeSquare5MenuItem1Sequence = SKAction.sequence([lightOrangeSquare5MenuItem1Action, lightOrangeSquare5MenuItem1Remove])
        lightOrangeSquare5MenuItem1.run(lightOrangeSquare5MenuItem1Sequence)
        
        lightOrangeSquare5Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5Item1TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare5Item1TitleSequence = SKAction.sequence([lightOrangeSquare5Item1TitleAction, lightOrangeSquare5Item1TitleRemove])
        lightOrangeSquare5Item1Title.run(lightOrangeSquare5Item1TitleSequence)
        
        lightOrangeSquare5MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5MenuItem1Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare5MenuItem1Label1Sequence = SKAction.sequence([lightOrangeSquare5MenuItem1Label1Action, lightOrangeSquare5MenuItem1Label1Remove])
        lightOrangeSquare5MenuItem1Label1.run(lightOrangeSquare5MenuItem1Label1Sequence)
        
        lightOrangeSquare5MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5MenuItem1Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare5MenuItem1Label2Sequence = SKAction.sequence([lightOrangeSquare5MenuItem1Label2Action, lightOrangeSquare5MenuItem1Label2Remove])
        lightOrangeSquare5MenuItem1Label2.run(lightOrangeSquare5MenuItem1Label2Sequence)
        
        lightOrangeSquare5MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5MenuItem2Remove = SKAction.removeFromParent()
        lightOrangeSquare5MenuItem2Sequence = SKAction.sequence([lightOrangeSquare5MenuItem2Action, lightOrangeSquare5MenuItem2Remove])
        lightOrangeSquare5MenuItem2.run(lightOrangeSquare5MenuItem2Sequence)
        
        lightOrangeSquare5Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5Item2TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare5Item2TitleSequence = SKAction.sequence([lightOrangeSquare5Item2TitleAction, lightOrangeSquare5Item2TitleRemove])
        lightOrangeSquare5Item2Title.run(lightOrangeSquare5Item2TitleSequence)
        
        lightOrangeSquare5MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5MenuItem2Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare5MenuItem2Label1Sequence = SKAction.sequence([lightOrangeSquare5MenuItem2Label1Action, lightOrangeSquare5MenuItem2Label1Remove])
        lightOrangeSquare5MenuItem2Label1.run(lightOrangeSquare5MenuItem2Label1Sequence)
        
        lightOrangeSquare5MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare5MenuItem2Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare5MenuItem2Label2Sequence = SKAction.sequence([lightOrangeSquare5MenuItem2Label2Action, lightOrangeSquare5MenuItem2Label2Remove])
        lightOrangeSquare5MenuItem2Label2.run(lightOrangeSquare5MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: lightOrangeSquare5Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: lightOrangeSquare5Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
    
    // LIGHT Orange SQUARE 6 ------------------- MENU
    
    func createMenuForLightOrangeSquare6(view: SKView) {
        lightOrangeSquare6Menu = SKSpriteNode(imageNamed: "Asset 30")
        lightOrangeSquare6Menu.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare6Menu.setScale(0.42)
        lightOrangeSquare6Menu.zPosition = 3
        lightOrangeSquare6Menu.name = "lightOrangeSquare6Menu"
        addChild(lightOrangeSquare6Menu)
        
        lightOrangeSquare6TitleBackdrop = SKSpriteNode(imageNamed: "Asset 4")
        lightOrangeSquare6TitleBackdrop.position = CGPoint(x: view.bounds.size.width / 2 - labels.cameraOrigin.x, y: view.frame.minY - labels.cameraOrigin.y - 300)
        lightOrangeSquare6TitleBackdrop.setScale(0.42)
        lightOrangeSquare6TitleBackdrop.zPosition = 3
        addChild(lightOrangeSquare6TitleBackdrop)
        
        lightOrangeSquare6TitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare6TitleLabel.text = "Battleships"
        lightOrangeSquare6TitleLabel.fontSize = 18
        lightOrangeSquare6TitleLabel.fontColor = forbiddenFruit
        lightOrangeSquare6TitleLabel.position = CGPoint(x: lightOrangeSquare6TitleBackdrop.frame.midX, y: lightOrangeSquare6TitleBackdrop.frame.maxY - lightOrangeSquare6TitleLabel.frame.size.height)
        lightOrangeSquare6TitleLabel.zPosition = 4
        addChild(lightOrangeSquare6TitleLabel)
        
        lightOrangeSquare6MenuItem1 = SKSpriteNode(imageNamed: "Ship")
        lightOrangeSquare6MenuItem1.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: lightOrangeSquare6Menu.position.y)
        lightOrangeSquare6MenuItem1.zPosition = 4
        lightOrangeSquare6MenuItem1.setScale(0.26)
        lightOrangeSquare6MenuItem1.name = "lightOrangeSquare6MenuItem1"
        addChild(lightOrangeSquare6MenuItem1)
        
        lightOrangeSquare6Item1Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare6Item1Title.text = "Destroyer"
        lightOrangeSquare6Item1Title.fontSize = 9
        lightOrangeSquare6Item1Title.fontColor = forbiddenFruit
        lightOrangeSquare6Item1Title.position = CGPoint(x: lightOrangeSquare6MenuItem1.frame.midX, y: lightOrangeSquare6MenuItem1.frame.maxY + lightOrangeSquare6Item1Title.frame.size.height)
        lightOrangeSquare6Item1Title.zPosition = 4
        addChild(lightOrangeSquare6Item1Title)
        
        // MENU ITEM 1 -------- LABELS
        lightOrangeSquare6MenuItem1Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare6MenuItem1Label1.text = "Cost: \(priceOfMenuItem1)"
        lightOrangeSquare6MenuItem1Label1.fontSize = 7.5
        lightOrangeSquare6MenuItem1Label1.fontColor = forbiddenFruit
        lightOrangeSquare6MenuItem1Label1.position = CGPoint(x: lightOrangeSquare6MenuItem1.frame.midX, y: lightOrangeSquare6MenuItem1.frame.midY - lightOrangeSquare6MenuItem1.frame.size.height)
        lightOrangeSquare6MenuItem1Label1.zPosition = 4
        addChild(lightOrangeSquare6MenuItem1Label1)
        
        lightOrangeSquare6MenuItem1Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare6MenuItem1Label2.text = "Tech: \(techLevelRequirementMenuItem1)"
        lightOrangeSquare6MenuItem1Label2.fontSize = 7.5
        lightOrangeSquare6MenuItem1Label2.fontColor = forbiddenFruit
        lightOrangeSquare6MenuItem1Label2.position = CGPoint(x: lightOrangeSquare6MenuItem1.frame.midX, y: lightOrangeSquare6MenuItem1.frame.midY - lightOrangeSquare6MenuItem1.frame.size.height - lightOrangeSquare6MenuItem1Label2.frame.size.height)
        lightOrangeSquare6MenuItem1Label2.zPosition = 4
        addChild(lightOrangeSquare6MenuItem1Label2)
        
        lightOrangeSquare6Item1Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare6MenuItem1.frame.midX, y: lightOrangeSquare6MenuItem1.frame.midY - lightOrangeSquare6MenuItem1.frame.size.height * 2))
        addChild(lightOrangeSquare6Item1Label1)
        
        lightOrangeSquare6MenuItem2 = SKSpriteNode(imageNamed: "Ship2")
        lightOrangeSquare6MenuItem2.position = CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: lightOrangeSquare6Menu.position.y)
        lightOrangeSquare6MenuItem2.zPosition = 4
        lightOrangeSquare6MenuItem2.setScale(0.26)
        lightOrangeSquare6MenuItem2.name = "lightOrangeSquare6MenuItem2"
        addChild(lightOrangeSquare6MenuItem2)
        
        lightOrangeSquare6Item2Title = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare6Item2Title.text = "Navigator"
        lightOrangeSquare6Item2Title.fontSize = 9
        lightOrangeSquare6Item2Title.fontColor = forbiddenFruit
        lightOrangeSquare6Item2Title.position = CGPoint(x: lightOrangeSquare6MenuItem2.frame.midX, y: lightOrangeSquare6MenuItem2.frame.maxY + lightOrangeSquare6Item2Title.frame.size.height)
        lightOrangeSquare6Item2Title.zPosition = 4
        addChild(lightOrangeSquare6Item2Title)
        
        // MENU ITEM 2 -------- LABELS
        lightOrangeSquare6MenuItem2Label1 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare6MenuItem2Label1.text = "Cost: \(priceOfMenuItem2)"
        lightOrangeSquare6MenuItem2Label1.fontSize = 7.5
        lightOrangeSquare6MenuItem2Label1.fontColor = forbiddenFruit
        lightOrangeSquare6MenuItem2Label1.position = CGPoint(x: lightOrangeSquare6MenuItem2.frame.midX, y: lightOrangeSquare6MenuItem2.frame.midY - lightOrangeSquare6MenuItem2.frame.size.height)
        lightOrangeSquare6MenuItem2Label1.zPosition = 4
        addChild(lightOrangeSquare6MenuItem2Label1)
        
        lightOrangeSquare6MenuItem2Label2 = SKLabelNode(fontNamed: "Forbidden Fruit")
        lightOrangeSquare6MenuItem2Label2.text = "Tech: \(techLevelRequirementMenuItem2)"
        lightOrangeSquare6MenuItem2Label2.fontSize = 7.5
        lightOrangeSquare6MenuItem2Label2.fontColor = forbiddenFruit
        lightOrangeSquare6MenuItem2Label2.position = CGPoint(x: lightOrangeSquare6MenuItem2.frame.midX, y: lightOrangeSquare6MenuItem2.frame.midY - lightOrangeSquare6MenuItem2.frame.size.height - lightOrangeSquare6MenuItem2Label2.frame.size.height)
        lightOrangeSquare6MenuItem2Label2.zPosition = 4
        addChild(lightOrangeSquare6MenuItem2Label2)
        
        lightOrangeSquare6Item2Label1 = createMenuItemLabels(text: "Defense", pos: CGPoint(x: lightOrangeSquare6MenuItem2.frame.midX, y: lightOrangeSquare6MenuItem2.frame.midY - lightOrangeSquare6MenuItem2.frame.size.height * 2))
        addChild(lightOrangeSquare6Item2Label1)
    }
    
    func moveLightOrangeSquare6Menu(view: SKView) {
        // ITEM BACKDROP
        var lightOrangeSquare6MenuAction: SKAction
        
        // TITLE
        var lightOrangeSquare6TitleBackdropAction: SKAction
        var lightOrangeSquare6TitleLabelAction: SKAction
        
        // ITEM 1
        var lightOrangeSquare6MenuItem1Action: SKAction
        
        var lightOrangeSquare6Item1TitleAction: SKAction
        
        // ITEM 1 LABELS
        var lightOrangeSquare6MenuItem1Label1Action: SKAction
        var lightOrangeSquare6MenuItem1Label2Action: SKAction
        
        // ITEM 2
        var lightOrangeSquare6MenuItem2Action: SKAction
        
        var lightOrangeSquare6Item2TitleAction: SKAction
        
        // ITEM 2 LABELS
        var lightOrangeSquare6MenuItem2Label1Action: SKAction
        var lightOrangeSquare6MenuItem2Label2Action: SKAction
            
        lightOrangeSquare6MenuAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y), duration: 0.25)
        lightOrangeSquare6Menu.run(lightOrangeSquare6MenuAction)
        
        lightOrangeSquare6TitleBackdropAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.2), duration: 0.25)
        lightOrangeSquare6TitleBackdrop.run(lightOrangeSquare6TitleBackdropAction)
        
        lightOrangeSquare6TitleLabelAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x, y: view.frame.midY - labels.cameraOrigin.y / 2.1), duration: 0.25)
        lightOrangeSquare6TitleLabel.run(lightOrangeSquare6TitleLabelAction)
        
        lightOrangeSquare6MenuItem1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare6MenuItem1.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare6MenuItem1.run(lightOrangeSquare6MenuItem1Action)
        
        lightOrangeSquare6Item1TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare6MenuItem1.frame.size.height), duration: 0.25)
        lightOrangeSquare6Item1Title.run(lightOrangeSquare6Item1TitleAction)
        
        lightOrangeSquare6MenuItem1Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare6MenuItem1.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare6MenuItem1Label1.run(lightOrangeSquare6MenuItem1Label1Action)
        
        lightOrangeSquare6MenuItem1Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare6MenuItem1.frame.size.height / 2 - lightOrangeSquare6MenuItem1Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare6MenuItem1Label2.run(lightOrangeSquare6MenuItem1Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare6Item1Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x - view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare6MenuItem1.frame.size.height / 2 - lightOrangeSquare6MenuItem1Label2.frame.size.height * 3))
        
        lightOrangeSquare6MenuItem2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare6MenuItem2.frame.size.height / 3), duration: 0.25)
        lightOrangeSquare6MenuItem2.run(lightOrangeSquare6MenuItem2Action)
        
        lightOrangeSquare6Item2TitleAction = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y + lightOrangeSquare6MenuItem2.frame.size.height), duration: 0.25)
        lightOrangeSquare6Item2Title.run(lightOrangeSquare6Item2TitleAction)
        
        lightOrangeSquare6MenuItem2Label1Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare6MenuItem2.frame.size.height / 2), duration: 0.25)
        lightOrangeSquare6MenuItem2Label1.run(lightOrangeSquare6MenuItem2Label1Action)
        
        lightOrangeSquare6MenuItem2Label2Action = SKAction.move(to: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare6MenuItem2.frame.size.height / 2 - lightOrangeSquare6MenuItem2Label1.frame.size.height * 1.1), duration: 0.25)
        lightOrangeSquare6MenuItem2Label2.run(lightOrangeSquare6MenuItem2Label2Action)
        
        moveMenuItemLabels(label: lightOrangeSquare6Item2Label1, pos: CGPoint(x: view.frame.midX - labels.cameraOrigin.x + view.frame.midX / 2.7, y: view.frame.midY - labels.cameraOrigin.y - lightOrangeSquare6MenuItem2.frame.size.height / 2 - lightOrangeSquare6MenuItem2Label2.frame.size.height * 3))
    }
    
    func removeLightOrangeSquare6Menu(view: SKView) {
        // MOVE ACTIONS
        var lightOrangeSquare6MenuAction: SKAction // BACKDROP
        var lightOrangeSquare6TitleBackdropAction: SKAction // TITLE BACKDROP
        var lightOrangeSquare6TitleLabelAction: SKAction // TITLE
        var lightOrangeSquare6MenuItem1Action: SKAction // ITEM 1
        var lightOrangeSquare6Item1TitleAction: SKAction // ITEM 1 TITLE
        var lightOrangeSquare6MenuItem1Label1Action: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare6MenuItem1Label2Action: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare6MenuItem2Action: SKAction // ITEM 2
        var lightOrangeSquare6Item2TitleAction: SKAction // ITEM 2 TITLE
        var lightOrangeSquare6MenuItem2Label1Action: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare6MenuItem2Label2Action: SKAction // ITEM 2 LABEL 2
        
        // REMOVE ACTIONS
        var lightOrangeSquare6MenuRemove: SKAction // BACKDROP
        var lightOrangeSquare6TitleBackdropRemove: SKAction // TITLE BACKDROP
        var lightOrangeSquare6TitleLabelRemove: SKAction // TITLE
        var lightOrangeSquare6MenuItem1Remove: SKAction // ITEM 1
        var lightOrangeSquare6Item1TitleRemove: SKAction // ITEM 1 TITLE
        var lightOrangeSquare6MenuItem1Label1Remove: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare6MenuItem1Label2Remove: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare6MenuItem2Remove: SKAction // ITEM 2
        var lightOrangeSquare6Item2TitleRemove: SKAction // ITEM 2 TITLE
        var lightOrangeSquare6MenuItem2Label1Remove: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare6MenuItem2Label2Remove: SKAction // ITEM 2 LABEL 2
        
        // SEQUENCE ACTIONS
        var lightOrangeSquare6MenuSequence: SKAction // BACKDROP
        var lightOrangeSquare6TitleBackdropSequence: SKAction // TITLE BACKDROP
        var lightOrangeSquare6TitleLabelSequence: SKAction // TITLE
        var lightOrangeSquare6MenuItem1Sequence: SKAction // ITEM 1
        var lightOrangeSquare6Item1TitleSequence: SKAction // ITEM 1 TITLE
        var lightOrangeSquare6MenuItem1Label1Sequence: SKAction // ITEM 1 LABEL 1
        var lightOrangeSquare6MenuItem1Label2Sequence: SKAction // ITEM 1 LABEL 2
        var lightOrangeSquare6MenuItem2Sequence: SKAction // ITEM 2
        var lightOrangeSquare6Item2TitleSequence: SKAction // ITEM 2 TITLE
        var lightOrangeSquare6MenuItem2Label1Sequence: SKAction // ITEM 2 LABEL 1
        var lightOrangeSquare6MenuItem2Label2Sequence: SKAction // ITEM 2 LABEL 2
        
        lightOrangeSquare6MenuAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6MenuRemove = SKAction.removeFromParent()
        lightOrangeSquare6MenuSequence = SKAction.sequence([lightOrangeSquare6MenuAction, lightOrangeSquare6MenuRemove])
        lightOrangeSquare6Menu.run(lightOrangeSquare6MenuSequence)
        
        lightOrangeSquare6TitleBackdropAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6TitleBackdropRemove = SKAction.removeFromParent()
        lightOrangeSquare6TitleBackdropSequence = SKAction.sequence([lightOrangeSquare6TitleBackdropAction, lightOrangeSquare6TitleBackdropRemove])
        lightOrangeSquare6TitleBackdrop.run(lightOrangeSquare6TitleBackdropSequence)
        
        lightOrangeSquare6TitleLabelAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6TitleLabelRemove = SKAction.removeFromParent()
        lightOrangeSquare6TitleLabelSequence = SKAction.sequence([lightOrangeSquare6TitleLabelAction, lightOrangeSquare6TitleLabelRemove])
        lightOrangeSquare6TitleLabel.run(lightOrangeSquare6TitleLabelSequence)
        
        lightOrangeSquare6MenuItem1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6MenuItem1Remove = SKAction.removeFromParent()
        lightOrangeSquare6MenuItem1Sequence = SKAction.sequence([lightOrangeSquare6MenuItem1Action, lightOrangeSquare6MenuItem1Remove])
        lightOrangeSquare6MenuItem1.run(lightOrangeSquare6MenuItem1Sequence)
        
        lightOrangeSquare6Item1TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6Item1TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare6Item1TitleSequence = SKAction.sequence([lightOrangeSquare6Item1TitleAction, lightOrangeSquare6Item1TitleRemove])
        lightOrangeSquare6Item1Title.run(lightOrangeSquare6Item1TitleSequence)
        
        lightOrangeSquare6MenuItem1Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6MenuItem1Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare6MenuItem1Label1Sequence = SKAction.sequence([lightOrangeSquare6MenuItem1Label1Action, lightOrangeSquare6MenuItem1Label1Remove])
        lightOrangeSquare6MenuItem1Label1.run(lightOrangeSquare6MenuItem1Label1Sequence)
        
        lightOrangeSquare6MenuItem1Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6MenuItem1Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare6MenuItem1Label2Sequence = SKAction.sequence([lightOrangeSquare6MenuItem1Label2Action, lightOrangeSquare6MenuItem1Label2Remove])
        lightOrangeSquare6MenuItem1Label2.run(lightOrangeSquare6MenuItem1Label2Sequence)
        
        lightOrangeSquare6MenuItem2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6MenuItem2Remove = SKAction.removeFromParent()
        lightOrangeSquare6MenuItem2Sequence = SKAction.sequence([lightOrangeSquare6MenuItem2Action, lightOrangeSquare6MenuItem2Remove])
        lightOrangeSquare6MenuItem2.run(lightOrangeSquare6MenuItem2Sequence)
        
        lightOrangeSquare6Item2TitleAction = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6Item2TitleRemove = SKAction.removeFromParent()
        lightOrangeSquare6Item2TitleSequence = SKAction.sequence([lightOrangeSquare6Item2TitleAction, lightOrangeSquare6Item2TitleRemove])
        lightOrangeSquare6Item2Title.run(lightOrangeSquare6Item2TitleSequence)
        
        lightOrangeSquare6MenuItem2Label1Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6MenuItem2Label1Remove = SKAction.removeFromParent()
        lightOrangeSquare6MenuItem2Label1Sequence = SKAction.sequence([lightOrangeSquare6MenuItem2Label1Action, lightOrangeSquare6MenuItem2Label1Remove])
        lightOrangeSquare6MenuItem2Label1.run(lightOrangeSquare6MenuItem2Label1Sequence)
        
        lightOrangeSquare6MenuItem2Label2Action = SKAction.moveTo(y: view.frame.minY - labels.cameraOrigin.y - 300, duration: 0.25)
        lightOrangeSquare6MenuItem2Label2Remove = SKAction.removeFromParent()
        lightOrangeSquare6MenuItem2Label2Sequence = SKAction.sequence([lightOrangeSquare6MenuItem2Label2Action, lightOrangeSquare6MenuItem2Label2Remove])
        lightOrangeSquare6MenuItem2Label2.run(lightOrangeSquare6MenuItem2Label2Sequence)
        
        removeMenuItemLabels(label: lightOrangeSquare6Item1Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
        removeMenuItemLabels(label: lightOrangeSquare6Item2Label1, posY: view.frame.minY - labels.cameraOrigin.y - 300)
    }
}
