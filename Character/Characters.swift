//
//  Characters.swift
//  mockup2
//
//  Created by Jason Quick on 7/4/23.
//

import Foundation
import SpriteKit

class Characters: SKNode {
    
//    var characterSelectionTitle: SKLabelNode!
    var characterSelectionTitle: SKSpriteNode!
    var characterSelectionTitleBackdrop: SKSpriteNode!
    var characterSection1: SKLabelNode!
    var characterSection2: SKLabelNode!
    var section1Box: SKSpriteNode!
    var section2Box: SKSpriteNode!
    var readyButton: SKSpriteNode!
    var readyButtonText: SKLabelNode!
    
    var greenCheck: SKSpriteNode!
    
    var characterSelectError: SKSpriteNode!
//    var errorBackdrop: SKShapeNode!
    
    var character1: SKSpriteNode!
    var character2: SKSpriteNode!
    var character3: SKSpriteNode!
    
    var character1Backdrop: SKShapeNode!
    var character2Backdrop: SKShapeNode!
    var character3Backdrop: SKShapeNode!
    
    var character1Icon: SKSpriteNode!
    var character2Icon: SKSpriteNode!
    var character3Icon: SKSpriteNode!
    
    var character1Label: SKLabelNode!
    var character2Label: SKLabelNode!
    var character3Label: SKLabelNode!
    
    var character1LabelBackdrop: SKSpriteNode!
    var character2LabelBackdrop: SKSpriteNode!
    var character3LabelBackdrop: SKSpriteNode!
    
    var menuBackdrop: SKSpriteNode!
    var menuBackground: SKSpriteNode!
    var character1MenuImage: SKSpriteNode!
    var character1ImageBackdrop: SKSpriteNode!
    var character2MenuImage: SKSpriteNode!
    var character2ImageBackdrop: SKSpriteNode!
    var character3MenuImage: SKSpriteNode!
    var character3ImageBackdrop: SKSpriteNode!
    var abilityLabels: [SKLabelNode]!
    var characterNameLabel: SKLabelNode!
    var characterAbilityLabel: SKLabelNode!
    var characterSelectButton: SKSpriteNode!
    var selectButtonText: SKLabelNode!
    
    var gameSceneCharacter: SKSpriteNode!
    var gameSceneCharacterBackdrop: SKShapeNode!
    
