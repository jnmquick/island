//
//  CharacterMenu.swift
//  mockup2
//
//  Created by Jason Quick on 7/24/23.
//

import Foundation
import SpriteKit

class CharacterMenu: SKNode {
    var characterTitle: SKSpriteNode!
    var characterTitleLabel: SKLabelNode!
    
    var character1: SKSpriteNode!
    var character1Label: SKLabelNode!
    var character1LabelBackdrop: SKSpriteNode!
    
    var character2: SKSpriteNode!
    var character2Label: SKLabelNode!
    var character2LabelBackdrop: SKSpriteNode!
    
    var character3: SKSpriteNode!
    var character3Label: SKLabelNode!
    var character3LabelBackdrop: SKSpriteNode!
    
    var character4: SKSpriteNode!
    var character4Label: SKLabelNode!
    var character4LabelBackdrop: SKSpriteNode!
    
    var character5: SKSpriteNode!
    var character5Label: SKLabelNode!
    var character5LabelBackdrop: SKSpriteNode!
    
    var character6: SKSpriteNode!
    var character6Label: SKLabelNode!
    var character6LabelBackdrop: SKSpriteNode!
    
    var character7: SKSpriteNode!
    var character7Label: SKLabelNode!
    var character7LabelBackdrop: SKSpriteNode!
    
    var character8: SKSpriteNode!
    var character8Label: SKLabelNode!
    var character8LabelBackdrop: SKSpriteNode!
    
    var character9: SKSpriteNode!
    var character9Label: SKLabelNode!
    var character9LabelBackdrop: SKSpriteNode!
    
    var character10: SKSpriteNode!
    var character10Label: SKLabelNode!
    var character10LabelBackdrop: SKSpriteNode!
    
    var character11: SKSpriteNode!
    var character11Label: SKLabelNode!
    var character11LabelBackdrop: SKSpriteNode!
    
    func createCharacterHeadline(view: SKView) {
        characterTitle = SKSpriteNode(imageNamed: "Asset 21")
        characterTitle.setScale(0.4)
        characterTitle.zPosition = 1
        characterTitle.position = CGPoint(x: view.frame.midX, y: view.frame.maxY - view.frame.size.height / 5)
        addChild(characterTitle)
        
        characterTitleLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        characterTitleLabel.text = "Characters"
        characterTitleLabel.fontSize = 20
        characterTitleLabel.fontColor = forbiddenFruit
        characterTitleLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        characterTitleLabel.position = CGPoint(x: characterTitle.frame.midX, y: characterTitle.frame.midY)
        characterTitleLabel.zPosition = 2
        addChild(characterTitleLabel)
    }
    
    func createCharacter1(view: SKView) {
        character1 = SKSpriteNode(imageNamed: "Character 1")
        character1.setScale(0.4)
        character1.zPosition = 0
        character1.position = CGPoint(x: view.frame.minX + view.frame.size.width / 6, y: view.frame.maxY - view.frame.size.height / 3)
        character1.name = "Character 1"
        addChild(character1)
        
        character1Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character1Label.text = "Silver"
        character1Label.fontSize = 7.5
        character1Label.fontColor = forbiddenFruit
        character1Label.position = CGPoint(x: character1.frame.midX, y: character1.frame.minY - character1Label.frame.size.height * 1.3)
        character1Label.zPosition = 2
        addChild(character1Label)
        
        character1LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character1LabelBackdrop.setScale(0.4)
        character1LabelBackdrop.zPosition = 1
        character1LabelBackdrop.position = CGPoint(x: character1Label.frame.midX, y: character1Label.frame.midY)
        addChild(character1LabelBackdrop)
    }
    
    func createCharacter2(view: SKView) {
        character2 = SKSpriteNode(imageNamed: "Character 2")
        character2.setScale(0.4)
        character2.zPosition = 0
        character2.position = CGPoint(x: view.frame.midX, y: view.frame.maxY - view.frame.size.height / 3)
        character2.name = "Character 2"
        addChild(character2)
        
        character2Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character2Label.text = "Sasquatch"
        character2Label.fontSize = 7.5
        character2Label.fontColor = forbiddenFruit
        character2Label.position = CGPoint(x: character2.frame.midX, y: character2.frame.minY - character2Label.frame.size.height * 1.3)
        character2Label.zPosition = 2
        addChild(character2Label)
        
        character2LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character2LabelBackdrop.setScale(0.4)
        character2LabelBackdrop.zPosition = 1
        character2LabelBackdrop.position = CGPoint(x: character2Label.frame.midX, y: character2Label.frame.midY)
        addChild(character2LabelBackdrop)
    }
    
