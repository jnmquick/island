//
//  Units.swift
//  mockup2
//
//  Created by Jason Quick on 6/28/23.
//

import Foundation
import SpriteKit

class Units: SKSpriteNode {
    var scout: SKSpriteNode!
    var scoutLabel: SKLabelNode!
    var scoutLabelBackdrop: SKSpriteNode!
    var scoutShadow: SKShapeNode!
    var scoutHealthBar: SKShapeNode!
    var scoutHealthBorder: SKShapeNode!
    let scoutMaxNumHealth = 10
    var scoutHealth: Int!
    
    let scoutShader = createWaveCircle()
    
    var isSelected = false
    var isIntersectingGoldCoin = false
    var isIntersectingCrystal = false
    var isCollectingGold = false
    var isCollectingCrystal = false
    var goldCoin: SKNode!
    var crystal: SKNode!
    var time: Int!
    
    var collectGoldLabel: SKLabelNode!
    var collectCrystalLabel: SKLabelNode!
    
    var amountOfHealthBarUpdates: CGFloat = 0.0
    
    var healthAdded = false
    var labelsAdded = false
    
    var labelFadeInAction: SKAction!
    var labelFadeOutAction: SKAction!
    var labelRemoveAction: SKAction!
    var labelSequenceAction: SKAction!
    var healthFadeOutAction: SKAction!
    var removeHealthAction: SKAction!
    var healthRemoveSequence: SKAction!
    var fadeOutShadowAction: SKAction!
    var fadeInShadowAction: SKAction!
    
    var nextPosition: CGPoint!
    var enemyNodeTapped = false
    
    func createScout(view: SKView) {
        scout = SKSpriteNode(imageNamed: "Asset 67")
        scout.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scout.position = CGPoint(x: view.frame.midX, y: view.frame.midY + scout.frame.size.height / 4)
        scout.zPosition = 2
        scout.setScale(0.12)
        scout.name = "Scout"
        scout.physicsBody = SKPhysicsBody(rectangleOf: scout.frame.size)
        scout.physicsBody?.affectedByGravity = false
        scout.physicsBody?.categoryBitMask = PhysicsCategories.player.rawValue
        scout.physicsBody?.contactTestBitMask = PhysicsCategories.enemyBullet.rawValue
        scout.physicsBody?.collisionBitMask = PhysicsCategories.none.rawValue
        addChild(scout)
        
        scoutShadow = SKShapeNode(circleOfRadius: scout.frame.height)
        scoutShadow.position = scout.position
        scoutShadow.zPosition = 1
        scoutShadow.fillColor = SKColor.black
        scoutShadow.fillShader = scoutShader
        scoutShadow.strokeColor = SKColor.clear
        scoutShadow.alpha = 0.0
        scoutShadow.name = "ScoutShadow"
        addChild(scoutShadow)
        
        scoutLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        scoutLabel.text = scout.name
        scoutLabel.position = CGPoint(x: scout.position.x, y: scout.position.y + scout.frame.size.height / 1.25)
        scoutLabel.fontColor = forbiddenFruit
        scoutLabel.fontSize = 4
        scoutLabel.zPosition = 4
        scoutLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        scoutLabel.alpha = 0.0
        
        scoutLabelBackdrop = SKSpriteNode(imageNamed: "Asset 25")
        scoutLabelBackdrop.position = CGPoint(x: scoutLabel.position.x, y: scoutLabel.position.y)
        scoutLabelBackdrop.setScale(0.1)
        scoutLabelBackdrop.zPosition = 3
        scoutLabelBackdrop.alpha = 0.0
        
        scoutHealth = scoutMaxNumHealth
        
        scoutHealthBar = SKShapeNode(rectOf: CGSize(width: scoutLabelBackdrop.frame.size.width - scoutLabelBackdrop.frame.size.width / 8, height: scoutLabelBackdrop.frame.size.height / 2))
        scoutHealthBar.fillColor = electricBlue
        scoutHealthBar.lineWidth = 0
        scoutHealthBar.position = CGPoint(x: scoutLabel.position.x - scoutShadow.position.x, y: scoutLabel.position.y - scoutShadow.position.y - scoutLabelBackdrop.frame.size.height)
        scoutHealthBar.zPosition = 3
        scoutHealthBar.alpha = 0.0
        scoutHealthBar.name = "health"
        
        scoutHealthBorder = SKShapeNode(rectOf: CGSize(width: scoutLabelBackdrop.frame.size.width - scoutLabelBackdrop.frame.size.width / 8, height: scoutLabelBackdrop.frame.size.height / 2))
        scoutHealthBorder.fillColor = SKColor.clear
        scoutHealthBorder.lineWidth = 2
        scoutHealthBorder.strokeColor = eerieBlack
        scoutHealthBorder.position = CGPoint(x: scoutLabel.position.x - scoutShadow.position.x, y: scoutLabel.position.y - scoutShadow.position.y - scoutLabelBackdrop.frame.size.height)
        scoutHealthBorder.zPosition = 4
        scoutHealthBorder.alpha = 0.0
        scoutHealthBorder.name = "healthBorder"
    }
    