    func createCharacterSelectionTitle(view: SKView) {
//        characterSelectionTitle = SKLabelNode(fontNamed: "Forbidden Fruit")
//        characterSelectionTitle.text = "Character Selection"
//        characterSelectionTitle.fontSize = 20
//        characterSelectionTitle.fontColor = ghostWhite
//        characterSelectionTitle.zPosition = 2
//        characterSelectionTitle.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height * 0.855)
//        addChild(characterSelectionTitle)
        
        characterSelectionTitle = SKSpriteNode(imageNamed: "Asset 22")
        characterSelectionTitle.setScale(0.5)
        characterSelectionTitle.zPosition = 2
        characterSelectionTitle.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height * 0.855)
        addChild(characterSelectionTitle)
        
//        characterSelectionTitleBackdrop = SKShapeNode(rectOf: CGSize(width: characterSelectionTitle.frame.size.width * 1.2, height: characterSelectionTitle.frame.size.height * 1.1))
//        characterSelectionTitleBackdrop.fillColor = eerieBlack
//        characterSelectionTitleBackdrop.strokeColor = SKColor.clear
        characterSelectionTitleBackdrop = SKSpriteNode(imageNamed: "Asset 21")
        characterSelectionTitleBackdrop.setScale(0.5)
        characterSelectionTitleBackdrop.zPosition = 1
        characterSelectionTitleBackdrop.position = CGPoint(x: characterSelectionTitle.frame.midX, y: characterSelectionTitle.frame.midY + characterSelectionTitle.frame.size.height / 8)
        addChild(characterSelectionTitleBackdrop)
        
//        characterSection1 = SKLabelNode(fontNamed: "Forbidden Fruit")
//        characterSection1.text = "Section One"
//        characterSection1.fontSize = 8
//        characterSection1.fontColor = ghostWhite
//        characterSection1.zPosition = 1
//        characterSection1.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
//        characterSection1.position = CGPoint(x: view.frame.size.width / 6, y: view.frame.size.height - view.frame.size.height / 4)
//        addChild(characterSection1)
        
//        section1Box = SKShapeNode(rectOf: CGSize(width: view.frame.size.width * 1.2, height: character1Backdrop.frame.size.height * 1.5))
//        section1Box.fillColor = SKColor.clear
//        section1Box.strokeColor = eerieBlack
//        section1Box.lineWidth = 2
//        section1Box = SKSpriteNode(imageNamed: "Asset 11")
//        section1Box.setScale(0.5)
//        section1Box.zPosition = 0
//        section1Box.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height - characterSelectionTitleBackdrop.size.height * 1.8)
//        addChild(section1Box)
        
//        characterSection2 = SKLabelNode(fontNamed: "Forbidden Fruit")
//        characterSection2.text = "Section Two"
//        characterSection2.fontSize = 8
//        characterSection2.fontColor = ghostWhite
//        characterSection2.zPosition = 1
//        characterSection2.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
//        characterSection2.position = CGPoint(x: view.frame.size.width / 6, y: view.frame.size.height - view.frame.size.height / 3 - character1Backdrop.frame.size.height * 1.25)
//        addChild(characterSection2)
        
//        section2Box = SKSpriteNode(imageNamed: "Asset 12")
//        section2Box.setScale(0.5)
//        section2Box.zPosition = 0
//        section2Box.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height / 2)
//        addChild(section2Box)
        
//        readyButtonText = SKLabelNode(fontNamed: "BebasNeue-Regular")
//        readyButtonText.text = "Ready"
//        readyButtonText.fontSize = 40
//        readyButtonText.fontColor = ghostWhite
//        readyButtonText.zPosition = 2
//        readyButtonText.position = CGPoint(x: view.frame.size.width / 2 + view.frame.size.width / 3, y: view.frame.size.height * 0.075)
//        readyButtonText.name = "ready"
//        addChild(readyButtonText)
        
//        readyButton = SKShapeNode(rectOf: CGSize(width: readyButtonText.frame.size.width * 1.2, height: readyButtonText.frame.size.height * 1.2))
//        readyButton.fillColor = eerieBlack
//        readyButton.strokeColor = SKColor.clear
        readyButton = SKSpriteNode(imageNamed: "Asset 20")
        readyButton.setScale(0.4)
        readyButton.zPosition = 1
        readyButton.position = CGPoint(x: view.frame.size.width / 2 + view.frame.size.width / 4, y: view.frame.size.height * 0.09)
//        readyButton.position = CGPoint(x: readyButtonText.frame.midX, y: readyButtonText.frame.midY)
        readyButton.name = "ready"
        addChild(readyButton)
    }
    
    func warnPlayerToSelect(view: SKView) {
        var errorFadeIn: SKAction
        errorFadeIn = SKAction.fadeAlpha(to: 1.0, duration: 0.75)
        var errorFadeOut: SKAction
        errorFadeOut = SKAction.fadeAlpha(to: 0.25, duration: 0.75)
        var errorFade: SKAction
        errorFade = SKAction.fadeOut(withDuration: 0.75)
        var fadeSequence: SKAction
        fadeSequence = SKAction.sequence([errorFadeIn, errorFadeOut])
        var repeatFade: SKAction
        repeatFade = SKAction.repeat(fadeSequence, count: 2)
        var endingSequence: SKAction
        endingSequence = SKAction.sequence([repeatFade, errorFadeIn, errorFade])
        
//        characterSelectError = SKLabelNode(fontNamed: "BebasNeue-Regular")
//        characterSelectError.text = "Please choose a character"
//        characterSelectError.fontColor = ghostWhite
//        characterSelectError.fontSize = 20
        
        characterSelectError = SKSpriteNode(imageNamed: "Asset 19")
        characterSelectError.setScale(0.4)
        characterSelectError.zPosition = 2
//        characterSelectError.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.center
//        characterSelectError.verticalAlignmentMode = SKLabelVerticalAlignmentMode.bottom
        characterSelectError.position = CGPoint(x: view.frame.size.width / 2 - view.frame.size.width / 4, y: view.frame.size.height * 0.09)
        characterSelectError.alpha = 0.0
        addChild(characterSelectError)
        
//        errorBackdrop = SKShapeNode(rectOf: CGSize(width: characterSelectError.frame.size.width * 1.2, height: characterSelectError.frame.size.height * 1.1))
//        errorBackdrop.fillColor = eerieBlack
//        errorBackdrop.strokeColor = SKColor.clear
//        errorBackdrop.position = CGPoint(x: characterSelectError.frame.midX, y: characterSelectError.frame.midY)
//        errorBackdrop.zPosition = 1
//        errorBackdrop.alpha = 0.0
//        addChild(errorBackdrop)
        
        characterSelectError.run(endingSequence)
//        errorBackdrop.run(endingSequence)
        
    }
    
    func createGreenCheck(position: SKSpriteNode) {
        greenCheck = SKSpriteNode(imageNamed: "green_Check")
        greenCheck.zPosition = 3
        greenCheck.size = CGSize(width: greenCheck.size.width / 3, height: greenCheck.size.height / 3)
        greenCheck.position = CGPoint(x: position.frame.maxX - greenCheck.frame.size.width / 2, y: position.frame.minY + greenCheck.frame.size.height / 2)
        addChild(greenCheck)
    }
    
    func createGameSceneCharacterIcon(position: CGPoint) {
        if choseCharacter1 {
            gameSceneCharacter = SKSpriteNode(imageNamed: "Character 1-3")
            gameSceneCharacter.setScale(0.38)
            gameSceneCharacter.position = position
            gameSceneCharacter.name = "gameSceneCharacter1"
            addChild(gameSceneCharacter)
            
            gameSceneCharacterBackdrop = SKShapeNode(circleOfRadius: gameSceneCharacter.frame.size.width / 2.1)
            gameSceneCharacterBackdrop.fillColor = amethyst
            gameSceneCharacterBackdrop.strokeColor = eerieBlack
            gameSceneCharacterBackdrop.lineWidth = 5
            gameSceneCharacterBackdrop.position = gameSceneCharacter.position
            gameSceneCharacterBackdrop.alpha = 0.0
            gameSceneCharacterBackdrop.name = "gameSceneCharacter1"
            addChild(gameSceneCharacterBackdrop)
        } else if choseCharacter2 {
            gameSceneCharacter = SKSpriteNode(imageNamed: "Character 2-3")
            gameSceneCharacter.setScale(0.38)
            gameSceneCharacter.position = position
            gameSceneCharacter.name = "gameSceneCharacter2"
            addChild(gameSceneCharacter)
            
            gameSceneCharacterBackdrop = SKShapeNode(circleOfRadius: gameSceneCharacter.frame.size.width / 2.1)
            gameSceneCharacterBackdrop.fillColor = grape
            gameSceneCharacterBackdrop.strokeColor = eerieBlack
            gameSceneCharacterBackdrop.lineWidth = 5
            gameSceneCharacterBackdrop.position = gameSceneCharacter.position
            gameSceneCharacterBackdrop.alpha = 0.0
            gameSceneCharacterBackdrop.name = "gameSceneCharacter2"
            addChild(gameSceneCharacterBackdrop)
        } else {
            gameSceneCharacter = SKSpriteNode(imageNamed: "Character 3-3")
            gameSceneCharacter.setScale(0.38)
            gameSceneCharacter.position = position
            gameSceneCharacter.name = "gameSceneCharacter3"
            addChild(gameSceneCharacter)
            
            gameSceneCharacterBackdrop = SKShapeNode(circleOfRadius: gameSceneCharacter.frame.size.width / 2.1)
            gameSceneCharacterBackdrop.fillColor = jasmine
            gameSceneCharacterBackdrop.strokeColor = eerieBlack
            gameSceneCharacterBackdrop.lineWidth = 5
            gameSceneCharacterBackdrop.position = gameSceneCharacter.position
            gameSceneCharacterBackdrop.alpha = 0.0
            gameSceneCharacterBackdrop.name = "gameSceneCharacter3"
            addChild(gameSceneCharacterBackdrop)
        }
    }
    
    func createCharacter1(view: SKView) {
        character1 = SKSpriteNode(imageNamed: "character_Display")
        character1.position = CGPoint(x: view.frame.size.width / 6, y: view.frame.size.height - view.frame.size.height / 2.8)
        character1.size = CGSize(width: character1.frame.size.width / 10, height: character1.frame.size.height / 10)
        character1.zPosition = 2
        character1.name = "choice1"
        character1.alpha = 0.0
        addChild(character1)
        
        character1Backdrop = SKShapeNode(rectOf: CGSize(width: character1.frame.size.width * 1.2, height: character1.frame.size.height * 1.2))
        character1Backdrop.position = CGPoint(x: character1.position.x, y: character1.position.y)
        character1Backdrop.zPosition = 1
        character1Backdrop.fillColor = amethyst
        character1Backdrop.strokeColor = eerieBlack
        character1Backdrop.lineWidth = 3
        character1Backdrop.alpha = 0.0
        addChild(character1Backdrop)
        
        character1Icon = SKSpriteNode(imageNamed: "Character 1")
        character1Icon.setScale(0.4)
        character1Icon.zPosition = 0
        character1Icon.position = CGPoint(x: character1Backdrop.frame.midX, y: character1Backdrop.frame.midY)
        character1Icon.name = "choice1"
        addChild(character1Icon)
        
        character1Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character1Label.text = "Warrior"
        character1Label.fontSize = 10
        character1Label.fontColor = forbiddenFruit
        character1Label.position = CGPoint(x: character1Backdrop.frame.midX, y: character1Backdrop.frame.maxY + character1Label.frame.size.height)
        character1Label.zPosition = 2
        addChild(character1Label)
        
//        character1LabelBackdrop = SKShapeNode(rectOf: CGSize(width: character1Label.frame.size.width * 1.2, height: character1Label.frame.size.height * 1.1))
//        character1LabelBackdrop.fillColor = eerieBlack
//        character1LabelBackdrop.strokeColor = SKColor.clear
        character1LabelBackdrop = SKSpriteNode(imageNamed: "Asset 8")
        character1LabelBackdrop.setScale(0.4)
        character1LabelBackdrop.zPosition = 1
        character1LabelBackdrop.position = CGPoint(x: character1Label.frame.midX, y: character1Label.frame.midY)
        addChild(character1LabelBackdrop)
    }
    
    func showMenuForCharacter1(view: SKView) {
//        menuBackdrop = SKShapeNode(rectOf: CGSize(width: 350, height: 600))
//        menuBackdrop.fillColor = eerieBlack
//        menuBackdrop.strokeColor = ghostWhite
//        menuBackdrop.lineWidth = 3
        menuBackdrop = SKSpriteNode(imageNamed: "Asset 24")
        menuBackdrop.setScale(0.42)
        menuBackdrop.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height / 2)
        menuBackdrop.zPosition = 4
        addChild(menuBackdrop)
        
