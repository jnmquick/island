//
//  OrangeUnits2.swift
//  mockup2
//
//  Created by Jason Quick on 8/2/23.
//

import Foundation
import SpriteKit

class OrangeUnits2: SKSpriteNode {
    var orangeUnitLabel: SKLabelNode!
    var orangeUnitLabelBackdrop: SKSpriteNode!
    var orangeUnitShadow: SKShapeNode!
    var orangeUnitHealthBar: SKShapeNode!
    var orangeUnitHealthBorder: SKShapeNode!
    let orangeUnitMaxHealth = 10
    var orangeUnitHealth: Int!
    
    let orangeUnitShader = createWaveCircle()
    
    var orangeIsSelected = false
    var orangeIsShooting = false
    
    var lastOrangeUnit: SKSpriteNode!
    
    var amountOfOrangeHealthBarUpdates: CGFloat = 0.0
    var orangeHealthAdded = false
    var orangeLabelsAdded = false
    
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
    
    func createOrangeUnitLabels(nodeTouched: SKNode) {
        
        if let orangeUnit = logicForDarkOrangeSquares.orangeUnitArray.first(where: { $0.name == nodeTouched.name }) {
            
            orangeUnitLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
            orangeUnitLabel.text = orangeUnit.name
            orangeUnitLabel.position = CGPoint(x: orangeUnit.position.x, y: orangeUnit.position.y + orangeUnit.frame.size.height / 1.25)
            orangeUnitLabel.fontColor = forbiddenFruit
            orangeUnitLabel.fontSize = 6
            orangeUnitLabel.zPosition = 4
            orangeUnitLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
            orangeUnitLabel.alpha = 0.0
            
            orangeUnitLabelBackdrop = SKSpriteNode(imageNamed: "Asset 25")
            orangeUnitLabelBackdrop.position = CGPoint(x: orangeUnitLabel.position.x, y: orangeUnitLabel.position.y)
            orangeUnitLabelBackdrop.setScale(0.14)
            orangeUnitLabelBackdrop.zPosition = 3
            orangeUnitLabelBackdrop.alpha = 0.0
            
            orangeUnitHealth = orangeUnitMaxHealth
            
            orangeUnitHealthBar = SKShapeNode(rectOf: CGSize(width: orangeUnitLabelBackdrop.frame.size.width - orangeUnitLabelBackdrop.frame.size.width / 8, height: orangeUnitLabelBackdrop.frame.size.height / 2))
            orangeUnitHealthBar.fillColor = electricBlue
            orangeUnitHealthBar.lineWidth = 0
            orangeUnitHealthBar.position = CGPoint(x: orangeUnitLabel.position.x - orangeUnitShadow.position.x, y: orangeUnitLabel.position.y - orangeUnitShadow.position.y - orangeUnitLabelBackdrop.frame.size.height)
            orangeUnitHealthBar.zPosition = 3
            orangeUnitHealthBar.alpha = 0.0
            orangeUnitHealthBar.name = "health"
            
            orangeUnitHealthBorder = SKShapeNode(rectOf: CGSize(width: orangeUnitLabelBackdrop.frame.size.width - orangeUnitLabelBackdrop.frame.size.width / 8, height: orangeUnitLabelBackdrop.frame.size.height / 2))
            orangeUnitHealthBorder.fillColor = SKColor.clear
            orangeUnitHealthBorder.lineWidth = 2
            orangeUnitHealthBorder.strokeColor = eerieBlack
            orangeUnitHealthBorder.position = CGPoint(x: orangeUnitLabel.position.x - orangeUnitShadow.position.x, y: orangeUnitLabel.position.y - orangeUnitShadow.position.y - orangeUnitLabelBackdrop.frame.size.height)
            orangeUnitHealthBorder.zPosition = 4
            orangeUnitHealthBorder.alpha = 0.0
            orangeUnitHealthBorder.name = "healthBorder"
            
        } else {
            return
        }
    }
    func createOrangeUnitShadow(nodeTouched: SKNode) {
        
        if let orangeUnit = logicForDarkOrangeSquares.orangeUnitArray.first(where: { $0.name == nodeTouched.name }) {
            
            let h = orangeUnit.size.height * abs(cos(zRotation.radiansToDegrees())) + orangeUnit.size.width * abs(sin(zRotation.radiansToDegrees()))
            let w = orangeUnit.size.width * abs(cos(zRotation.radiansToDegrees())) + orangeUnit.size.height * abs(sin(zRotation.radiansToDegrees()))
            
            var heightOrWidth: CGFloat {
                if w > h {
                    return w / 1.25
                } else {
                    return h / 1.25
                }
            }
            
            orangeUnitShadow = SKShapeNode(circleOfRadius: heightOrWidth)
            orangeUnitShadow.position = orangeUnit.position
            orangeUnitShadow.zPosition = 1
            orangeUnitShadow.fillColor = SKColor.black
            orangeUnitShadow.fillShader = orangeUnitShader
            orangeUnitShadow.strokeColor = SKColor.clear
            orangeUnitShadow.alpha = 0.0
            orangeUnitShadow.name = "Orange Shadow"
            addChild(orangeUnitShadow)
        } else {
            return
        }
    }
    
