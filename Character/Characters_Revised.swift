//
//  Characters_Revised.swift
//  mockup2
//
//  Created by Jason Quick on 7/25/23.
//

import Foundation
import SpriteKit

class CharacterSelection: SKNode {
    var characterSelectionTitle: SKSpriteNode!
    var characterSelectionTitleBackdrop: SKSpriteNode!
    
    let characters = CharacterMenu()
    
    var timeRemaining = 10
    var timeRemainingLabel: SKLabelNode!
    
    var greenCheck: SKSpriteNode!
    var greenCheckExists = false
    
    var k: Int!
    var l: Int!
    
    var choseCharacter: Int!
    
    var gameSceneCharacterIcon: SKSpriteNode!
    
    func createSceneTitle(view: SKView) {
        characterSelectionTitle = SKSpriteNode(imageNamed: "Asset 22")
        characterSelectionTitle.setScale(0.5)
        characterSelectionTitle.zPosition = 2
        characterSelectionTitle.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height - view.frame.size.height / 4)
        addChild(characterSelectionTitle)
        
        characterSelectionTitleBackdrop = SKSpriteNode(imageNamed: "Asset 21")
        characterSelectionTitleBackdrop.setScale(0.5)
        characterSelectionTitleBackdrop.zPosition = 1
        characterSelectionTitleBackdrop.position = CGPoint(x: characterSelectionTitle.frame.midX, y: characterSelectionTitle.frame.midY + characterSelectionTitle.frame.size.height / 8)
        addChild(characterSelectionTitleBackdrop)
        
        timeRemainingLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        timeRemainingLabel.text = "\(timeRemaining)"
        timeRemainingLabel.fontSize = 18
        timeRemainingLabel.fontColor = ghostWhite
        timeRemainingLabel.position = CGPoint(x: view.frame.midX, y: characterSelectionTitleBackdrop.frame.minY - timeRemainingLabel.frame.size.height * 2)
        addChild(timeRemainingLabel)
        