//        menuBackground = SKSpriteNode(imageNamed: "Asset 3")
//        menuBackground.setScale(0.5)
//        menuBackground.position = CGPoint(x: view.frame.midX, y: view.frame.midY)
//        menuBackground.zPosition = 3
//        addChild(menuBackground)
        
        character1MenuImage = SKSpriteNode(imageNamed: "character_Display")
        character1MenuImage.size = CGSize(width: character1MenuImage.size.width / 5, height: character1MenuImage.size.height / 5)
        character1MenuImage.position = CGPoint(x: menuBackdrop.frame.midX, y: menuBackdrop.frame.midY + menuBackdrop.frame.size.height / 4)
        character1MenuImage.zPosition = 6
        character1MenuImage.alpha = 0.0
        addChild(character1MenuImage)
        
//        character1ImageBackdrop = SKShapeNode(rectOf: CGSize(width: character1MenuImage.frame.size.width * 1.2, height: character1MenuImage.frame.size.height * 1.2))
        character1ImageBackdrop = SKSpriteNode(imageNamed: "Character 1-2")
        character1ImageBackdrop.setScale(0.4)
        character1ImageBackdrop.position = CGPoint(x: character1MenuImage.position.x, y: character1MenuImage.position.y)
        character1ImageBackdrop.zPosition = 5
