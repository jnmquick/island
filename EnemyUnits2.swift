//
//  EnemyUnits2.swift
//  mockup2
//
//  Created by Jason Quick on 8/4/23.
//

import Foundation
import SpriteKit

class EnemyUnits2: SKNode {
    
    var enemy: SKSpriteNode!
    var detectionCircle: SKShapeNode!
    
    var scoutDetectedByCircle = false
    var orangeDetectedByCircle = false
    var isShooting = false
    var isMoving = false
    
    var labelsAdded = false
    var enemyLabel: SKLabelNode!
    var enemyLabelBackdrop: SKSpriteNode!
    var enemyMaxNumHealth = 10
    var enemyHealth: Int!
    var enemyHealthBar: SKShapeNode!
    var enemyHealthBorder: SKShapeNode!
    
    var redLight: SKShapeNode!
    var blueLight: SKShapeNode!
    var redGlow: SKShapeNode!
    var blueGlow: SKShapeNode!
    
    var isFlashing = false
    var isRotating = false
    
    func createEnemy(square: SKSpriteNode, side: String) {
        enemy = SKSpriteNode(imageNamed: "Enemy1")
        enemy.setScale(0.18)
        switch side {
        case "Left":
            enemy.position = CGPoint(x: square.frame.midX + square.frame.width / 2, y: square.frame.midY)
        case "Right":
            enemy.position = CGPoint(x: square.frame.midX - square.frame.width / 2, y: square.frame.midY)
            enemy.zRotation = Double.pi
        default:
            enemy.position = CGPoint(x: square.frame.midX + square.frame.width / 2, y: square.frame.midY)
        }
        enemy.zPosition = 2
        enemy.name = "enemy"
        enemy.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: enemy.frame.size.width, height: enemy.frame.size.height))
        enemy.physicsBody!.affectedByGravity = false
        enemy.physicsBody!.categoryBitMask = PhysicsCategories.enemy.rawValue
        enemy.physicsBody!.contactTestBitMask = PhysicsCategories.playerBullet.rawValue
        enemy.physicsBody!.collisionBitMask = PhysicsCategories.none.rawValue
        addChild(enemy)
        
        createDetectionCircle(square: square)
        createEnemyLabels()
        print("enemy position:", enemy.position)
    }
    func createFlashingAction() {
        redLight = SKShapeNode(circleOfRadius: enemy.frame.size.height / 20)
        redLight.fillColor = SKColor.red
        redLight.strokeColor = SKColor.clear
        redLight.setScale(8.2)
        redLight.alpha = 0.0
        redLight.position = CGPoint(x: enemy.position.x - enemy.position.x - redLight.frame.size.width / 1.3, y: enemy.position.y - enemy.position.y + redLight.frame.size.height * 2)
        redLight.zPosition = 3
        enemy.addChild(redLight)
        
        blueLight = SKShapeNode(circleOfRadius: enemy.frame.size.height / 20)
        blueLight.fillColor = SKColor.blue
        blueLight.strokeColor = SKColor.clear
        blueLight.setScale(8.2)
        blueLight.alpha = 0.0
        blueLight.position = CGPoint(x: enemy.position.x - enemy.position.x + blueLight.frame.size.width / 1.3, y: enemy.position.y - enemy.position.y + blueLight.frame.size.height * 2)
        blueLight.zPosition = 3
        enemy.addChild(blueLight)
        
        redGlow = SKShapeNode(circleOfRadius: enemy.frame.size.height / 10)
        redGlow.setScale(0.0)
        redGlow.fillColor = SKColor.red
        redGlow.strokeColor = SKColor.clear
        redGlow.alpha = 0.0
        redGlow.position = CGPoint(x: redLight.position.x, y: redLight.position.y)
        redGlow.zPosition = 3
        enemy.addChild(redGlow)
        
        blueGlow = SKShapeNode(circleOfRadius: enemy.frame.size.height / 10)
        blueGlow.setScale(0.0)
        blueGlow.fillColor = SKColor.blue
        blueGlow.strokeColor = SKColor.clear
        blueGlow.alpha = 0.0
        blueGlow.position = CGPoint(x: blueLight.position.x, y: blueLight.position.y)
        blueGlow.zPosition = 3
        enemy.addChild(blueGlow)
        
        let fadeBlueAlphaIn = SKAction.fadeAlpha(to: 1, duration: 0.25)
        let fadeRedAlphaIn = SKAction.fadeAlpha(to: 1, duration: 0.25)
        let fadeBlueAlphaOut = SKAction.fadeAlpha(to: 0.0, duration: 0.25)
        let fadeRedAlphaOut = SKAction.fadeAlpha(to: 0.0, duration: 0.25)
        let waitFor = SKAction.wait(forDuration: 0.5)
        let fadeBlueAlphaSequence = SKAction.sequence([waitFor,fadeBlueAlphaIn, fadeBlueAlphaOut])
        let fadeRedAlphaSequence = SKAction.sequence([fadeRedAlphaIn, fadeRedAlphaOut, waitFor])
        let repeatRedSequence = SKAction.repeatForever(fadeRedAlphaSequence)
        let repeatBlueSequence = SKAction.repeatForever(fadeBlueAlphaSequence)
        redLight.run(repeatRedSequence, withKey: "blinkRed")
        blueLight.run(repeatBlueSequence, withKey: "blinkBlue")
        
        let fadeBlueGlowIn = SKAction.fadeAlpha(to: 0.5, duration: 0.25)
        let scaleBlueGlowUp = SKAction.scale(to: 8.2, duration: 0.25)
        let fadeRedGlowIn = SKAction.fadeAlpha(to: 0.5, duration: 0.25)
        let scaleRedGlowUp = SKAction.scale(to: 8.2, duration: 0.25)
        let blueGroupInAction = SKAction.group([fadeBlueGlowIn, scaleBlueGlowUp])
        let redGroupInAction = SKAction.group([fadeRedGlowIn, scaleRedGlowUp])
        
        let fadeBlueGlowOut = SKAction.fadeAlpha(to: 0.0, duration: 0.25)
        let scaleBlueGlowDown = SKAction.scale(to: 0.0, duration: 0.25)
        let fadeRedGlowOut = SKAction.fadeAlpha(to: 0.0, duration: 0.25)
        let scaleRedGlowDown = SKAction.scale(to: 0.0, duration: 0.25)
        let blueGroupOutAction = SKAction.group([fadeBlueGlowOut, scaleBlueGlowDown])
        let redGroupOutAction = SKAction.group([fadeRedGlowOut, scaleRedGlowDown])
        
        let blueGlowSequence = SKAction.sequence([waitFor, blueGroupInAction, blueGroupOutAction])
        let redGlowSequence = SKAction.sequence([redGroupInAction, redGroupOutAction, waitFor])
        let repeatBlueGlow = SKAction.repeatForever(blueGlowSequence)
        let repeatRedGlow = SKAction.repeatForever(redGlowSequence)
        redGlow.run(repeatRedGlow, withKey: "blinkRed")
        blueGlow.run(repeatBlueGlow, withKey: "blinkBlue")
        
        print("flashing lights position:", redLight.position, blueLight.position)
        
        isFlashing = true
        
    }
    func removeFlashingAction() {
        blueLight.removeAction(forKey: "blinkBlue")
        blueGlow.removeAction(forKey: "blinkBlue")
        redLight.removeAction(forKey: "blinkRed")
        redGlow.removeAction(forKey: "blinkRed")
        
        blueLight.removeFromParent()
        blueGlow.removeFromParent()
        redLight.removeFromParent()
        redGlow.removeFromParent()
    }
    func createEnemyLabels() {
        enemyLabel = SKLabelNode(fontNamed: "Forbidden Fruit")
        enemyLabel.text = enemy.name
        enemyLabel.position = CGPoint(x: enemy.position.x, y: enemy.position.y + enemy.frame.size.height / 1.25)
        enemyLabel.fontColor = forbiddenFruit
        enemyLabel.fontSize = 4
        enemyLabel.zPosition = 4
        enemyLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        enemyLabel.alpha = 0.0
        
        enemyLabelBackdrop = SKSpriteNode(imageNamed: "Asset 25")
        enemyLabelBackdrop.position = CGPoint(x: enemyLabel.position.x, y: enemyLabel.position.y)
        enemyLabelBackdrop.setScale(0.1)
        enemyLabelBackdrop.zPosition = 3
        enemyLabelBackdrop.alpha = 0.0
        
        enemyHealth = enemyMaxNumHealth
        
        enemyHealthBar = SKShapeNode(rectOf: CGSize(width: enemyLabelBackdrop.frame.size.width - enemyLabelBackdrop.frame.size.width / 8, height: enemyLabelBackdrop.frame.size.height / 2))
        enemyHealthBar.fillColor = electricBlue
        enemyHealthBar.lineWidth = 0
        enemyHealthBar.position = CGPoint(x: enemyLabel.position.x, y: enemyLabel.position.y - enemyLabelBackdrop.frame.size.height)
        enemyHealthBar.zPosition = 3
        enemyHealthBar.alpha = 0.0
        enemyHealthBar.name = "health"
        
        enemyHealthBorder = SKShapeNode(rectOf: CGSize(width: enemyLabelBackdrop.frame.size.width - enemyLabelBackdrop.frame.size.width / 8, height: enemyLabelBackdrop.frame.size.height / 2))
        enemyHealthBorder.fillColor = SKColor.clear
        enemyHealthBorder.lineWidth = 2
        enemyHealthBorder.strokeColor = eerieBlack
        enemyHealthBorder.position = CGPoint(x: enemyLabel.position.x, y: enemyLabel.position.y - enemyLabelBackdrop.frame.size.height)
        enemyHealthBorder.zPosition = 4
        enemyHealthBorder.alpha = 0.0
        enemyHealthBorder.name = "healthBorder"
    }
    
    func fadeInEnemyLabels() {

        var labelFadeInAction: SKAction
        if labelsAdded == false {
            addChild(enemyLabel)
            addChild(enemyLabelBackdrop)
            addChild(enemyHealthBar)
            addChild(enemyHealthBorder)
            labelsAdded = true
        }
        
        labelFadeInAction = SKAction.fadeIn(withDuration: 0.5)
        
        enemyLabel.run(labelFadeInAction)
        enemyLabelBackdrop.run(labelFadeInAction)
        enemyHealthBar.run(labelFadeInAction)
        enemyHealthBorder.run(labelFadeInAction)
    }
    
    func fadeOutEnemyLabels() {
        var labelFadeOutAction: SKAction
        var healthFadeOutAction: SKAction
        labelFadeOutAction = SKAction.fadeOut(withDuration: 0.5)
        healthFadeOutAction = SKAction.fadeOut(withDuration: 0.5)
        
        enemyLabel.run(labelFadeOutAction)
        enemyLabelBackdrop.run(labelFadeOutAction)
        enemyHealthBar.run(healthFadeOutAction)
        enemyHealthBorder.run(healthFadeOutAction)
    }
    
    func enemyUpdateHealthBar() {
        let lastPosition = enemyHealthBar.position.x
        let lastWidth = enemyHealthBar.frame.width
        let lostLife = enemyHealthBorder.frame.width / CGFloat(enemyMaxNumHealth)
        
        enemyHealthBar.removeFromParent()

        enemyHealthBar = SKShapeNode(rectOf: CGSize(width: lastWidth - lostLife, height: enemyLabelBackdrop.frame.size.height / 2))
        enemyHealthBar.position.x = lastPosition - lostLife / 2
        enemyHealthBar.position.y = enemyHealthBorder.position.y
        enemyHealthBar.lineWidth = 0
        enemyHealthBar.zPosition = 3
        enemyHealthBar.fillColor = electricBlue

        addChild(enemyHealthBar)
    }
    
    func createDetectionCircle(square: SKSpriteNode) {
        detectionCircle = SKShapeNode(circleOfRadius: 300)
        detectionCircle.fillColor = SKColor.clear
        detectionCircle.strokeColor = SKColor.clear
        detectionCircle.position = square.position
        detectionCircle.zPosition = 0
        detectionCircle.name = "detectionCircle"
        addChild(detectionCircle)
    }
    
    func detectScoutEnteredCircle() {
        if detectionCircle.frame.intersects(units.scout.frame) {
            self.scoutDetectedByCircle = true
            print("scout detected by circle")
        }
    }
    func detectOrangeEnteredCircle() {
        if orangeUnits.lastOrangeUnit != nil {
            if detectionCircle.frame.intersects(orangeUnits.lastOrangeUnit.frame) {
                orangeDetectedByCircle = true
                print("orange detected by circle")
            }
        }
    }
    func detectScoutExitedCircle() {
        if !detectionCircle.frame.intersects(units.scout.frame) {
            self.scoutDetectedByCircle = false
            print("scout no longer detected by circle")
        }
    }
    func detectOrangeExitedCircle() {
        if orangeUnits.lastOrangeUnit != nil {
            if !detectionCircle.frame.intersects(orangeUnits.lastOrangeUnit.frame) {
                orangeDetectedByCircle = false
                print("orange no longer detected by circle")
            }
        }
    }
    func createBullets() -> SKShapeNode {
        var bullet: SKShapeNode
        bullet = SKShapeNode(ellipseOf: CGSize(width: 8, height: 8))
        bullet.fillColor = SKColor.red
        bullet.position = CGPoint(x: enemy.position.x, y: enemy.position.y)
        bullet.zPosition = 1
        bullet.name = "bullet"
        bullet.physicsBody = SKPhysicsBody(circleOfRadius: bullet.frame.size.width / 2)
        bullet.physicsBody!.affectedByGravity = false
        bullet.physicsBody!.categoryBitMask = PhysicsCategories.enemyBullet.rawValue
        bullet.physicsBody!.collisionBitMask = PhysicsCategories.none.rawValue
        bullet.physicsBody!.contactTestBitMask = PhysicsCategories.player.rawValue
        addChild(bullet)
        
        return bullet
    }
    func fireBullets() {
        var fireBulletAction: SKAction
        fireBulletAction = SKAction.run {
            let bullet = self.createBullets()
            let moveBullet = SKAction.move(to: units.scout.position, duration: 1)
            let deleteBullet = SKAction.removeFromParent()
            let bulletSequence = SKAction.sequence([moveBullet, deleteBullet])
            bullet.run(bulletSequence)
        }
        var waitForDuration: SKAction
        waitForDuration = SKAction.wait(forDuration: 1)
        let bulletSequence = SKAction.sequence([fireBulletAction, waitForDuration])
        let repeatBulletSequence = SKAction.repeatForever(bulletSequence)
        
        enemy.run(repeatBulletSequence, withKey: "fireBullet")
        
        isShooting = true
    }
    func findAngle() -> CGFloat {
        let dy = CGFloat(self.enemy.position.y - units.scout.position.y)
        let dx = CGFloat(self.enemy.position.x - units.scout.position.x)
        let angle = atan2(dy, dx) - CGFloat(Double.pi/2)
        
        return angle
    }
    func enemyRotate() {
        let rotateAction = SKAction.rotate(toAngle: findAngle(), duration: 0.5, shortestUnitArc: true)
        let rotatingBool = SKAction.run {
            self.isRotating = false
        }
        let rotateSequence = SKAction.sequence([rotateAction, rotatingBool])
        enemy.run(rotateSequence)
        isRotating = true
    }