    func createOrangeBullets() -> SKShapeNode {
        var orangeBullet: SKShapeNode
        orangeBullet = SKShapeNode(ellipseOf: CGSize(width: 8, height: 8))
        orangeBullet.fillColor = jasmine
        orangeBullet.strokeColor = SKColor.clear
        orangeBullet.position = lastOrangeUnit.position
        orangeBullet.zPosition = 1
        orangeBullet.name = "bullet"
        orangeBullet.physicsBody = SKPhysicsBody(circleOfRadius: orangeBullet.frame.size.width / 2)
        orangeBullet.physicsBody?.affectedByGravity = false
        orangeBullet.physicsBody?.categoryBitMask = PhysicsCategories.playerBullet.rawValue
        orangeBullet.physicsBody?.collisionBitMask = PhysicsCategories.none.rawValue
        orangeBullet.physicsBody?.contactTestBitMask = PhysicsCategories.enemy.rawValue
        addChild(orangeBullet)
        
        return orangeBullet
    }
    func fireBullets(selection: SKNode) {
        var fireBulletAction: SKAction
        fireBulletAction = SKAction.run {
            let bullet = self.createOrangeBullets()
            let moveBullet = SKAction.move(to: selection.position, duration: 1)
            let deleteBullet = SKAction.removeFromParent()
            let bulletSequence = SKAction.sequence([moveBullet, deleteBullet])
            bullet.run(bulletSequence)
        }
        var waitForDuration: SKAction
        waitForDuration = SKAction.wait(forDuration: 1)
        let bulletSequence = SKAction.sequence([fireBulletAction, waitForDuration])
        let repeatBulletSequence = SKAction.repeatForever(bulletSequence)
        
        lastOrangeUnit.run(repeatBulletSequence, withKey: "fireOrangeBullets")
    }
    
    func orangeUnitAttackAction(selection: SKNode) {
        let dy = CGFloat(selection.position.y - lastOrangeUnit.position.y)
        let dx = CGFloat(selection.position.x - lastOrangeUnit.position.x)
        let angle = atan2(dy, dx) - CGFloat(Double.pi/2)
        
        let rotateAction = SKAction.rotate(toAngle: angle, duration: 0.5, shortestUnitArc: true)
        let fireBulletAction = SKAction.run {
            self.fireBullets(selection: selection)
        }
        let attackSequence = SKAction.sequence([rotateAction, fireBulletAction])
        lastOrangeUnit.run(attackSequence)
    }
    