//        character1ImageBackdrop.fillColor = amethyst
//        character1ImageBackdrop.strokeColor = ghostWhite
//        character1ImageBackdrop.lineWidth = 3
        addChild(character1ImageBackdrop)
        
        characterNameLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        characterNameLabel.text = "Character 1"
        characterNameLabel.fontSize = 16
        characterNameLabel.fontColor = forbiddenFruit
        characterNameLabel.position = CGPoint(x: character1ImageBackdrop.position.x, y: character1ImageBackdrop.frame.minY - characterNameLabel.frame.size.height * 2)
        characterNameLabel.zPosition = 5
        addChild(characterNameLabel)
        
        characterAbilityLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        characterAbilityLabel.text = "Ability:"
        characterAbilityLabel.fontSize = 8
        characterAbilityLabel.fontColor = forbiddenFruit
        characterAbilityLabel.position = CGPoint(x: menuBackdrop.frame.minX + characterAbilityLabel.frame.size.width * 0.8, y: menuBackdrop.frame.midY - characterNameLabel.frame.size.height * 2)
        characterAbilityLabel.zPosition = 5
        characterAbilityLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        characterAbilityLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.bottom
        addChild(characterAbilityLabel)
        
        abilityLabels = multiLineText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur risus auctor, commodo lectus")
        
        var positionOffset: CGFloat = 0.0
        var point1: CGFloat = 0.0
        var point2: CGFloat = 0.0
        
        var i = 0
        
        for label in abilityLabels {
            if i == 0 {
                point1 = label.frame.size.height / 2
            } else {
                point2 = point1 - label.frame.size.height / 2
            }
            
            label.fontName = "Forbidden Fruit"
            label.fontColor = ghostWhite
            label.fontSize = 7.5
            label.position = CGPoint(x: characterAbilityLabel.frame.maxX + characterAbilityLabel.frame.size.width / 2.5, y: characterAbilityLabel.frame.midY - positionOffset)
            label.zPosition = 5
            label.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
            addChild(label)
            print("label\(i)", label.position.y)
            print("label\(i)", label.frame.size.height)
            print(characterAbilityLabel.frame.midY - positionOffset)
            positionOffset = positionOffset + label.frame.size.height * 1.2 + point2
            
            i += 1
        }
        