    func touchLogicScout(nodeTouched: SKNode, locationOfTouch: CGPoint, view: SKView) {
        
        if nodeTouched.name == "Scout" && isSelected == false {
            
            isSelected = true
            fadeInScoutShadowAlpha()
            fadeInScoutLabels()
            
            print(scout.position)
            print("height:",scout.size.height)
            print("width:",scout.size.width)
            print(scoutLabel.position)
            print(scoutHealthBar.position)
            print(scout.zRotation)
            print(scoutLabel.zRotation)
            print(scoutHealthBar.zRotation)
            
        } else if nodeTouched.name == "Scout" && isSelected == true {
            
            isSelected = false
            fadeOutScoutShadowAlpha()
            fadeOutScoutLabels()
            
        } else if isSelected == true {
            
            if nodeTouched.name == "background" || nodeTouched.name == "detectionCircle" || nodeTouched.name == "island" || nodeTouched.name == "ScoutShadow" || nodeTouched.name == "Gold Coin" || nodeTouched.name == "Crystal" {
                
                moveUnit(location: locationOfTouch)
                
            } else {
                if nodeTouched.name != "mapButton" {
                    isSelected = false
                    fadeOutScoutShadowAlpha()
                    fadeOutScoutLabels()
                }
            }
        }
    }
    
    func fadeOutScoutShadowAlpha() {
        fadeOutShadowAction = SKAction.fadeAlpha(to: 0.0, duration: 0.25)
        scoutShadow.run(fadeOutShadowAction)
    }
    
    func fadeInScoutShadowAlpha() {
        fadeInShadowAction = SKAction.fadeAlpha(to: 1.0, duration: 0.25)
        scoutShadow.run(fadeInShadowAction)
    }
    
    func scoutUpdateHealthBar() {
        let lastPosition = scoutHealthBar.position.x
        let lastWidth = scoutHealthBar.frame.width
        let lostLife = scoutHealthBorder.frame.width / CGFloat(scoutMaxNumHealth)
        
        scoutHealthBar.removeFromParent()

        scoutHealthBar = SKShapeNode(rectOf: CGSize(width: lastWidth - lostLife, height: scoutLabelBackdrop.frame.size.height / 2))
        scoutHealthBar.position.x = lastPosition - lostLife / 2
        scoutHealthBar.position.y = scoutHealthBorder.position.y
        scoutHealthBar.lineWidth = 0
        scoutHealthBar.zPosition = 3
        scoutHealthBar.fillColor = electricBlue

        if isSelected {
            scoutShadow.addChild(scoutHealthBar)
        }
        
        amountOfHealthBarUpdates += 1.0
    }
    