    func touchLogicOrangeUnit(nodeTouched: SKNode, locationOfTouch: CGPoint, view: SKView) {
        
        if let orangeUnit = logicForDarkOrangeSquares.orangeUnitArray.first(where: { $0.name == nodeTouched.name }) {
            
            if nodeTouched.name == orangeUnit.name && orangeIsSelected == false {
                orangeIsSelected = true
                lastOrangeUnit = orangeUnit
                
                createOrangeUnitShadow(nodeTouched: nodeTouched)
                fadeInOrangeShadowAlpha()
                createOrangeUnitLabels(nodeTouched: nodeTouched)
                fadeInOrangeLabels()
                
            } else if orangeIsSelected == true && nodeTouched.name == orangeUnit.name {
                
                fadeOutOrangeShadowAlpha()
                fadeOutOrangeLabels()
                
                if orangeUnit.name != lastOrangeUnit.name {
                    print("last orange unit =", lastOrangeUnit ?? "no orange found")
                    lastOrangeUnit = orangeUnit
                    print("last orange unit =", lastOrangeUnit ?? "no orange found")
                    
                    createOrangeUnitShadow(nodeTouched: nodeTouched)
                    fadeInOrangeShadowAlpha()
                    print("fade in orange shadow")
                    orangeLabelsAdded = false
                    orangeHealthAdded = false
                    createOrangeUnitLabels(nodeTouched: nodeTouched)
                    fadeInOrangeLabels()
                    
                } else {
                    orangeIsSelected = false
                }
            }
            
        } else if orangeIsSelected == true {
            
            if nodeTouched.name == "enemy" {
                if enemyUnits.detectionCircle.frame.intersects(lastOrangeUnit.frame) {
                    orangeUnitAttackAction(selection: enemyUnits.enemy)
                } else {
                    enemyNodeTapped = true
                    moveOrange(location: locationOfTouch, unit: lastOrangeUnit, view: view)
                }
                
            } else if nodeTouched.name == "background" || nodeTouched.name == "detectionCircle" || nodeTouched.name == "island" || nodeTouched.name == "Orange Shadow" {
                
                moveOrange(location: locationOfTouch, unit: lastOrangeUnit, view: view)
                lastOrangeUnit.removeAction(forKey: "fireOrangeBullets")
                enemyNodeTapped = false
                
            } else {
                if nodeTouched.name != "mapButton" {
                    orangeIsSelected = false
                    
                    fadeOutOrangeShadowAlpha()
                    fadeOutOrangeLabels()
                    
                    enemyNodeTapped = false
                }
            }
        } else {
            return
        }
    }
    
    func orangeUnitUpdateHealthBar() {
        let lastPosition = orangeUnitHealthBar.position.x
        let lastWidth = orangeUnitHealthBar.frame.width
        let lostLife = orangeUnitHealthBorder.frame.width / CGFloat(orangeUnitMaxHealth)
        
        orangeUnitHealthBar.removeFromParent()

        orangeUnitHealthBar = SKShapeNode(rectOf: CGSize(width: lastWidth - lostLife, height: orangeUnitLabelBackdrop.frame.size.height / 2))
        orangeUnitHealthBar.position.x = lastPosition - lostLife / 2
        orangeUnitHealthBar.position.y = orangeUnitHealthBorder.position.y
        orangeUnitHealthBar.lineWidth = 0
        orangeUnitHealthBar.zPosition = 3
        orangeUnitHealthBar.fillColor = electricBlue

        if orangeIsSelected {
            orangeUnitShadow.addChild(orangeUnitHealthBar)
        }
        
        amountOfOrangeHealthBarUpdates += 1.0
    }
    
    func fadeOutOrangeShadowAlpha() {
        fadeOutShadowAction = SKAction.fadeAlpha(to: 0.0, duration: 0.25)
        orangeUnitShadow.run(fadeOutShadowAction)
    }
    
    func fadeInOrangeShadowAlpha() {
        fadeInShadowAction = SKAction.fadeAlpha(to: 1.0, duration: 0.25)
        orangeUnitShadow.run(fadeInShadowAction)
    }
    func fadeInOrangeLabels() {
        
        print(orangeLabelsAdded)
        
        if !orangeLabelsAdded {
            addChild(orangeUnitLabel)
            addChild(orangeUnitLabelBackdrop)
            orangeLabelsAdded = true
        }
        
        print(orangeHealthAdded)
        
        if !orangeHealthAdded {
            orangeUnitShadow.addChild(orangeUnitHealthBar)
            orangeUnitShadow.addChild(orangeUnitHealthBorder)
            orangeHealthAdded = true
        }
        
        labelFadeInAction = SKAction.fadeIn(withDuration: 0.25)
        
        orangeUnitLabel.run(labelFadeInAction)
        orangeUnitLabelBackdrop.run(labelFadeInAction)
        orangeUnitHealthBar.run(labelFadeInAction)
        orangeUnitHealthBorder.run(labelFadeInAction)
    }
    