//        characterSelectButton = SKShapeNode(rectOf: CGSize(width: menuBackdrop.frame.size.width - menuBackdrop.frame.size.width * 0.2, height: menuBackdrop.frame.size.height / 10), cornerRadius: (menuBackdrop.frame.size.height / 10) / 2)
//        characterSelectButton.fillColor = amethyst
//        characterSelectButton.strokeColor = ghostWhite
//        characterSelectButton.lineWidth = 3
        characterSelectButton = SKSpriteNode(imageNamed: "Asset 26")
        characterSelectButton.setScale(0.4)
        characterSelectButton.position = CGPoint(x: view.frame.size.width / 2 + view.frame.size.width / 4, y: view.frame.size.height * 0.09)
        characterSelectButton.zPosition = 5
        characterSelectButton.name = "select1"
        addChild(characterSelectButton)
        
//        selectButtonText = SKLabelNode(fontNamed: "BebasNeue-Regular")
//        selectButtonText.text = "Select"
//        selectButtonText.fontColor = ghostWhite
//        selectButtonText.fontSize = characterSelectButton.frame.size.height / 2
//        selectButtonText.position = CGPoint(x: characterSelectButton.frame.midX, y: characterSelectButton.frame.midY)
//        selectButtonText.zPosition = 6
//        selectButtonText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//        selectButtonText.name = "select"
//        addChild(selectButtonText)
    }
    
    func createCharacter2(view: SKView) {
        character2 = SKSpriteNode(imageNamed: "character_Display")
        character2.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height - view.frame.size.height / 2.8)
        character2.size = CGSize(width: character2.frame.size.width / 10, height: character2.frame.size.height / 10)
        character2.zPosition = 2
        character2.name = "choice2"
        character2.alpha = 0.0
        addChild(character2)
        
        character2Backdrop = SKShapeNode(rectOf: CGSize(width: character2.frame.size.width * 1.2, height: character2.frame.size.height * 1.2))
        character2Backdrop.position = CGPoint(x: character2.position.x, y: character2.position.y)
        character2Backdrop.zPosition = 1
        character2Backdrop.fillColor = grape
        character2Backdrop.strokeColor = eerieBlack
        character2Backdrop.lineWidth = 3
        character2Backdrop.alpha = 0.0
        addChild(character2Backdrop)
        
        character2Icon = SKSpriteNode(imageNamed: "Character 2")
        character2Icon.setScale(0.4)
        character2Icon.zPosition = 0
        character2Icon.name = "choice2"
        character2Icon.position = CGPoint(x: character2Backdrop.frame.midX, y: character2Backdrop.frame.midY)
        addChild(character2Icon)
        
        character2Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character2Label.text = "Beast"
        character2Label.fontSize = 10
        character2Label.fontColor = forbiddenFruit
        character2Label.position = CGPoint(x: character2Backdrop.frame.midX, y: character2Backdrop.frame.maxY + character2Label.frame.size.height)
        character2Label.zPosition = 2
        addChild(character2Label)
        
//        character2LabelBackdrop = SKShapeNode(rectOf: CGSize(width: character2Label.frame.size.width * 1.2, height: character2Label.frame.size.height * 1.1))
//        character2LabelBackdrop.fillColor = eerieBlack
//        character2LabelBackdrop.strokeColor = SKColor.clear
        character2LabelBackdrop = SKSpriteNode(imageNamed: "Asset 9")
        character2LabelBackdrop.setScale(0.4)
        character2LabelBackdrop.zPosition = 1
        character2LabelBackdrop.position = CGPoint(x: character2Label.frame.midX, y: character2Label.frame.midY)
        addChild(character2LabelBackdrop)
    }
    
    func showMenuForCharacter2(view: SKView) {
//        menuBackdrop = SKShapeNode(rectOf: CGSize(width: 350, height: 600))
//        menuBackdrop.fillColor = eerieBlack
//        menuBackdrop.strokeColor = ghostWhite
//        menuBackdrop.lineWidth = 3
        menuBackdrop = SKSpriteNode(imageNamed: "Asset 24")
        menuBackdrop.setScale(0.42)
        menuBackdrop.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height / 2)
        menuBackdrop.zPosition = 4
        addChild(menuBackdrop)
        
        character2MenuImage = SKSpriteNode(imageNamed: "character_Display")
        character2MenuImage.size = CGSize(width: character2MenuImage.size.width / 5, height: character2MenuImage.size.height / 5)
        character2MenuImage.position = CGPoint(x: menuBackdrop.frame.midX, y: menuBackdrop.frame.midY + menuBackdrop.frame.size.height / 4)
        character2MenuImage.zPosition = 6
        character2MenuImage.alpha = 0.0
        addChild(character2MenuImage)
        