    func createCharacter3(view: SKView) {
        character3 = SKSpriteNode(imageNamed: "Character 3")
        character3.setScale(0.4)
        character3.zPosition = 0
        character3.position = CGPoint(x: view.frame.maxX - view.frame.size.width / 6, y: view.frame.maxY - view.frame.size.height / 3)
        character3.name = "Character 3"
        addChild(character3)
        
        character3Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character3Label.text = "Zenabell"
        character3Label.fontSize = 7.5
        character3Label.fontColor = forbiddenFruit
        character3Label.position = CGPoint(x: character3.frame.midX, y: character3.frame.minY - character3Label.frame.size.height * 1.3)
        character3Label.zPosition = 2
        addChild(character3Label)
        
        character3LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character3LabelBackdrop.setScale(0.4)
        character3LabelBackdrop.zPosition = 1
        character3LabelBackdrop.position = CGPoint(x: character3Label.frame.midX, y: character3Label.frame.midY)
        addChild(character3LabelBackdrop)
    }
    
    func createCharacter4(view: SKView) {
        character4 = SKSpriteNode(imageNamed: "Character 4")
        character4.setScale(0.4)
        character4.zPosition = 0
        character4.position = CGPoint(x: view.frame.minX + view.frame.size.width / 6, y: view.frame.maxY - view.frame.size.height / 2)
        character4.name = "Character 4"
        addChild(character4)
        
        character4Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character4Label.text = "Grizzly"
        character4Label.fontSize = 7.5
        character4Label.fontColor = forbiddenFruit
        character4Label.position = CGPoint(x: character4.frame.midX, y: character4.frame.minY - character4Label.frame.size.height * 1.3)
        character4Label.zPosition = 2
        addChild(character4Label)
        
        character4LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character4LabelBackdrop.setScale(0.4)
        character4LabelBackdrop.zPosition = 1
        character4LabelBackdrop.position = CGPoint(x: character4Label.frame.midX, y: character4Label.frame.midY)
        addChild(character4LabelBackdrop)
    }
    
    func createCharacter5(view: SKView) {
        character5 = SKSpriteNode(imageNamed: "Character 5")
        character5.setScale(0.4)
        character5.zPosition = 0
        character5.position = CGPoint(x: view.frame.midX, y: view.frame.maxY - view.frame.size.height / 2)
        character5.name = "Character 5"
        addChild(character5)
        
        character5Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character5Label.text = "Bad Beard"
        character5Label.fontSize = 7.5
        character5Label.fontColor = forbiddenFruit
        character5Label.position = CGPoint(x: character5.frame.midX, y: character5.frame.minY - character5Label.frame.size.height * 1.3)
        character5Label.zPosition = 2
        addChild(character5Label)
        
        character5LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character5LabelBackdrop.setScale(0.4)
        character5LabelBackdrop.zPosition = 1
        character5LabelBackdrop.position = CGPoint(x: character5Label.frame.midX, y: character5Label.frame.midY)
        addChild(character5LabelBackdrop)
    }
    
    func createCharacter6(view: SKView) {
        character6 = SKSpriteNode(imageNamed: "Character 6")
        character6.setScale(0.4)
        character6.zPosition = 0
        character6.position = CGPoint(x: view.frame.maxX - view.frame.size.width / 6, y: view.frame.maxY - view.frame.size.height / 2)
        character6.name = "Character 6"
        addChild(character6)
        
        character6Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character6Label.text = "Dusty"
        character6Label.fontSize = 7.5
        character6Label.fontColor = forbiddenFruit
        character6Label.position = CGPoint(x: character6.frame.midX, y: character6.frame.minY - character6Label.frame.size.height * 1.3)
        character6Label.zPosition = 2
        addChild(character6Label)
        
        character6LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character6LabelBackdrop.setScale(0.4)
        character6LabelBackdrop.zPosition = 1
        character6LabelBackdrop.position = CGPoint(x: character6Label.frame.midX, y: character6Label.frame.midY)
        addChild(character6LabelBackdrop)
    }
    
