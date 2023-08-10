//
//  Labels.swift
//  mockup2
//
//  Created by Jason Quick on 6/27/23.
//

import Foundation
import SpriteKit

class Labels: SKNode {
    var currency = 1500
    var currencyLabel: SKLabelNode!
    var currencyLabelBackdrop: SKSpriteNode!
    
    var techLevel = 0
    var techLevelLabel: SKLabelNode!
    var techLevelLabelBackdrop: SKSpriteNode!
    
    var numberOfUnits = 1
    var numberOfUnitsLabel: SKLabelNode!
    var numberOfUnitsLabelBackdrop: SKSpriteNode!
    
    var cameraSelectButton: SKSpriteNode!
    
    var mapButton: SKSpriteNode!
    
    var cameraOrigin: CGPoint!

    func createLabels(screenSize: CGSize) {
        cameraOrigin = CGPoint(x: screenSize.width / 2, y: screenSize.height / 2)
        let currencyLabelPosition = CGPoint(x: cameraOrigin.x - cameraOrigin.x * 1.8, y: cameraOrigin.y * 0.8)
        let techLevelLabelPosition = CGPoint(x: cameraOrigin.x - cameraOrigin.x * 1.8, y: cameraOrigin.y * 0.70)
        let numberUnitsLabelPosition = CGPoint(x: cameraOrigin.x - cameraOrigin.x * 0.2, y: cameraOrigin.y * 0.8)
        let buttonPosition = CGPoint(x: cameraOrigin.x * 0.7, y: -cameraOrigin.y * 0.82)
        let inGameCharacterPosition = CGPoint(x: -cameraOrigin.x + cameraOrigin.x, y: -cameraOrigin.y * 0.82)
        
        print("screen size:", screenSize)
        print("camera origin:", cameraOrigin ?? "camera origin unknown")
        print("label 1:", currencyLabelPosition)
        print("label 2:", techLevelLabelPosition)
        print("label 3:", numberUnitsLabelPosition)
        print("icon position:", inGameCharacterPosition)
        
        currencyLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        currencyLabel.text = "Gold: \(currency)"
        currencyLabel.fontSize = 6
        currencyLabel.fontColor = forbiddenFruit
        currencyLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        currencyLabel.position = currencyLabelPosition
        currencyLabel.zPosition = 1
        print("currLabel", currencyLabel.position)
        
        currencyLabelBackdrop = SKSpriteNode(imageNamed: "Asset 27")
        currencyLabelBackdrop.position = CGPoint(x: currencyLabelPosition.x + currencyLabel.frame.width / 2, y: currencyLabel.frame.midY)
        currencyLabelBackdrop.setScale(0.4)
        print("currLabelBD", currencyLabelBackdrop.position)
        
        techLevelLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        techLevelLabel.text = "Tech: \(techLevel)"
        techLevelLabel.fontSize = 6
        techLevelLabel.fontColor = forbiddenFruit
        techLevelLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        techLevelLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        techLevelLabel.position = CGPoint(x: currencyLabelPosition.x, y: techLevelLabelPosition.y)
        techLevelLabel.zPosition = 1
        print("tLevLabel", techLevelLabel.position)
        
        techLevelLabelBackdrop = SKSpriteNode(imageNamed: "Asset 28")
        techLevelLabelBackdrop.position = CGPoint(x: currencyLabelPosition.x + currencyLabel.frame.width / 2, y: techLevelLabelPosition.y)
        techLevelLabelBackdrop.setScale(0.4)
        print("tLevLabelBD", techLevelLabelBackdrop.position)
        
        numberOfUnitsLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        numberOfUnitsLabel.text = "Units: \(numberOfUnits)"
        numberOfUnitsLabel.fontSize = 6
        numberOfUnitsLabel.fontColor = forbiddenFruit
        numberOfUnitsLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.right
        numberOfUnitsLabel.position = CGPoint(x: numberUnitsLabelPosition.x, y: currencyLabel.position.y)
        numberOfUnitsLabel.zPosition = 1
        print("numUnitslabel", numberOfUnitsLabel.position)
        
        numberOfUnitsLabelBackdrop = SKSpriteNode(imageNamed: "Asset 29")
        numberOfUnitsLabelBackdrop.position = CGPoint(x: -techLevelLabelBackdrop.position.x, y: currencyLabelBackdrop.position.y)
        numberOfUnitsLabelBackdrop.setScale(0.4)
        print("numUnitslabelBD", numberOfUnitsLabelBackdrop.position)
        
        cameraSelectButton = SKSpriteNode(imageNamed: "Scope 1")
        cameraSelectButton.setScale(0.45)
        cameraSelectButton.position = buttonPosition
        cameraSelectButton.name = "cameraSelect"
        
//        characters.createGameSceneCharacterIcon(position: inGameCharacterPosition)
        characterSelection.gameSceneCharacterDisplay(position: inGameCharacterPosition)
        
        self.addChild(characterSelection)
        self.addChild(cameraSelectButton)
        self.addChild(numberOfUnitsLabelBackdrop)
        self.addChild(numberOfUnitsLabel)
        self.addChild(techLevelLabelBackdrop)
        self.addChild(techLevelLabel)
        self.addChild(currencyLabelBackdrop)
        self.addChild(currencyLabel)
    }
    func createMapButton(imageNamed: String) {
        let mapButtonPosition = CGPoint(x: cameraOrigin.x * 0.4, y: -cameraOrigin.y * 0.82)
        
        mapButton = SKSpriteNode(imageNamed: imageNamed)
        mapButton.setScale(0.45)
        mapButton.position = mapButtonPosition
        mapButton.name = "mapButton"
        
        self.addChild(mapButton)
    }
}