//    func enemyMovements(square: SKSpriteNode, unit: SKNode) {
//        let speed: CGFloat = 60.0
//        var duration: CGFloat = 0.0
//        var moveAction: SKAction
//        var location: CGPoint
//
//        location = self.findLocationToMoveEnemy(square: square, unit: unit)
//
//        duration = units.distanceBetween(point: location, andPoint: self.enemy.position) / speed
//        moveAction = SKAction.move(to: location, duration: duration)
//        let enemyNotMoving = SKAction.run {
//            self.isMoving = false
//        }
//        let sequence = SKAction.sequence([moveAction, enemyNotMoving])
//        enemy.run(sequence)
//
//        isMoving = true
//    }
//
//    func findLocationToMoveEnemy(square: SKSpriteNode, unit: SKNode) -> CGPoint {
//        var location: CGPoint
//
//        if unit.position.x > enemy.position.x && unit.position.y - enemy.position.y > 50 {
//            location = CGPoint(x: square.frame.midX + square.frame.width / 3 + enemy.frame.width, y: square.frame.midY + square.frame.height / 2 + enemy.frame.height)
//        } else if unit.position.x > enemy.position.x && unit.position.y - enemy.position.y < -50 {
//            location = CGPoint(x: square.frame.midX + square.frame.width / 3 + enemy.frame.width, y: square.frame.midY - square.frame.height / 2 - enemy.frame.height)
//        } else if unit.position.x > enemy.position.x && (-50...50).contains(unit.position.y - enemy.position.y) {
//            location = CGPoint(x: square.frame.midX + square.frame.width / 3 + enemy.frame.width, y: square.frame.midY)
//        } else if unit.position.x < enemy.position.x && unit.position.y - enemy.position.y > 50 {
//            location = CGPoint(x: square.frame.midX - square.frame.width / 3 - enemy.frame.width, y: square.frame.midY + square.frame.height / 2 + enemy.frame.height)
//        } else if unit.position.x < enemy.position.x && unit.position.y - enemy.position.y < -50 {
//            location = CGPoint(x: square.frame.midX - square.frame.width / 3 - enemy.frame.width, y: square.frame.midY - square.frame.height / 2 - enemy.frame.height)
//        } else if unit.position.x < enemy.position.x && (-50...50).contains(unit.position.y - enemy.position.y) {
//            location = CGPoint(x: square.frame.midX - square.frame.width / 3 - enemy.frame.width, y: square.frame.midY)
//        } else if unit.position.y > enemy.position.y && unit.position.x - enemy.position.x > 50 {
//            location = CGPoint(x: square.frame.midX + square.frame.width / 3 + enemy.frame.width, y: square.frame.midY + square.frame.height / 2 + enemy.frame.height)
//        } else if unit.position.y > enemy.position.y && unit.position.x - enemy.position.x < -50 {
//            location = CGPoint(x: square.frame.midX - square.frame.width / 3 - enemy.frame.width, y: square.frame.midY + square.frame.height / 2 + enemy.frame.height)
//        } else if unit.position.y > enemy.position.y && (-50...50).contains(unit.position.y - enemy.position.y) {
//            location = CGPoint(x: square.frame.midX, y: square.frame.midY + square.frame.height / 2 + enemy.frame.height)
//        } else if unit.position.y < enemy.position.y && unit.position.x - enemy.position.x > 50 {
//            location = CGPoint(x: square.frame.midX + square.frame.width / 3 + enemy.frame.width, y: square.frame.midY - square.frame.height / 2 - enemy.frame.height)
//        } else if unit.position.y < enemy.position.y && unit.position.x - enemy.position.x < -50 {
//            location = CGPoint(x: square.frame.midX - square.frame.width / 3 - enemy.frame.width, y: square.frame.midY - square.frame.height / 2 - enemy.frame.height)
//        } else if unit.position.y < enemy.position.y && (-50...50).contains(unit.position.y - enemy.position.y) {
//            location = CGPoint(x: square.frame.midX, y: square.frame.midY - square.frame.height / 2 - enemy.frame.height)
//        } else {
//            location = enemy.position
//        }
//
//        return location
//    }
}
