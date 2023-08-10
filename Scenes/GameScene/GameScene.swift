//
//  GameScene.swift
//  mockup2
//
//  Created by Jason Quick on 6/27/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    let background = Background()
    let cam = SKCameraNode()
    
    var zoom1 = true
    var zoom2 = false
    var dragging = false
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        
        background.createBackground(view: view)
        addChild(background)
        island.createHomeIsland(view: view)
        addChild(island)
        
        for _ in 1...20 {
            treasure.createTreasure(location: treasure.findLocation(rect: background.background), number: treasure.randNum())
        }
        addChild(treasure)
        
        whiteSquares.createWhiteSquares(view: view)
        addChild(whiteSquares)
        
        longGesture.createGesture(view: view)
        
        units.createScout(view: view)
        addChild(units)
        addChild(orangeUnits)
        addChild(orangeUnits2)
        enemySquares.createEnemyIsland(view: view)
        enemySquares.createEnemyIsland2(view: view)
        addChild(enemySquares)
        enemyUnits.createEnemy(square: enemySquares.enemyIsland, side: "Left")
        enemyUnits2.createEnemy(square: enemySquares.enemyIsland2, side: "Right")
        addChild(enemyUnits)
        addChild(enemyUnits2)
        
        self.camera = cam
        self.addChild(self.camera!)
        self.camera!.zPosition = 50
        self.camera!.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        self.camera?.constraints = [SKConstraint.positionX(SKRange(lowerLimit: background.background.frame.minX + view.frame.size.width / 2, upperLimit: background.background.frame.maxX - view.frame.size.width / 2)), SKConstraint.positionY(SKRange(lowerLimit: background.background.frame.minY + view.frame.size.height / 2, upperLimit: background.background.frame.maxY - view.frame.size.height / 2))]
        labels.createLabels(screenSize: self.size)
        labels.createMapButton(imageNamed: "Zoom 2")
        self.camera!.addChild(labels)
        self.camera!.addChild(menuForCharacter1Ability)
        self.camera!.addChild(menuForCharacter2Ability)
        self.camera!.addChild(menuForCharacter3Ability)
        self.camera!.addChild(menuForCharacter4Ability)
        self.camera!.addChild(menuForCharacter5Ability)
        self.camera!.addChild(menuForCharacter6Ability)
        self.camera!.addChild(menuForCharacter7Ability)
        self.camera!.addChild(menuForCharacter8Ability)
        self.camera!.addChild(menuForCharacter9Ability)
        self.camera!.addChild(menuForCharacter10Ability)
        self.camera!.addChild(menuForCharacter11Ability)
        self.camera!.addChild(menuForWhiteSquare1)
        self.camera!.addChild(menuForWhiteSquare2)
        self.camera!.addChild(menuForWhiteSquare3)
        self.camera!.addChild(menuForWhiteSquare4)
        self.camera!.addChild(menuForWhiteSquare5)
        self.camera!.addChild(menuForWhiteSquare6)
        self.camera!.addChild(menu2ForWhiteSquare1)
        self.camera!.addChild(menu2ForWhiteSquare2)
        self.camera!.addChild(menu2ForWhiteSquare3)
        self.camera!.addChild(menu2ForWhiteSquare4)
        self.camera!.addChild(menu2ForWhiteSquare5)
        self.camera!.addChild(menu2ForWhiteSquare6)
        self.camera!.addChild(menuForLightPurpleSquare)
        self.camera!.addChild(menuForDarkPurpleSquare)
        self.camera!.addChild(menuForLightOrangeSquare)
        self.camera!.addChild(menuForDarkOrangeSquare)
        self.camera!.addChild(squaresImage)
        self.camera!.addChild(dots)
        print(self)
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        var body1 = SKPhysicsBody()
        var body2 = SKPhysicsBody()
        
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
            body1 = contact.bodyA
            body2 = contact.bodyB
        } else {
            body1 = contact.bodyB
            body2 = contact.bodyA
        }
        if body1.categoryBitMask == PhysicsCategories.enemyBullet.rawValue && body2.categoryBitMask == PhysicsCategories.player.rawValue {
            units.scoutHealth -= 1
            units.scoutUpdateHealthBar()
            if units.scoutHealth == 1 {
                units.scout.position = CGPoint(x: self.view!.frame.midX, y: self.view!.frame.midY - whiteSquares.whiteSquare1.frame.size.height / 2)
                units.scout.removeFromParent()
                units.fadeOutScoutLabels()
                units.isSelected = false
                enemyUnits.enemy.removeAction(forKey: "fireBullet")
                labels.numberOfUnits -= 1
                units.scoutShadow.removeFromParent()
            }
        } else if body1.categoryBitMask == PhysicsCategories.playerBullet.rawValue && body2.categoryBitMask == PhysicsCategories.enemy.rawValue {
            enemyUnits.fadeInEnemyLabels()
            enemyUnits.enemyHealth -= 1
            enemyUnits.enemyUpdateHealthBar()
            if enemyUnits.enemyHealth == 1 {
                enemyUnits.enemy.removeFromParent()
                enemyUnits.fadeOutEnemyLabels()
                orangeUnits.lastOrangeUnit.removeAction(forKey: "fireOrangeBullets")
                orangeUnits.orangeIsShooting = false
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let locationOfTouch = touch.location(in: self)
            let nodeTouched = atPoint(locationOfTouch)
            
            squaresImage.findLocation(nodeTouched: nodeTouched)
            squaresImage.touchLogicForLongPress(nodeTouched: nodeTouched)
            
            if nodeTouched.name == "mapButton" && zoom1 == true && zoom2 == false{
                let camXAction = SKAction.scaleX(to: 2.5, duration: 0.5)
                let camYAction = SKAction.scaleY(to: 2.5, duration: 0.5)
                let camScaleGroup = SKAction.group([camXAction, camYAction])
                cam.run(camScaleGroup)
                self.camera?.constraints = [SKConstraint.positionX(SKRange(lowerLimit: background.background.frame.minX + view!.frame.size.width / 2 * 2.5, upperLimit: background.background.frame.maxX - view!.frame.size.width / 2 * 2.5)), SKConstraint.positionY(SKRange(lowerLimit: background.background.frame.minY + view!.frame.size.height / 2 * 2.5, upperLimit: background.background.frame.maxY - view!.frame.size.height / 2 * 2.5))]
                zoom1 = false
                zoom2 = true
                labels.mapButton.removeFromParent()
                labels.createMapButton(imageNamed: "Zoom 1")
            } else if nodeTouched.name == "mapButton" && zoom1 == false && zoom2 == true {
                let camXAction = SKAction.scaleX(to: 1, duration: 0.5)
                let camYAction = SKAction.scaleY(to: 1, duration: 0.5)
                let camScaleGroup = SKAction.group([camXAction, camYAction])
                cam.run(camScaleGroup)
                self.camera?.constraints = [SKConstraint.positionX(SKRange(lowerLimit: background.background.frame.minX + view!.frame.size.width / 2, upperLimit: background.background.frame.maxX - view!.frame.size.width / 2)), SKConstraint.positionY(SKRange(lowerLimit: background.background.frame.minY + view!.frame.size.height / 2, upperLimit: background.background.frame.maxY - view!.frame.size.height / 2))]
                zoom1 = true
                zoom2 = false
                labels.mapButton.removeFromParent()
                labels.createMapButton(imageNamed: "Zoom 2")
            }
            print(nodeTouched.name ?? "node name unknown")
            print("dragging?", dragging)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches {
            let pointOfTouch = touch.location(in: self)
            let previousPointOfTouch = touch.previousLocation(in: self)
            let amountDraggedX = pointOfTouch.x - previousPointOfTouch.x
            let amountDraggedY = pointOfTouch.y - previousPointOfTouch.y
    
            if logicForWhiteSquares.whiteSquareIsTouched != true || logicForCharacters.characterIsTouched {
                dragging = true
                print("dragging screen", dragging)
                self.camera!.position.x -= amountDraggedX
                self.camera!.position.y -= amountDraggedY
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let locationOfTouch = touch.location(in: self)
            let nodeTouched = atPoint(locationOfTouch)
            
            if !dragging {
                units.touchLogicScout(nodeTouched: nodeTouched, locationOfTouch: locationOfTouch, view: self.view!)
                orangeUnits.touchLogicOrangeUnit(nodeTouched: nodeTouched, locationOfTouch: locationOfTouch, view: self.view!)
                orangeUnits2.touchLogicOrangeUnit(nodeTouched: nodeTouched, locationOfTouch: locationOfTouch, view: self.view!)
                logicForCharacters.showMenuForCharacter(view: self.view!, nodeTouched: nodeTouched)
                cameraMovement(scene: self, nodeTouched: nodeTouched)
                logicForWhiteSquares.showMenuForWhiteSquare(view: self.view!, nodeTouched: nodeTouched)
                logicForLightPurpleSquares.showMenuForLightPurple(view: self.view!, nodeTouched: nodeTouched)
                logicForDarkPurpleSquares.showMenuForDarkPurple(view: self.view!, nodeTouched: nodeTouched)
                logicForLightOrangeSquares.showMenuForLightOrange(view: self.view!, nodeTouched: nodeTouched)
                logicForDarkOrangeSquares.showMenuForDarkOrange(view: self.view!, nodeTouched: nodeTouched)
            }
            dragging = false
            print("not dragging")
            squaresImage.removeTheImage(view: self.view!)
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        labels.currencyLabel.text = "Gold: \(labels.currency)"
        labels.techLevelLabel.text = "Tech: \(labels.techLevel)"
        labels.numberOfUnitsLabel.text = "Units: \(labels.numberOfUnits)"
        
        if !units.isIntersectingGoldCoin {
            units.scoutIsOnGoldCoin()
        } else if !units.isCollectingGold {
            units.collectGoldCoin()
        }
        
        if !units.isIntersectingCrystal {
            units.scoutIsOnCrystal()
        } else if !units.isCollectingCrystal {
            units.collectCrystal()
        }
        
        if units.isIntersectingGoldCoin {
            units.scoutIsOffGoldCoin()
        } else if units.isCollectingGold {
            units.stopCollectGold()
        }
        
        if units.isIntersectingCrystal {
            units.scoutIsOffCrystal()
        } else if units.isCollectingCrystal {
            units.stopCollectCrystal()
        }
        
        if !enemyUnits.scoutDetectedByCircle {
            enemyUnits.detectScoutEnteredCircle()
        } else if !enemyUnits.isShooting {
            enemyUnits.fireBullets()
        } else if !enemyUnits.isFlashing {
            enemyUnits.createFlashingAction()
        } else if !enemyUnits.isRotating {
            enemyUnits.enemyRotate()
        }
        
        if enemyUnits.scoutDetectedByCircle {
            enemyUnits.detectScoutExitedCircle()
        } else if enemyUnits.isShooting {
            enemyUnits.enemy.removeAction(forKey: "fireBullet")
            enemyUnits.isShooting = false
        } else if enemyUnits.isFlashing {
            enemyUnits.removeFlashingAction()
            enemyUnits.isFlashing = false
        } else if enemyUnits.isRotating {
            enemyUnits.isRotating = false
        }
        
        if !enemyUnits2.scoutDetectedByCircle {
            enemyUnits2.detectScoutEnteredCircle()
        } else if !enemyUnits2.isShooting {
            enemyUnits2.fireBullets()
        } else if !enemyUnits2.isFlashing {
            enemyUnits2.createFlashingAction()
        } else if !enemyUnits2.isRotating {
            enemyUnits2.enemyRotate()
        }
        
        if enemyUnits2.scoutDetectedByCircle {
            enemyUnits2.detectScoutExitedCircle()
        } else if enemyUnits2.isShooting {
            enemyUnits2.enemy.removeAction(forKey: "fireBullet")
            enemyUnits2.isShooting = false
        } else if enemyUnits2.isFlashing {
            enemyUnits2.removeFlashingAction()
            enemyUnits2.isFlashing = false
        } else if enemyUnits2.isRotating {
            enemyUnits2.isRotating = false
        }
        
        if !enemyUnits.orangeDetectedByCircle {
            enemyUnits.detectOrangeEnteredCircle()
        }
        if enemyUnits.orangeDetectedByCircle {
            enemyUnits.detectOrangeExitedCircle()
        }
        if orangeUnits.enemyNodeTapped && enemyUnits.orangeDetectedByCircle {
            orangeUnits.lastOrangeUnit.removeAction(forKey: "rotateOrange")
            orangeUnits.lastOrangeUnit.removeAction(forKey: "moveOrange")
            orangeUnits.orangeUnitLabel.removeAction(forKey: "moveOrange")
            orangeUnits.orangeUnitLabelBackdrop.removeAction(forKey: "moveOrange")
            orangeUnits.orangeUnitHealthBar.removeAction(forKey: "moveOrange")
            orangeUnits.orangeUnitHealthBorder.removeAction(forKey: "moveOrange")
            orangeUnits.orangeUnitShadow.removeAction(forKey: "moveOrange")
            if !orangeUnits.orangeIsShooting {
                orangeUnits.orangeUnitAttackAction(selection: enemyUnits.enemy)
                orangeUnits.orangeIsShooting = true
            }
        }
    }
}
