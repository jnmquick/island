//
//  CutCodeFromProject.swift
//  mockup2
//
//  Created by Jason Quick on 7/12/23.
//


//    func walkTo(location: CGPoint, view: SKView) {
//        let speed: CGFloat = 80.0
//
//        var moveAction: SKAction!
//        var labelMoveAction: SKAction!
//        var healthMoveAction: SKAction!
//        var duration: CGFloat = 0.0
//
//        // if the bottom left of the screen is touched
//        if location.x <= view.bounds.size.width/3 && location.y <= view.bounds.size.height/3 {
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        // if the bottom middle of the screen is touched
//        } else if location.x > view.bounds.size.width/3 && location.x <= 2 * view.bounds.size.width/3 && location.y <= view.bounds.size.height/3{
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        // if the bottom right of the screen is touched
//        } else if location.x > 2 * view.bounds.size.width/3 && location.y <= view.bounds.size.height/3 {
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        // if the center left of the screen is touched
//        } else if location.x <= view.bounds.size.width/3 && location.y > view.bounds.size.height/3 && location.y <= 2 * view.bounds.size.height/3 {
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        // if the center middle of the screen is touched
//        } else if location.x > view.bounds.size.width/3 && location.x <= 2 * view.bounds.size.width/3 && location.y > view.bounds.size.height/3 && location.y <= 2 * view.bounds.size.height/3 {
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        // if the center right of the screen is touched
//        } else if location.x > 2 * view.bounds.size.width/3 && location.y > view.bounds.size.height/3 && location.y <= 2 * view.bounds.size.height/3 {
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        // if the top left of the screen is touched
//        } else if location.x <= view.bounds.size.width/3 && location.y > 2 * view.bounds.size.height/3 {
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        // if the top middle of the screen is touched
//        } else if location.x > view.bounds.size.width/3 && location.x <= 2 * view.bounds.size.width/3 && location.y > 2 * view.bounds.size.height/3 {
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        // if the top right of the screen is touched
//        } else if location.x > 2 * view.bounds.size.width/3 && location.y > 2 * view.bounds.size.height/3 {
//            nextPosition = CGPoint(x: location.x, y: location.y)
//            print("next position", nextPosition!)
//            duration = self.distanceBetween(point: scout.position, andPoint: nextPosition) / speed
//            moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//            labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height + findDifference), duration: Double(duration))
//            healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + scout.frame.size.height / 2 + scoutLabel.frame.size.height - scoutLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//        }
//            // Executing the action
//        scout.run(moveAction)
//        scoutLabel.run(labelMoveAction)
//        scoutLabelBackdrop.run(labelMoveAction)
//        scoutHealthBar.run(healthMoveAction)
//        scoutHealthBorder.run(healthMoveAction)
//
//        }

//    var backgroundAtlas: SKTextureAtlas!
//    var backgroundTextures: [SKTexture]!
//    var backgroundAnimate: SKAction!
//    var repeatBackground: SKAction!

//        backgroundAtlas = SKTextureAtlas(named: "water")
//        background = SKSpriteNode(texture: backgroundFrames[0])
//        var backgroundFrames = [SKTexture]()
//
//        for i in 1...4 {
//            let backgroundTexture = "waterBackground\(i)"
//            backgroundFrames.append(backgroundAtlas.textureNamed(backgroundTexture))
//        }

//        backgroundAnimate = SKAction.animate(with: backgroundFrames, timePerFrame: 0.3)
//        repeatBackground = SKAction.repeatForever(backgroundAnimate)

//        background.run(repeatBackground)