//        character2ImageBackdrop = SKShapeNode(rectOf: CGSize(width: character2MenuImage.frame.size.width * 1.2, height: character2MenuImage.frame.size.height * 1.2))
        character2ImageBackdrop = SKSpriteNode(imageNamed: "Character 2-2")
        character2ImageBackdrop.setScale(0.4)
        character2ImageBackdrop.position = CGPoint(x: character2MenuImage.position.x, y: character2MenuImage.position.y)
        character2ImageBackdrop.zPosition = 5
//        character2ImageBackdrop.fillColor = amethyst
//        character2ImageBackdrop.strokeColor = ghostWhite
//        character2ImageBackdrop.lineWidth = 3
        addChild(character2ImageBackdrop)
        
        characterNameLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        characterNameLabel.text = "Character 2"
        characterNameLabel.fontSize = 16
        characterNameLabel.fontColor = forbiddenFruit
        characterNameLabel.position = CGPoint(x: character2ImageBackdrop.position.x, y: character2ImageBackdrop.frame.minY - characterNameLabel.frame.size.height * 2)
        characterNameLabel.zPosition = 5
        addChild(characterNameLabel)
        
        characterAbilityLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        characterAbilityLabel.text = "Ability:"
        characterAbilityLabel.fontSize = 8
        characterAbilityLabel.fontColor = forbiddenFruit
        characterAbilityLabel.position = CGPoint(x: menuBackdrop.frame.minX + characterAbilityLabel.frame.size.width * 0.8, y: menuBackdrop.frame.midY - characterNameLabel.frame.size.height * 2)
        characterAbilityLabel.zPosition = 5
        characterAbilityLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        characterAbilityLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.bottom
        addChild(characterAbilityLabel)
        
        abilityLabels = multiLineText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur risus auctor, commodo lectus")
        
        var positionOffset: CGFloat = 0.0
        var point1: CGFloat = 0.0
        var point2: CGFloat = 0.0
        
        var i = 0
        
        for label in abilityLabels {
            if i == 0 {
                point1 = label.frame.size.height / 2
            } else {
                point2 = point1 - label.frame.size.height / 2
            }
            
            label.fontName = "Forbidden Fruit"
            label.fontColor = ghostWhite
            label.fontSize = 7.5
            label.position = CGPoint(x: characterAbilityLabel.frame.maxX + characterAbilityLabel.frame.size.width / 2.5, y: characterAbilityLabel.frame.midY - positionOffset)
            label.zPosition = 5
            label.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
            addChild(label)
            print("label\(i)", label.position.y)
            print("label\(i)", label.frame.size.height)
            print(characterAbilityLabel.frame.midY - positionOffset)
            positionOffset = positionOffset + label.frame.size.height * 1.2 + point2
            
            i += 1
        }
        
//        characterSelectButton = SKShapeNode(rectOf: CGSize(width: menuBackdrop.frame.size.width - menuBackdrop.frame.size.width * 0.2, height: menuBackdrop.frame.size.height / 10), cornerRadius: (menuBackdrop.frame.size.height / 10) / 2)
//        characterSelectButton.fillColor = grape
//        characterSelectButton.strokeColor = ghostWhite
//        characterSelectButton.lineWidth = 3
        characterSelectButton = SKSpriteNode(imageNamed: "Asset 26")
        characterSelectButton.setScale(0.4)
        characterSelectButton.position = CGPoint(x: view.frame.size.width / 2 + view.frame.size.width / 4, y: view.frame.size.height * 0.09)
        characterSelectButton.zPosition = 5
        characterSelectButton.name = "select2"
        addChild(characterSelectButton)
        
