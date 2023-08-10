//
//  CharacterMainMenu.swift
//  mockup2
//
//  Created by Jason Quick on 7/24/23.
//

import Foundation
import SpriteKit

class MainMenuButtons: SKSpriteNode {
    var characterButton: SKSpriteNode!
    var characterButtonLabel: SKLabelNode!
    
    var playButton: SKSpriteNode!
    var playButtonLabel: SKLabelNode!
    
    var settingsButton: SKSpriteNode!
    var settingsButtonLabel: SKLabelNode!
    
    func createCharacterSelectButton(view: SKView) {
        
        characterButton = SKSpriteNode(imageNamed: "Asset 14")
        characterButton.setScale(0.42)
        characterButton.position = CGPoint(x: view.frame.midX, y: view.frame.midY)
        characterButton.zPosition = 1
        characterButton.name = "Character Button"
        addChild(characterButton)
        
        characterButtonLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        characterButtonLabel.text = "Characters"
        characterButtonLabel.fontSize = 10
        characterButtonLabel.fontColor = forbiddenFruit
        characterButtonLabel.position = CGPoint(x: characterButton.frame.midX, y: characterButton.frame.midY)
        characterButtonLabel.zPosition = 2
        characterButtonLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        characterButtonLabel.name = "Character Button"
        addChild(characterButtonLabel)
    }
    
    func createPlayButton(view: SKView) {
        
        playButton = SKSpriteNode(imageNamed: "Asset 14")
        playButton.setScale(0.42)
        playButton.position = CGPoint(x: view.frame.midX, y: view.frame.midY + characterButton.frame.size.height * 1.2)
        playButton.zPosition = 1
        playButton.name = "Play Button"
        addChild(playButton)
        
        playButtonLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        playButtonLabel.text = "Play"
        playButtonLabel.fontSize = 10
        playButtonLabel.fontColor = forbiddenFruit
        playButtonLabel.position = CGPoint(x: playButton.frame.midX, y: playButton.frame.midY)
        playButtonLabel.zPosition = 2
        playButtonLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        playButtonLabel.name = "Play Button"
        addChild(playButtonLabel)
    }
    
    func createSettingsButton(view: SKView) {
        
        settingsButton = SKSpriteNode(imageNamed: "Asset 14")
        settingsButton.setScale(0.42)
        settingsButton.position = CGPoint(x: view.frame.midX, y: view.frame.midY - characterButton.frame.size.height * 1.2)
        settingsButton.zPosition = 1
        settingsButton.name = "Settings Button"
        addChild(settingsButton)
        
        settingsButtonLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        settingsButtonLabel.text = "Settings"
        settingsButtonLabel.fontSize = 10
        settingsButtonLabel.fontColor = forbiddenFruit
        settingsButtonLabel.position = CGPoint(x: settingsButton.frame.midX, y: settingsButton.frame.midY)
        settingsButtonLabel.zPosition = 2
        settingsButtonLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        settingsButtonLabel.name = "Settings Button"
        addChild(settingsButtonLabel)
    }
    
}