//            orangeUnitLabel = SKLabelNode(fontNamed: "BebasNeue-Regular")
//            orangeUnitLabel.text = orangeUnit.name
//            orangeUnitLabel.position = CGPoint(x: orangeUnit.position.x, y: orangeUnit.position.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height)
//            orangeUnitLabel.fontColor = ghostWhite
//            orangeUnitLabel.fontSize = 16
//            orangeUnitLabel.zPosition = 2
//            orangeUnitLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//            orangeUnitLabel.alpha = 0.0
//
//            orangeUnitLabelBackdrop = SKShapeNode(rectOf: CGSize(width: orangeUnitLabel.frame.size.width * 1.2, height: orangeUnitLabel.frame.size.height * 1.1))
//            orangeUnitLabelBackdrop.fillColor = eerieBlack
//            orangeUnitLabelBackdrop.strokeColor = SKColor.clear
//            orangeUnitLabelBackdrop.position = CGPoint(x: orangeUnitLabel.position.x, y: orangeUnitLabel.position.y)
//            orangeUnitLabelBackdrop.zPosition = 1
//            orangeUnitLabelBackdrop.alpha = 0.0
//
//            orangeUnitHealth = orangeUnitMaxHealth
//            orangeUnitHealthBar = SKShapeNode(rectOf: CGSize(width: orangeUnitLabelBackdrop.frame.size.width, height: orangeUnitLabelBackdrop.frame.size.height / 2))
//            orangeUnitHealthBorder = SKShapeNode(rectOf: CGSize(width: orangeUnitLabelBackdrop.frame.size.width, height: orangeUnitLabelBackdrop.frame.size.height / 2))
//            orangeUnitHealthBar.fillColor = electricBlue
//            orangeUnitHealthBorder.fillColor = SKColor.clear
//            orangeUnitHealthBar.lineWidth = 0
//            orangeUnitHealthBorder.lineWidth = 2
//            orangeUnitHealthBorder.strokeColor = eerieBlack
//            orangeUnitHealthBar.position = CGPoint(x: orangeUnitLabel.position.x, y: orangeUnitLabel.position.y - orangeUnitLabelBackdrop.frame.size.height)
//            orangeUnitHealthBorder.position = CGPoint(x: orangeUnitLabel.position.x, y: orangeUnitLabel.position.y - orangeUnitLabelBackdrop.frame.size.height)
//            orangeUnitHealthBar.zPosition = 1
//            orangeUnitHealthBorder.zPosition = 2
//            orangeUnitHealthBar.alpha = 0.0
//            orangeUnitHealthBorder.alpha = 0.0


// // if the bottom left of the screen is touched
//if location.x <= view.bounds.size.width/3 && location.y <= view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//    // if the bottom middle of the screen is touched
//} else if location.x > view.bounds.size.width/3 && location.x <= 2 * view.bounds.size.width/3 && location.y <= view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//    // if the bottom right of the screen is touched
//} else if location.x > 2 * view.bounds.size.width/3 && location.y <= view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//    // if the center left of the screen is touched
//} else if location.x <= view.bounds.size.width/3 && location.y > view.bounds.size.height/3 && location.y <= 2 * view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//    // if the center middle of the screen is touched
//} else if location.x > view.bounds.size.width/3 && location.x <= 2 * view.bounds.size.width/3 && location.y > view.bounds.size.height/3 && location.y <= 2 * view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//    // if the center right of the screen is touched
//} else if location.x > 2 * view.bounds.size.width/3 && location.y > view.bounds.size.height/3 && location.y <= 2 * view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//    // if the top left of the screen is touched
//} else if location.x <= view.bounds.size.width/3 && location.y > 2 * view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//    // if the top middle of the screen is touched
//} else if location.x > view.bounds.size.width/3 && location.x <= 2 * view.bounds.size.width/3 && location.y > 2 * view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//    // if the top right of the screen is touched
//} else if location.x > 2 * view.bounds.size.width/3 && location.y > 2 * view.bounds.size.height/3 {
//    nextPosition = CGPoint(x: location.x, y: location.y)
//    print("next position", nextPosition!)
//    duration = self.distanceBetween(point: orangeUnit.position, andPoint: nextPosition) / speed
//    moveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y), duration: Double(duration))
//    labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height + findDifference), duration: Double(duration))
//    healthMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + orangeUnit.frame.size.height / 2 + orangeUnitLabel.frame.size.height - orangeUnitLabelBackdrop.frame.size.height + findDifference), duration: Double(duration))
//
//}


//    func createSelectButton(view: SKView) {
//        selectButton = SKSpriteNode(imageNamed: "Asset 14")
//        selectButton.setScale(0.32)
//        selectButton.position = CGPoint(x: view.frame.midX, y: view.frame.minY + selectButton.frame.size.height * 2 - view.frame.size.height)
//        selectButton.zPosition = 3
//        selectButton.name = "Select Button"
//        addChild(selectButton)
//
//        selectButtonText = SKLabelNode(fontNamed: "Forbidden Fruit")
//        selectButtonText.text = "Select"
//        selectButtonText.fontSize = 10
//        selectButtonText.fontColor = forbiddenFruit
//        selectButtonText.position = CGPoint(x: selectButton.frame.midX, y: selectButton.frame.midY)
//        selectButtonText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//        selectButtonText.zPosition = 4
//        selectButtonText.name = "Select Button"
//        addChild(selectButtonText)
//    }
//    func moveSelectButtonUp(view: SKView) {
//        let moveAction = SKAction.move(by: CGVector(dx: 0.0, dy: selectButton.position.y + view.frame.size.height * 1.9), duration: 0.25)
//        selectButton.run(moveAction)
//        selectButtonText.run(moveAction)
//    }
//    func moveSelectButtonDown(view: SKView) {
//        let moveAction = SKAction.moveTo(y: selectButton.position.y - view.frame.size.height, duration: 0.25)
//        let removeAction = SKAction.removeFromParent()
//        let moveSequence = SKAction.sequence([moveAction, removeAction])
//
//        selectButton.run(moveSequence)
//        selectButtonText.run(moveSequence)
//    }