    func createCharacter7(view: SKView) {
        character7 = SKSpriteNode(imageNamed: "Character 7")
        character7.setScale(0.4)
        character7.zPosition = 0
        character7.position = CGPoint(x: view.frame.minX + view.frame.size.width / 6, y: view.frame.maxY - view.frame.size.height / 1.5)
        character7.name = "Character 7"
        addChild(character7)
        
        character7Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character7Label.text = "Androlie"
        character7Label.fontSize = 7.5
        character7Label.fontColor = forbiddenFruit
        character7Label.position = CGPoint(x: character7.frame.midX, y: character7.frame.minY - character7Label.frame.size.height * 1.3)
        character7Label.zPosition = 2
        addChild(character7Label)
        
        character7LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character7LabelBackdrop.setScale(0.4)
        character7LabelBackdrop.zPosition = 1
        character7LabelBackdrop.position = CGPoint(x: character7Label.frame.midX, y: character7Label.frame.midY)
        addChild(character7LabelBackdrop)
    }
    
    func createCharacter8(view: SKView) {
        character8 = SKSpriteNode(imageNamed: "Character 8")
        character8.setScale(0.4)
        character8.zPosition = 0
        character8.position = CGPoint(x: view.frame.midX, y: view.frame.maxY - view.frame.size.height / 1.5)
        character8.name = "Character 8"
        addChild(character8)
        
        character8Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character8Label.text = "Chop-Pan"
        character8Label.fontSize = 7.5
        character8Label.fontColor = forbiddenFruit
        character8Label.position = CGPoint(x: character8.frame.midX, y: character8.frame.minY - character8Label.frame.size.height * 1.3)
        character8Label.zPosition = 2
        addChild(character8Label)
        
        character8LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character8LabelBackdrop.setScale(0.4)
        character8LabelBackdrop.zPosition = 1
        character8LabelBackdrop.position = CGPoint(x: character8Label.frame.midX, y: character8Label.frame.midY)
        addChild(character8LabelBackdrop)
    }
    
    func createCharacter9(view: SKView) {
        character9 = SKSpriteNode(imageNamed: "Character 9")
        character9.setScale(0.4)
        character9.zPosition = 0
        character9.position = CGPoint(x: view.frame.maxX - view.frame.size.width / 6, y: view.frame.maxY - view.frame.size.height / 1.5)
        character9.name = "Character 9"
        addChild(character9)
        
        character9Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character9Label.text = "G Sauce"
        character9Label.fontSize = 7.5
        character9Label.fontColor = forbiddenFruit
        character9Label.position = CGPoint(x: character9.frame.midX, y: character9.frame.minY - character9Label.frame.size.height * 1.3)
        character9Label.zPosition = 2
        addChild(character9Label)
        
        character9LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character9LabelBackdrop.setScale(0.4)
        character9LabelBackdrop.zPosition = 1
        character9LabelBackdrop.position = CGPoint(x: character9Label.frame.midX, y: character9Label.frame.midY)
        addChild(character9LabelBackdrop)
    }
    
    func createCharacter10(view: SKView) {
        character10 = SKSpriteNode(imageNamed: "Character 10")
        character10.setScale(0.4)
        character10.zPosition = 0
        character10.position = CGPoint(x: view.frame.minX + view.frame.size.width / 6, y: view.frame.maxY - view.frame.size.height / 1.2)
        character10.name = "Character 10"
        addChild(character10)
        
        character10Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character10Label.text = "Nibiru"
        character10Label.fontSize = 7.5
        character10Label.fontColor = forbiddenFruit
        character10Label.position = CGPoint(x: character10.frame.midX, y: character10.frame.minY - character10Label.frame.size.height * 1.3)
        character10Label.zPosition = 2
        addChild(character10Label)
        
        character10LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character10LabelBackdrop.setScale(0.4)
        character10LabelBackdrop.zPosition = 1
        character10LabelBackdrop.position = CGPoint(x: character10Label.frame.midX, y: character10Label.frame.midY)
        addChild(character10LabelBackdrop)
    }
    
    func createCharacter11(view: SKView) {
        character11 = SKSpriteNode(imageNamed: "Character 11")
        character11.setScale(0.4)
        character11.zPosition = 0
        character11.position = CGPoint(x: view.frame.midX, y: view.frame.maxY - view.frame.size.height / 1.2)
        character11.name = "Character 11"
        addChild(character11)
        
        character11Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character11Label.text = "Brittany"
        character11Label.fontSize = 7.5
        character11Label.fontColor = forbiddenFruit
        character11Label.position = CGPoint(x: character11.frame.midX, y: character11.frame.minY - character11Label.frame.size.height * 1.3)
        character11Label.zPosition = 2
        addChild(character11Label)
        
        character11LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character11LabelBackdrop.setScale(0.4)
        character11LabelBackdrop.zPosition = 1
        character11LabelBackdrop.position = CGPoint(x: character11Label.frame.midX, y: character11Label.frame.midY)
        addChild(character11LabelBackdrop)
    }
}