//        selectButtonText = SKLabelNode(fontNamed: "BebasNeue-Regular")
//        selectButtonText.text = "Select"
//        selectButtonText.fontColor = ghostWhite
//        selectButtonText.fontSize = characterSelectButton.frame.size.height / 2
//        selectButtonText.position = CGPoint(x: characterSelectButton.frame.midX, y: characterSelectButton.frame.midY)
//        selectButtonText.zPosition = 6
//        selectButtonText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//        selectButtonText.name = "select2"
//        addChild(selectButtonText)
    }
    
    func createCharacter3(view: SKView) {
        character3 = SKSpriteNode(imageNamed: "character_Display")
        character3.position = CGPoint(x: view.frame.size.width / 1.2, y: view.frame.size.height - view.frame.size.height / 2.8)
        character3.size = CGSize(width: character3.frame.size.width / 10, height: character3.frame.size.height / 10)
        character3.zPosition = 2
        character3.name = "choice3"
        character3.alpha = 0.0
        addChild(character3)
        
        character3Backdrop = SKShapeNode(rectOf: CGSize(width: character3.frame.size.width * 1.2, height: character3.frame.size.height * 1.2))
        character3Backdrop.position = CGPoint(x: character3.position.x, y: character3.position.y)
        character3Backdrop.zPosition = 1
        character3Backdrop.fillColor = jasmine
        character3Backdrop.strokeColor = eerieBlack
        character3Backdrop.lineWidth = 3
        character3Backdrop.alpha = 0.0
        addChild(character3Backdrop)
        
        character3Icon = SKSpriteNode(imageNamed: "Character 3")
        character3Icon.setScale(0.4)
        character3Icon.zPosition = 0
        character3Icon.name = "choice3"
        character3Icon.position = CGPoint(x: character3Backdrop.frame.midX, y: character3Backdrop.frame.midY)
        addChild(character3Icon)
        
        character3Label = SKLabelNode(fontNamed: "Forbidden Fruit")
        character3Label.text = "Warrior"
        character3Label.fontSize = 10
        character3Label.fontColor = forbiddenFruit
        character3Label.position = CGPoint(x: character3Backdrop.frame.midX, y: character3Backdrop.frame.maxY + character3Label.frame.size.height)
        character3Label.zPosition = 2
        addChild(character3Label)
        
//        character3LabelBackdrop = SKShapeNode(rectOf: CGSize(width: character3Label.frame.size.width * 1.2, height: character3Label.frame.size.height * 1.1))
//        character3LabelBackdrop.fillColor = eerieBlack
//        character3LabelBackdrop.strokeColor = SKColor.clear
        
        character3LabelBackdrop = SKSpriteNode(imageNamed: "Asset 10")
        character3LabelBackdrop.setScale(0.4)
        character3LabelBackdrop.zPosition = 1
        character3LabelBackdrop.position = CGPoint(x: character3Label.frame.midX, y: character3Label.frame.midY)
        addChild(character3LabelBackdrop)
    }
    
    func showMenuForCharacter3(view: SKView) {
//        menuBackdrop = SKShapeNode(rectOf: CGSize(width: 350, height: 600))
//        menuBackdrop.fillColor = eerieBlack
//        menuBackdrop.strokeColor = ghostWhite
//        menuBackdrop.lineWidth = 3
        
        menuBackdrop = SKSpriteNode(imageNamed: "Asset 24")
        menuBackdrop.setScale(0.42)
        menuBackdrop.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height / 2)
        menuBackdrop.zPosition = 4
        addChild(menuBackdrop)
        
        character3MenuImage = SKSpriteNode(imageNamed: "character_Display")
        character3MenuImage.size = CGSize(width: character3MenuImage.size.width / 5, height: character3MenuImage.size.height / 5)
        character3MenuImage.position = CGPoint(x: menuBackdrop.frame.midX, y: menuBackdrop.frame.midY + menuBackdrop.frame.size.height / 4)
        character3MenuImage.zPosition = 6
        character3MenuImage.alpha = 0.0
        addChild(character3MenuImage)
        
//        character3ImageBackdrop = SKShapeNode(rectOf: CGSize(width: character3MenuImage.frame.size.width * 1.2, height: character3MenuImage.frame.size.height * 1.2))
        character3ImageBackdrop = SKSpriteNode(imageNamed: "Character 3-2")
        character3ImageBackdrop.setScale(0.4)
        character3ImageBackdrop.position = CGPoint(x: character3MenuImage.position.x, y: character3MenuImage.position.y)
        character3ImageBackdrop.zPosition = 5
//        character3ImageBackdrop.fillColor = amethyst
//        character3ImageBackdrop.strokeColor = ghostWhite
//        character3ImageBackdrop.lineWidth = 3
        addChild(character3ImageBackdrop)
        
        characterNameLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        characterNameLabel.text = "Character 3"
        characterNameLabel.fontSize = 16
        characterNameLabel.fontColor = forbiddenFruit
        characterNameLabel.position = CGPoint(x: character3ImageBackdrop.position.x, y: character3ImageBackdrop.frame.minY - characterNameLabel.frame.size.height * 2)
        characterNameLabel.zPosition = 5
        addChild(characterNameLabel)
        
        characterAbilityLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        characterAbilityLabel.text = "Ability:"
        characterAbilityLabel.fontSize = 8
        characterAbilityLabel.fontColor = forbiddenFruit
        characterAbilityLabel.position = CGPoint(x: menuBackdrop.frame.minX + characterAbilityLabel.frame.size.width * 0.8, y: menuBackdrop.frame.midY - characterNameLabel.frame.size.height * 2)
        characterAbilityLabel.zPosition = 5
        characterAbilityLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        characterAbilityLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.bottom
        addChild(characterAbilityLabel)
        
        abilityLabels = multiLineText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consectetur risus auctor, commodo lectus")
        
        var positionOffset: CGFloat = 0.0
        var point1: CGFloat = 0.0
        var point2: CGFloat = 0.0
        
        var i = 0
        
        for label in abilityLabels {
            if i == 0 {
                point1 = label.frame.size.height / 2
            } else {
                point2 = point1 - label.frame.size.height / 2
            }
            
            label.fontName = "Forbidden Fruit"
            label.fontColor = ghostWhite
            label.fontSize = 7.5
            label.position = CGPoint(x: characterAbilityLabel.frame.maxX + characterAbilityLabel.frame.size.width / 2.5, y: characterAbilityLabel.frame.midY - positionOffset)
            label.zPosition = 5
            label.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
            addChild(label)
            print("label\(i)", label.position.y)
            print("label\(i)", label.frame.size.height)
            print(characterAbilityLabel.frame.midY - positionOffset)
            positionOffset = positionOffset + label.frame.size.height * 1.2 + point2
            
            i += 1
        }
        