    func fadeInScoutLabels() {

        print(labelsAdded)
        if !labelsAdded {
            labelsAdded = true
            addChild(scoutLabel)
            addChild(scoutLabelBackdrop)
        }
        print(healthAdded)
        if !healthAdded {
            healthAdded = true
            scoutShadow.addChild(scoutHealthBar)
            scoutShadow.addChild(scoutHealthBorder)
        }
        
        labelFadeInAction = SKAction.fadeIn(withDuration: 0.5)
        
        scoutLabel.run(labelFadeInAction)
        scoutLabelBackdrop.run(labelFadeInAction)
        scoutHealthBar.run(labelFadeInAction)
        scoutHealthBorder.run(labelFadeInAction)
    }
    
    func fadeOutScoutLabels() {
        labelFadeOutAction = SKAction.fadeOut(withDuration: 0.5)
        labelRemoveAction = SKAction.removeFromParent()
        let labelsRemoved = SKAction.run {
            self.labelsAdded = false
        }
        labelSequenceAction = SKAction.sequence([labelFadeOutAction, labelRemoveAction, labelsRemoved])
        
        healthFadeOutAction = SKAction.fadeOut(withDuration: 0.5)
        removeHealthAction = SKAction.run {
            self.scoutShadow.removeAllChildren()
        }
        let healthRemoved = SKAction.run {
            self.healthAdded = false
        }
        healthRemoveSequence = SKAction.sequence([healthFadeOutAction, removeHealthAction, healthRemoved])
        
        scoutLabel.run(labelSequenceAction)
        scoutLabelBackdrop.run(labelSequenceAction)
        scoutHealthBar.run(healthFadeOutAction)
        scoutHealthBorder.run(healthRemoveSequence)
    }
    func scoutIsOnGoldCoin() {
        treasure.enumerateChildNodes(withName: "Gold Coin") { gold, collect in
            if self.scout.frame.intersects(gold.frame) {
                self.isIntersectingGoldCoin = true
                if self.goldCoin == nil {
                    self.time = 19
                } else if gold == self.goldCoin {
                    self.time = self.time
                } else if gold != self.goldCoin {
                    self.time = 19
                }
                self.goldCoin = gold
                print("touching gold coin")
            }
        }
    }
    func scoutIsOnCrystal() {
        treasure.enumerateChildNodes(withName: "Crystal") { crystal, collect in
            if self.scout.frame.intersects(crystal.frame) {
                self.isIntersectingCrystal = true
                if self.crystal == nil {
                    self.time = 9
                } else if crystal == self.crystal {
                    self.time = self.time
                } else if crystal != self.crystal {
                    self.time = 9
                }
                self.crystal = crystal
                print("touching crystal")
            }
        }
    }
    func scoutIsOffGoldCoin() {
        if !self.scout.frame.intersects(goldCoin.frame) {
            self.isIntersectingGoldCoin = false
            print("NOT touching gold coin")
        }
    }
    func scoutIsOffCrystal() {
        if !self.scout.frame.intersects(crystal.frame) {
            self.isIntersectingCrystal = false
            print("NOT touching crystal")
        }
    }
    func collectGoldCoin() {
        let startGoldLabel = SKAction.run {
            self.createCollectGoldLabel()
        }
        let gainGold = SKAction.run {
            labels.currency += 5
        }
        let decrementTime = SKAction.run {
            self.time -= 1
        }
        let wait = SKAction.wait(forDuration: 1)
        let checkTime = SKAction.run {
            if self.time == 0 {
                self.goldCoin.removeFromParent()
                self.scout.removeAction(forKey: "collectingGold")
            }
        }
        let collectSequence = SKAction.sequence([gainGold, decrementTime, wait, checkTime])
        let repeatCollect = SKAction.repeatForever(collectSequence)
        let finalSequence = SKAction.sequence([startGoldLabel, repeatCollect])
        scout.run(finalSequence, withKey: "collectingGold")
        isCollectingGold = true
    }
    func createCollectGoldLabel() {
        collectGoldLabel = SKLabelNode(fontNamed: "BebasNeue-Regular")
        collectGoldLabel.text = "+5"
        collectGoldLabel.fontColor = ghostWhite
        collectGoldLabel.fontSize = 20
        collectGoldLabel.position = CGPoint(x: goldCoin.position.x + goldCoin.frame.size.width / 2, y: goldCoin.position.y + goldCoin.frame.size.height)
        collectGoldLabel.zPosition = scout.zPosition + 1
        collectGoldLabel.alpha = 0.0
        addChild(collectGoldLabel)
        
        let labelFadeInAction = SKAction.fadeIn(withDuration: 0.5)
        let labelFadeUp = SKAction.moveTo(y: collectGoldLabel.position.y + collectGoldLabel.frame.size.height * 2, duration: 0.5)
        let labelFadeInGroup = SKAction.group([labelFadeInAction, labelFadeUp])
        let labelFadeOutAction = SKAction.fadeOut(withDuration: 0.25)
        let labelReturnAction = SKAction.moveTo(y: collectGoldLabel.position.y - collectGoldLabel.frame.size.height * 2, duration: 0.0)
        let labelWait = SKAction.wait(forDuration: 0.25)
        let labelSequence = SKAction.sequence([labelFadeInGroup, labelFadeOutAction, labelReturnAction, labelWait])
        let labelRepeat = SKAction.repeat(labelSequence, count: 19)
        let labelRemove = SKAction.removeFromParent()
        let labelFinalSequence = SKAction.sequence([labelRepeat, labelRemove])
        collectGoldLabel.run(labelFinalSequence, withKey: "collectingGold")
    }
    func collectCrystal() {
        let startCrystalLabel = SKAction.run {
            self.createCollectCrystalLabel()
        }
        let gainGold = SKAction.run {
            labels.currency += 20
        }
        let decrementTime = SKAction.run {
            self.time -= 1
        }
        let wait = SKAction.wait(forDuration: 1)
        let checkTime = SKAction.run {
            if self.time == 0 {
                self.crystal.removeFromParent()
                self.scout.removeAction(forKey: "collectingCrystal")
            }
        }
        let collectSequence = SKAction.sequence([gainGold, decrementTime, wait, checkTime])
        let repeatCollect = SKAction.repeatForever(collectSequence)
        let finalSequence = SKAction.sequence([startCrystalLabel, repeatCollect])
        scout.run(finalSequence, withKey: "collectingCrystal")
        isCollectingCrystal = true
    }
    func createCollectCrystalLabel() {
        collectCrystalLabel = SKLabelNode(fontNamed: "BebasNeue-Regular")
        collectCrystalLabel.text = "+20"
        collectCrystalLabel.fontColor = ghostWhite
        collectCrystalLabel.fontSize = 20
        collectCrystalLabel.position = CGPoint(x: crystal.position.x + crystal.frame.size.width / 2, y: crystal.position.y + crystal.frame.size.height)
        collectCrystalLabel.zPosition = scout.zPosition + 1
        collectCrystalLabel.alpha = 0.0
        addChild(collectCrystalLabel)
        
        let labelFadeInAction = SKAction.fadeIn(withDuration: 0.5)
        let labelFadeUp = SKAction.moveTo(y: collectCrystalLabel.position.y + collectCrystalLabel.frame.size.height * 2, duration: 0.5)
        let labelFadeInGroup = SKAction.group([labelFadeInAction, labelFadeUp])
        let labelFadeOutAction = SKAction.fadeOut(withDuration: 0.25)
        let labelReturnAction = SKAction.moveTo(y: collectCrystalLabel.position.y - collectCrystalLabel.frame.size.height * 2, duration: 0.0)
        let labelWait = SKAction.wait(forDuration: 0.25)
        let labelSequence = SKAction.sequence([labelFadeInGroup, labelFadeOutAction, labelReturnAction, labelWait])
        let labelRepeat = SKAction.repeat(labelSequence, count: 9)
        let labelRemove = SKAction.removeFromParent()
        let labelFinalSequence = SKAction.sequence([labelRepeat, labelRemove])
        collectCrystalLabel.run(labelFinalSequence, withKey: "collectingCrystal")
    }
    func stopCollectGold() {
        scout.removeAction(forKey: "collectingGold")
        collectGoldLabel.removeAction(forKey: "collectingGold")
        collectGoldLabel.removeFromParent()
        isCollectingGold = false
    }
    func stopCollectCrystal() {
        scout.removeAction(forKey: "collectingCrystal")
        collectCrystalLabel.removeAction(forKey: "collectingCrystal")
        collectCrystalLabel.removeFromParent()
        isCollectingCrystal = false
    }
    