    func fadeOutOrangeLabels() {
        labelFadeOutAction = SKAction.fadeOut(withDuration: 0.25)
        labelRemoveAction = SKAction.removeFromParent()
        let labelsRemoved = SKAction.run {
            self.orangeLabelsAdded = false
        }
        labelSequenceAction = SKAction.sequence([labelFadeOutAction, labelRemoveAction, labelsRemoved])
        
        healthFadeOutAction = SKAction.fadeOut(withDuration: 0.25)
        removeHealthAction = SKAction.run {
//            self.orangeUnitShadow.removeAllChildren()
        }
        let healthRemoved = SKAction.run {
            self.orangeHealthAdded = false
        }
        healthRemoveSequence = SKAction.sequence([healthFadeOutAction, removeHealthAction, healthRemoved])
        
        orangeUnitLabel.run(labelSequenceAction)
        orangeUnitLabelBackdrop.run(labelSequenceAction)
        orangeUnitHealthBar.run(healthFadeOutAction)
        orangeUnitHealthBorder.run(healthRemoveSequence)
    }
    
    func moveOrange(location: CGPoint, unit: SKSpriteNode, view: SKView) {
        
        if let orangeUnit = logicForDarkOrangeSquares.orangeUnitArray.first(where: { $0.name == unit.name }) {
            
            let speed: CGFloat = 60.0
            var duration: CGFloat = 0.0
            let lostLife = orangeUnitHealthBorder.frame.width / CGFloat(orangeUnitMaxHealth)
            let lostLifeDiv2 = lostLife / 2
            let lostLifeDiv2TimesAmount = lostLifeDiv2 * amountOfOrangeHealthBarUpdates
            
            let dy = CGFloat(location.y - orangeUnit.position.y)
            let dx = CGFloat(location.x - orangeUnit.position.x)
            let angle = atan2(dy, dx) - CGFloat(Double.pi/2)
            print(angle)
            
            nextPosition = location
            duration = distanceBetween(point: location, andPoint: orangeUnit.position) / speed
            
            let printAction = SKAction.run {
                print("orangeUnit Location:", orangeUnit.position)
                print("height:", orangeUnit.size.height)
                print("width:", orangeUnit.size.width)
                print("orangeUnit Label Location:", self.orangeUnitLabel.position)
                print("Health Bar Location:", self.orangeUnitHealthBar.position)
                print("orangeUnit Rotation:", orangeUnit.zRotation)
                print("orangeUnit Label Rotation:", self.orangeUnitLabel.zRotation)
                print("Health Bar Rotation:", self.orangeUnitHealthBar.zRotation)
            }
            
            let h = orangeUnit.size.height * abs(cos(angle.radiansToDegrees())) + orangeUnit.size.width * abs(sin(angle.radiansToDegrees()))
            let w = orangeUnit.size.width * abs(cos(angle.radiansToDegrees())) + orangeUnit.size.height * abs(sin(angle.radiansToDegrees()))
            
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
                firstPositionDiff = orangeUnitLabel.position.y - orangeUnit.position.y
                secondPositionDiff = nextPosition.y + heightOrWidth - nextPosition.y
                
                return firstPositionDiff - secondPositionDiff
            }
            
            print(h)
            print(w)
            
            let rotateAction = SKAction.rotate(toAngle: angle, duration: 0.85, shortestUnitArc: true)
            let moveAction = SKAction.move(to: nextPosition, duration: duration)
            let labelMoveAction = SKAction.move(to: CGPoint(x: nextPosition.x, y: nextPosition.y + heightOrWidth + findDifference), duration: duration)
            let y = nextPosition.y - nextPosition.y + heightOrWidth + findDifference
            let x = nextPosition.x - nextPosition.x
            let healthBarMoveAction = SKAction.move(to: CGPoint(x: x - lostLifeDiv2TimesAmount, y: y - orangeUnitLabelBackdrop.frame.size.height), duration: duration)
            let healthBorderMoveAction = SKAction.move(to: CGPoint(x: x, y: y - orangeUnitLabelBackdrop.frame.size.height), duration: duration)
            let shaderMoveAction = SKAction.move(to: nextPosition, duration: duration)
            
            let sequenceWithPrint = SKAction.sequence([moveAction, printAction])
            orangeUnit.run(rotateAction, withKey: "rotateOrange")
            orangeUnit.run(sequenceWithPrint, withKey: "moveOrange")
            orangeUnitShadow.run(shaderMoveAction, withKey: "moveOrange")
            orangeUnitLabel.run(labelMoveAction, withKey: "moveOrange")
            orangeUnitLabelBackdrop.run(labelMoveAction, withKey: "moveOrange")
            orangeUnitHealthBar.run(healthBarMoveAction, withKey: "moveOrange")
            orangeUnitHealthBorder.run(healthBorderMoveAction, withKey: "moveOrange")
            
        } else {
            return
        }
    }
}