//        characterSelectButton = SKShapeNode(rectOf: CGSize(width: menuBackdrop.frame.size.width - menuBackdrop.frame.size.width * 0.2, height: menuBackdrop.frame.size.height / 10), cornerRadius: (menuBackdrop.frame.size.height / 10) / 2)
//        characterSelectButton.fillColor = jasmine
//        characterSelectButton.strokeColor = ghostWhite
//        characterSelectButton.lineWidth = 3
        characterSelectButton = SKSpriteNode(imageNamed: "Asset 26")
        characterSelectButton.setScale(0.4)
        characterSelectButton.position = CGPoint(x: view.frame.size.width / 2 + view.frame.size.width / 4, y: view.frame.size.height * 0.09)
        characterSelectButton.zPosition = 5
        characterSelectButton.name = "select3"
        addChild(characterSelectButton)
        
//        selectButtonText = SKLabelNode(fontNamed: "BebasNeue-Regular")
//        selectButtonText.text = "Select"
//        selectButtonText.fontColor = eerieBlack
//        selectButtonText.fontSize = characterSelectButton.frame.size.height / 2
//        selectButtonText.position = CGPoint(x: characterSelectButton.frame.midX, y: characterSelectButton.frame.midY)
//        selectButtonText.zPosition = 6
//        selectButtonText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//        selectButtonText.name = "select3"
//        addChild(selectButtonText)
    }
    
    func removeCharacterMenu(number: Int) {
        var menuBackdropAction: SKAction
        var characterAbilityAction: SKAction
        var selectButtonAction: SKAction
        var labelsAction: SKAction
        var characterNameAction: SKAction
        var characterMenuImageAction: SKAction
        var characterMenuImageBackdropAction: SKAction
        
        menuBackdropAction = SKAction.removeFromParent()
        characterAbilityAction = SKAction.removeFromParent()
        selectButtonAction = SKAction.removeFromParent()
        labelsAction = SKAction.removeFromParent()
        characterNameAction = SKAction.removeFromParent()
        characterMenuImageAction = SKAction.removeFromParent()
        characterMenuImageBackdropAction = SKAction.removeFromParent()
        
        switch number {
        case 1:
            menuBackdrop.run(menuBackdropAction)
            character1MenuImage.run(characterMenuImageAction)
            character1ImageBackdrop.run(characterMenuImageBackdropAction)
            for label in abilityLabels {
                label.run(labelsAction)
            }
            characterNameLabel.run(characterNameAction)
            characterAbilityLabel.run(characterAbilityAction)
            characterSelectButton.run(selectButtonAction)
//            selectButtonText.run(selectButtonAction)
        case 2:
            menuBackdrop.run(menuBackdropAction)
            character2MenuImage.run(characterMenuImageAction)
            character2ImageBackdrop.run(characterMenuImageBackdropAction)
            for label in abilityLabels {
                label.run(labelsAction)
            }
            characterNameLabel.run(characterNameAction)
            characterAbilityLabel.run(characterAbilityAction)
            characterSelectButton.run(selectButtonAction)
//            selectButtonText.run(selectButtonAction)
        case 3:
            menuBackdrop.run(menuBackdropAction)
            character3MenuImage.run(characterMenuImageAction)
            character3ImageBackdrop.run(characterMenuImageBackdropAction)
            for label in abilityLabels {
                label.run(labelsAction)
            }
            characterNameLabel.run(characterNameAction)
            characterAbilityLabel.run(characterAbilityAction)
            characterSelectButton.run(selectButtonAction)
//            selectButtonText.run(selectButtonAction)
        default:
            break
        }
    }
    
    func multiLineText(text: String) -> [SKLabelNode]{
        var i: Int = 0
        var chars: [String] = []
        var labels = [SKLabelNode]()
        for letter in text {
            chars.append("\(letter)")
            i += 1
            if i >= 20 {
                let string1 = chars.joined()
                let label1 = SKLabelNode(text: string1)
                labels.append(label1)
                chars.removeAll()
                i = 0
            }
        }
        return labels
    }
}