//var menuBackdrop: SKSpriteNode!
//var characterImage: SKSpriteNode!
//var characterName: SKLabelNode!
//
//var abilityLabel: SKLabelNode!
//var abilityText: SKLabelNode!
//var ability2Label: SKLabelNode!
//var ability2Text: SKLabelNode!
//var ability3Label: SKLabelNode!
//var ability3Text: SKLabelNode!

//func createMenuBackdrop(view: SKView) {
//    menuBackdrop = SKSpriteNode(imageNamed: "Asset 24")
//    menuBackdrop.setScale(0.44)
//    menuBackdrop.position = CGPoint(x: view.frame.midX, y: view.frame.midY - view.frame.size.height)
//    menuBackdrop.zPosition = 4
//    addChild(menuBackdrop)
//}
//
//func createCharacterImage(image: String, view: SKView) {
//    createMenuBackdrop(view: view)
//    
//    characterImage = SKSpriteNode(imageNamed: image)
//    characterImage.setScale(0.5)
//    characterImage.position = CGPoint(x: menuBackdrop.frame.midX, y: menuBackdrop.frame.midY + characterImage.frame.size.height / 1.25)
//    characterImage.zPosition = 5
//    addChild(characterImage)
//}
//
//func createCharacterName(text: String) {
//    characterName = SKLabelNode(fontNamed: "Forbidden Fruit")
//    characterName.text = text
//    characterName.fontSize = 15
//    characterName.fontColor = forbiddenFruit
//    characterName.position = CGPoint(x: characterImage.frame.midX, y: characterImage.frame.minY - characterName.frame.size.height * 1.5)
//    characterName.zPosition = 5
//    addChild(characterName)
//}
//
//func createAbility() {
//    abilityLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
//    abilityLabel.text = "Economic Ability:"
//    abilityLabel.fontSize = 10
//    abilityLabel.fontColor = forbiddenFruit
//    abilityLabel.position = CGPoint(x: menuBackdrop.frame.midX, y: menuBackdrop.frame.midY - abilityLabel.frame.size.height * 3)
//    abilityLabel.zPosition = 5
//    abilityLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//    addChild(abilityLabel)
//}
//func createText(text: String) {
//    abilityText = SKLabelNode(fontNamed: "Forbidden Fruit")
//    abilityText.text = text
//    abilityText.fontSize = 8
//    abilityText.fontColor = ghostWhite
//    abilityText.position = CGPoint(x: abilityLabel.frame.midX, y: abilityLabel.frame.midY - abilityText.frame.size.height * 1.5)
//    abilityText.zPosition = 5
//    abilityText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//    addChild(abilityText)
//}
//func createAbility2() {
//    ability2Label = SKLabelNode(fontNamed: "Forbidden Fruit")
//    ability2Label.text = "Unique Unit:"
//    ability2Label.fontSize = 10
//    ability2Label.fontColor = forbiddenFruit
//    ability2Label.position = CGPoint(x: abilityText.frame.midX, y: abilityText.frame.midY - ability2Label.frame.size.height * 3)
//    ability2Label.zPosition = 5
//    ability2Label.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//    addChild(ability2Label)
//}
//func createText2(text: String) {
//    ability2Text = SKLabelNode(fontNamed: "Forbidden Fruit")
//    ability2Text.text = text
//    ability2Text.fontSize = 8
//    ability2Text.fontColor = ghostWhite
//    ability2Text.position = CGPoint(x: ability2Label.frame.midX, y: ability2Label.frame.midY - ability2Text.frame.size.height * 1.5)
//    ability2Text.zPosition = 5
//    ability2Text.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//    addChild(ability2Text)
//}
//func createAbility3() {
//    ability3Label = SKLabelNode(fontNamed: "Forbidden Fruit")
//    ability3Label.text = "Leader Ability:"
//    ability3Label.fontSize = 10
//    ability3Label.fontColor = forbiddenFruit
//    ability3Label.position = CGPoint(x: ability2Text.frame.midX, y: ability2Text.frame.midY - ability3Label.frame.size.height * 3)
//    ability3Label.zPosition = 5
//    ability3Label.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//    addChild(ability3Label)
//}
//func createText3(text: String) {
//    ability3Text = SKLabelNode(fontNamed: "Forbidden Fruit")
//    ability3Text.text = text
//    ability3Text.fontSize = 8
//    ability3Text.fontColor = ghostWhite
//    ability3Text.position = CGPoint(x: ability3Label.frame.midX, y: ability3Label.frame.midY - ability3Text.frame.size.height * 1.5)
//    ability3Text.zPosition = 5
//    ability3Text.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
//    addChild(ability3Text)
//}