        let decrementTimeRemaining = SKAction.run {
            self.timeRemaining -= 1
        }
        let wait = SKAction.wait(forDuration: 1)
        let updateTimeRemaining = SKAction.run {
            self.timeRemainingLabel.text = "\(self.timeRemaining)"
        }
        let timeRemainingSequence = SKAction.sequence([wait, decrementTimeRemaining, updateTimeRemaining])
        let repeatTimeRemaining = SKAction.repeatForever(timeRemainingSequence)
        timeRemainingLabel.run(repeatTimeRemaining)
    }
    
    func createCharacterChoices(view: SKView) {
//        let i = Int.random(in: 1...11)
        let i = 11
        k = i
        switch i {
        case 1:
            characters.createCharacter1(view: view)
            characters.character1.setScale(0.5)
            characters.character1LabelBackdrop.setScale(0.5)
            characters.character1.position = CGPoint(x: view.frame.midX - characters.character1.frame.size.width / 1.5, y: view.frame.midY)
            characters.character1Label.position = CGPoint(x: characters.character1.frame.midX, y: characters.character1.frame.minY - characters.character1Label.frame.size.height * 1.3)
            characters.character1LabelBackdrop.position = CGPoint(x: characters.character1Label.frame.midX, y: characters.character1Label.frame.midY)
        case 2:
            characters.createCharacter2(view: view)
            characters.character2.setScale(0.5)
            characters.character2LabelBackdrop.setScale(0.5)
            characters.character2.position = CGPoint(x: view.frame.midX - characters.character2.frame.size.width / 1.5, y: view.frame.midY)
            characters.character2Label.position = CGPoint(x: characters.character2.frame.midX, y: characters.character2.frame.minY - characters.character2Label.frame.size.height * 1.3)
            characters.character2LabelBackdrop.position = CGPoint(x: characters.character2Label.frame.midX, y: characters.character2Label.frame.midY)
        case 3:
            characters.createCharacter3(view: view)
            characters.character3.setScale(0.5)
            characters.character3LabelBackdrop.setScale(0.5)
            characters.character3.position = CGPoint(x: view.frame.midX - characters.character3.frame.size.width / 1.5, y: view.frame.midY)
            characters.character3Label.position = CGPoint(x: characters.character3.frame.midX, y: characters.character3.frame.minY - characters.character3Label.frame.size.height * 1.3)
            characters.character3LabelBackdrop.position = CGPoint(x: characters.character3Label.frame.midX, y: characters.character3Label.frame.midY)
        case 4:
            characters.createCharacter4(view: view)
            characters.character4.setScale(0.5)
            characters.character4LabelBackdrop.setScale(0.5)
            characters.character4.position = CGPoint(x: view.frame.midX - characters.character4.frame.size.width / 1.5, y: view.frame.midY)
            characters.character4Label.position = CGPoint(x: characters.character4.frame.midX, y: characters.character4.frame.minY - characters.character4Label.frame.size.height * 1.3)
            characters.character4LabelBackdrop.position = CGPoint(x: characters.character4Label.frame.midX, y: characters.character4Label.frame.midY)
        case 5:
            characters.createCharacter5(view: view)
            characters.character5.setScale(0.5)
            characters.character5LabelBackdrop.setScale(0.5)
            characters.character5.position = CGPoint(x: view.frame.midX - characters.character5.frame.size.width / 1.5, y: view.frame.midY)
            characters.character5Label.position = CGPoint(x: characters.character5.frame.midX, y: characters.character5.frame.minY - characters.character5Label.frame.size.height * 1.3)
            characters.character5LabelBackdrop.position = CGPoint(x: characters.character5Label.frame.midX, y: characters.character5Label.frame.midY)
        case 6:
            characters.createCharacter6(view: view)
            characters.character6.setScale(0.5)
            characters.character6LabelBackdrop.setScale(0.5)
            characters.character6.position = CGPoint(x: view.frame.midX - characters.character6.frame.size.width / 1.5, y: view.frame.midY)
            characters.character6Label.position = CGPoint(x: characters.character6.frame.midX, y: characters.character6.frame.minY - characters.character6Label.frame.size.height * 1.3)
            characters.character6LabelBackdrop.position = CGPoint(x: characters.character6Label.frame.midX, y: characters.character6Label.frame.midY)
        case 7:
            characters.createCharacter7(view: view)
            characters.character7.setScale(0.5)
            characters.character7LabelBackdrop.setScale(0.5)
            characters.character7.position = CGPoint(x: view.frame.midX - characters.character7.frame.size.width / 1.5, y: view.frame.midY)
            characters.character7Label.position = CGPoint(x: characters.character7.frame.midX, y: characters.character7.frame.minY - characters.character7Label.frame.size.height * 1.3)
            characters.character7LabelBackdrop.position = CGPoint(x: characters.character7Label.frame.midX, y: characters.character7Label.frame.midY)
        case 8:
            characters.createCharacter8(view: view)
            characters.character8.setScale(0.5)
            characters.character8LabelBackdrop.setScale(0.5)
            characters.character8.position = CGPoint(x: view.frame.midX - characters.character8.frame.size.width / 1.5, y: view.frame.midY)
            characters.character8Label.position = CGPoint(x: characters.character8.frame.midX, y: characters.character8.frame.minY - characters.character8Label.frame.size.height * 1.3)
            characters.character8LabelBackdrop.position = CGPoint(x: characters.character8Label.frame.midX, y: characters.character8Label.frame.midY)
        case 9:
            characters.createCharacter9(view: view)
            characters.character9.setScale(0.5)
            characters.character9LabelBackdrop.setScale(0.5)
            characters.character9.position = CGPoint(x: view.frame.midX - characters.character9.frame.size.width / 1.5, y: view.frame.midY)
            characters.character9Label.position = CGPoint(x: characters.character9.frame.midX, y: characters.character9.frame.minY - characters.character9Label.frame.size.height * 1.3)
            characters.character9LabelBackdrop.position = CGPoint(x: characters.character9Label.frame.midX, y: characters.character9Label.frame.midY)
        case 10:
            characters.createCharacter10(view: view)
            characters.character10.setScale(0.5)
            characters.character10LabelBackdrop.setScale(0.5)
            characters.character10.position = CGPoint(x: view.frame.midX - characters.character10.frame.size.width / 1.5, y: view.frame.midY)
            characters.character10Label.position = CGPoint(x: characters.character10.frame.midX, y: characters.character10.frame.minY - characters.character10Label.frame.size.height * 1.3)
            characters.character10LabelBackdrop.position = CGPoint(x: characters.character10Label.frame.midX, y: characters.character10Label.frame.midY)
        case 11:
            characters.createCharacter11(view: view)
            characters.character11.setScale(0.5)
            characters.character11LabelBackdrop.setScale(0.5)
            characters.character11.position = CGPoint(x: view.frame.midX - characters.character11.frame.size.width / 1.5, y: view.frame.midY)
            characters.character11Label.position = CGPoint(x: characters.character11.frame.midX, y: characters.character11.frame.minY - characters.character11Label.frame.size.height * 1.3)
            characters.character11LabelBackdrop.position = CGPoint(x: characters.character11Label.frame.midX, y: characters.character11Label.frame.midY)
        default:
            break
        }
        
//        let j = Int.random(in: 1...11)
        let j = 3
        l = j
        switch j {
        case 1:
            characters.createCharacter1(view: view)
            characters.character1.setScale(0.5)
            characters.character1LabelBackdrop.setScale(0.5)
            characters.character1.position = CGPoint(x: view.frame.midX + characters.character1.frame.size.width / 1.5, y: view.frame.midY)
            characters.character1Label.position = CGPoint(x: characters.character1.frame.midX, y: characters.character1.frame.minY - characters.character1Label.frame.size.height * 1.3)
            characters.character1LabelBackdrop.position = CGPoint(x: characters.character1Label.frame.midX, y: characters.character1Label.frame.midY)
        case 2:
            characters.createCharacter2(view: view)
            characters.character2.setScale(0.5)
            characters.character2LabelBackdrop.setScale(0.5)
            characters.character2.position = CGPoint(x: view.frame.midX + characters.character2.frame.size.width / 1.5, y: view.frame.midY)
            characters.character2Label.position = CGPoint(x: characters.character2.frame.midX, y: characters.character2.frame.minY - characters.character2Label.frame.size.height * 1.3)
            characters.character2LabelBackdrop.position = CGPoint(x: characters.character2Label.frame.midX, y: characters.character2Label.frame.midY)
        case 3:
            characters.createCharacter3(view: view)
            characters.character3.setScale(0.5)
            characters.character3LabelBackdrop.setScale(0.5)
            characters.character3.position = CGPoint(x: view.frame.midX + characters.character3.frame.size.width / 1.5, y: view.frame.midY)
            characters.character3Label.position = CGPoint(x: characters.character3.frame.midX, y: characters.character3.frame.minY - characters.character3Label.frame.size.height * 1.3)
            characters.character3LabelBackdrop.position = CGPoint(x: characters.character3Label.frame.midX, y: characters.character3Label.frame.midY)
        case 4:
            characters.createCharacter4(view: view)
            characters.character4.setScale(0.5)
            characters.character4LabelBackdrop.setScale(0.5)
            characters.character4.position = CGPoint(x: view.frame.midX + characters.character4.frame.size.width / 1.5, y: view.frame.midY)
            characters.character4Label.position = CGPoint(x: characters.character4.frame.midX, y: characters.character4.frame.minY - characters.character4Label.frame.size.height * 1.3)
            characters.character4LabelBackdrop.position = CGPoint(x: characters.character4Label.frame.midX, y: characters.character4Label.frame.midY)
        case 5:
            characters.createCharacter5(view: view)
            characters.character5.setScale(0.5)
            characters.character5LabelBackdrop.setScale(0.5)
            characters.character5.position = CGPoint(x: view.frame.midX + characters.character5.frame.size.width / 1.5, y: view.frame.midY)
            characters.character5Label.position = CGPoint(x: characters.character5.frame.midX, y: characters.character5.frame.minY - characters.character5Label.frame.size.height * 1.3)
            characters.character5LabelBackdrop.position = CGPoint(x: characters.character5Label.frame.midX, y: characters.character5Label.frame.midY)
        case 6:
            characters.createCharacter6(view: view)
            characters.character6.setScale(0.5)
            characters.character6LabelBackdrop.setScale(0.5)
            characters.character6.position = CGPoint(x: view.frame.midX + characters.character6.frame.size.width / 1.5, y: view.frame.midY)
            characters.character6Label.position = CGPoint(x: characters.character6.frame.midX, y: characters.character6.frame.minY - characters.character6Label.frame.size.height * 1.3)
            characters.character6LabelBackdrop.position = CGPoint(x: characters.character6Label.frame.midX, y: characters.character6Label.frame.midY)
        case 7:
            characters.createCharacter7(view: view)
            characters.character7.setScale(0.5)
            characters.character7LabelBackdrop.setScale(0.5)
            characters.character7.position = CGPoint(x: view.frame.midX + characters.character7.frame.size.width / 1.5, y: view.frame.midY)
            characters.character7Label.position = CGPoint(x: characters.character7.frame.midX, y: characters.character7.frame.minY - characters.character7Label.frame.size.height * 1.3)
            characters.character7LabelBackdrop.position = CGPoint(x: characters.character7Label.frame.midX, y: characters.character7Label.frame.midY)
        case 8:
            characters.createCharacter8(view: view)
            characters.character8.setScale(0.5)
            characters.character8LabelBackdrop.setScale(0.5)
            characters.character8.position = CGPoint(x: view.frame.midX + characters.character8.frame.size.width / 1.5, y: view.frame.midY)
            characters.character8Label.position = CGPoint(x: characters.character8.frame.midX, y: characters.character8.frame.minY - characters.character8Label.frame.size.height * 1.3)
            characters.character8LabelBackdrop.position = CGPoint(x: characters.character8Label.frame.midX, y: characters.character8Label.frame.midY)
        case 9:
            characters.createCharacter9(view: view)
            characters.character9.setScale(0.5)
            characters.character9LabelBackdrop.setScale(0.5)
            characters.character9.position = CGPoint(x: view.frame.midX + characters.character9.frame.size.width / 1.5, y: view.frame.midY)
            characters.character9Label.position = CGPoint(x: characters.character9.frame.midX, y: characters.character9.frame.minY - characters.character9Label.frame.size.height * 1.3)
            characters.character9LabelBackdrop.position = CGPoint(x: characters.character9Label.frame.midX, y: characters.character9Label.frame.midY)
        case 10:
            characters.createCharacter10(view: view)
            characters.character10.setScale(0.5)
            characters.character10LabelBackdrop.setScale(0.5)
            characters.character10.position = CGPoint(x: view.frame.midX + characters.character10.frame.size.width / 1.5, y: view.frame.midY)
            characters.character10Label.position = CGPoint(x: characters.character10.frame.midX, y: characters.character10.frame.minY - characters.character10Label.frame.size.height * 1.3)
            characters.character10LabelBackdrop.position = CGPoint(x: characters.character10Label.frame.midX, y: characters.character10Label.frame.midY)
        case 11:
            characters.createCharacter11(view: view)
            characters.character11.setScale(0.5)
            characters.character11LabelBackdrop.setScale(0.5)
            characters.character11.position = CGPoint(x: view.frame.midX + characters.character11.frame.size.width / 1.5, y: view.frame.midY)
            characters.character11Label.position = CGPoint(x: characters.character11.frame.midX, y: characters.character11.frame.minY - characters.character11Label.frame.size.height * 1.3)
            characters.character11LabelBackdrop.position = CGPoint(x: characters.character11Label.frame.midX, y: characters.character11Label.frame.midY)
        default:
            break
        }
        
        if j == i {
            characters.removeAllChildren()
            createCharacterChoices(view: view)
        }
    }
    func createGreenCheck(position: SKSpriteNode) {
        greenCheck = SKSpriteNode(imageNamed: "green_Check")
        greenCheck.zPosition = 3
        greenCheck.size = CGSize(width: greenCheck.size.width / 3, height: greenCheck.size.height / 3)
        greenCheck.position = CGPoint(x: position.frame.maxX - greenCheck.frame.size.width, y: position.frame.minY + greenCheck.frame.size.height)
        addChild(greenCheck)
        
        greenCheckExists = true
    }
    func gameSceneCharacterDisplay(position: CGPoint) {
        switch choseCharacter {
        case 1:
            createGameSceneCharacterIcon(imageNamed: "Character 1-3", pos: position)
        case 2:
            createGameSceneCharacterIcon(imageNamed: "Character 2-3", pos: position)
        case 3:
            createGameSceneCharacterIcon(imageNamed: "Character 3-3", pos: position)
        case 4:
            createGameSceneCharacterIcon(imageNamed: "Character 4-3", pos: position)
        case 5:
            createGameSceneCharacterIcon(imageNamed: "Character 5-3", pos: position)
        case 6:
            createGameSceneCharacterIcon(imageNamed: "Character 6-3", pos: position)
        case 7:
            createGameSceneCharacterIcon(imageNamed: "Character 7-3", pos: position)
        case 8:
            createGameSceneCharacterIcon(imageNamed: "Character 8-3", pos: position)
        case 9:
            createGameSceneCharacterIcon(imageNamed: "Character 9-3", pos: position)
        case 10:
            createGameSceneCharacterIcon(imageNamed: "Character 10-3", pos: position)
        case 11:
            createGameSceneCharacterIcon(imageNamed: "Character 11-3", pos: position)
        default:
            break
        }
    }
    func createGameSceneCharacterIcon(imageNamed: String, pos: CGPoint) {
        gameSceneCharacterIcon = SKSpriteNode(imageNamed: imageNamed)
        gameSceneCharacterIcon.setScale(0.38)
        gameSceneCharacterIcon.position = pos
        gameSceneCharacterIcon.name = "\(imageNamed)"
        addChild(gameSceneCharacterIcon)
    }
    func characterSelectionLogic(nodeTouched: SKNode) {
        if nodeTouched.name == "Character 1" {
            choseCharacter = 1
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character1)
        } else if nodeTouched.name == "Character 2" {
            choseCharacter = 2
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character2)
        } else if nodeTouched.name == "Character 3" {
            choseCharacter = 3
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character3)
        } else if nodeTouched.name == "Character 4" {
            choseCharacter = 4
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character4)
        } else if nodeTouched.name == "Character 5" {
            choseCharacter = 5
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character5)
        } else if nodeTouched.name == "Character 6" {
            choseCharacter = 6
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character6)
        } else if nodeTouched.name == "Character 7" {
            choseCharacter = 7
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character7)
        } else if nodeTouched.name == "Character 8" {
            choseCharacter = 8
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character8)
        } else if nodeTouched.name == "Character 9" {
            choseCharacter = 9
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character9)
        } else if nodeTouched.name == "Character 10" {
            choseCharacter = 10
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character10)
        } else if nodeTouched.name == "Character 11" {
            choseCharacter = 11
            if greenCheckExists {
                greenCheck.removeFromParent()
            }
            createGreenCheck(position: characters.character11)
        }
    }
}