    func moveUnit(location: CGPoint) {
        let speed: CGFloat = 80.0
        var duration: CGFloat = 0.0
        let lostLife = scoutHealthBorder.frame.width / CGFloat(scoutMaxNumHealth)
        let lostLifeDiv2 = lostLife / 2
        let lostLifeDiv2TimesAmount = lostLifeDiv2 * amountOfHealthBarUpdates
        
        let dy = CGFloat(location.y - scout.position.y)
        let dx = CGFloat(location.x - scout.position.x)
        let angle = atan2(dy, dx) - CGFloat(Double.pi/2)
        print(angle)
        
        nextPosition = location
        duration = distanceBetween(point: location, andPoint: scout.position) / speed
        
        let printAction = SKAction.run {
            print("Scout Location:", self.scout.position)
            print("height:", self.scout.size.height)
            print("width:", self.scout.size.width)
            print("Scout Label Location:", self.scoutLabel.position)
            print("Health Bar Location:", self.scoutHealthBar.position)
            print("Scout Rotation:", self.scout.zRotation)
            print("Scout Label Rotation:", self.scoutLabel.zRotation)
            print("Health Bar Rotation:", self.scoutHealthBar.zRotation)
        }
        
        let h = scout.size.height * abs(cos(angle.radiansToDegrees())) + scout.size.width * abs(sin(angle.radiansToDegrees()))
        let w = scout.size.width * abs(cos(angle.radiansToDegrees())) + scout.size.height * abs(sin(angle.radiansToDegrees()))
        
        var heightOrWidth: CGFloat {
            if w > h {
                return w / 1.25
            } else {
                return h / 1.25
            }
        }
        
        var findDifference: Double! {
            var firstPositionDiff = 0.0
            var secondPositionDiff = 0.0
            firstPositionDiff = scoutLabel.position.y - scout.position.y
            secondPositionDiff = nextPosition.y + heightOrWidth - nextPosition.y
            
            return firstPositionDiff - secondPositionDiff
        }
        
        print(h)
        print(w)
        
        let rotateAction = SKAction.rotate(toAngle: angle, duration: 0.5, shortestUnitArc: true)
        let moveAction = SKAction.move(to: nextPosition, duration: duration)
        let labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + heightOrWidth + findDifference), duration: duration)
        let y = nextPosition.y - nextPosition.y + heightOrWidth + findDifference
        let x = nextPosition.x - nextPosition.x
        let healthBarMoveAction = SKAction.move(to: CGPoint(x: x - lostLifeDiv2TimesAmount, y: y - scoutLabelBackdrop.frame.size.height), duration: duration)
        let healthBorderMoveAction = SKAction.move(to: CGPoint(x: x, y: y - scoutLabelBackdrop.frame.size.height), duration: duration)
        let shaderMoveAction = SKAction.move(to: nextPosition, duration: duration)
        
        let sequenceWithPrint = SKAction.sequence([moveAction, printAction])
        scout.run(rotateAction)
        scout.run(sequenceWithPrint)
        scoutShadow.run(shaderMoveAction)
        scoutLabel.run(labelMoveAction)
        scoutLabelBackdrop.run(labelMoveAction)
        scoutHealthBar.run(healthBarMoveAction)
        scoutHealthBorder.run(healthBorderMoveAction)
    }
    
    func distanceBetween(point p1:CGPoint, andPoint p2:CGPoint) -> CGFloat {
            return sqrt(pow((p2.x - p1.x), 2) + pow((p2.y - p1.y), 2))
        }
    
}
