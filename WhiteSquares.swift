//
//  WhiteSquares.swift
//  mockup2
//
//  Created by Jason Quick on 6/27/23.
//

import Foundation
import SpriteKit
    
class WhiteSquares: SKNode {
    var whiteSquare1: SKSpriteNode!
    var whiteSquare2: SKSpriteNode!
    var whiteSquare3: SKSpriteNode!
    var whiteSquare4: SKSpriteNode!
    var whiteSquare5: SKSpriteNode!
    var whiteSquare6: SKSpriteNode!
    
    func baseSquare(view: SKView) {
//        whiteSquare1 = SKShapeNode(rectOf: CGSize(width: 96, height: 96))
        whiteSquare1 = SKSpriteNode(imageNamed: "Location 2-3")
        whiteSquare1.position = CGPoint(x: view.bounds.size.width / 2, y: view.bounds.size.height / 3.8)
        whiteSquare1.zPosition = 0
        whiteSquare1.setScale(0.08)
//        whiteSquare1.fillColor = ghostWhite
        whiteSquare1.name = "whiteSquare1"
        addChild(whiteSquare1)
    }
    
    func createWhiteSquares(view: SKView) {
        
        baseSquare(view: view)
        
//        whiteSquare2 = SKShapeNode(rectOf: CGSize(width: 96, height: 96))
        whiteSquare2 = SKSpriteNode(imageNamed: "Asset 78")
        whiteSquare2.position = CGPoint(x: view.bounds.size.width / 2 - whiteSquare1.size.width * 1.25, y: view.bounds.size.height / 3.8)
        whiteSquare2.zPosition = 0
        whiteSquare2.setScale(0.08)
//        whiteSquare2.fillColor = ghostWhite
        whiteSquare2.name = "whiteSquare2"
        addChild(whiteSquare2)
        
//        whiteSquare3 = SKShapeNode(rectOf: CGSize(width: 96, height: 96))
        whiteSquare3 = SKSpriteNode(imageNamed: "Asset 78")
        whiteSquare3.position = CGPoint(x: view.bounds.size.width / 2, y: view.bounds.size.height / 3.8 + whiteSquare1.size.height * 1.25)
        whiteSquare3.zPosition = 0
        whiteSquare3.setScale(0.08)
//        whiteSquare3.fillColor = ghostWhite
        whiteSquare3.name = "whiteSquare3"
        addChild(whiteSquare3)
        
//        whiteSquare4 = SKShapeNode(rectOf: CGSize(width: 96, height: 96))
        whiteSquare4 = SKSpriteNode(imageNamed: "Asset 78")
        whiteSquare4.position = CGPoint(x: view.bounds.size.width / 2 + whiteSquare1.size.width * 1.25, y: view.bounds.size.height / 3.8)
        whiteSquare4.zPosition = 0
        whiteSquare4.setScale(0.08)
//        whiteSquare4.fillColor = ghostWhite
        whiteSquare4.name = "whiteSquare4"
        addChild(whiteSquare4)
    }
    
    func upgradeWhiteSquares(view: SKView) {
        
        labels.currency -= menuForWhiteSquare1.priceOfMenuItem1
        
//        whiteSquare5 = SKShapeNode(rectOf: CGSize(width: 96, height: 96))
        whiteSquare5 = SKSpriteNode(imageNamed: "Asset 78")
        whiteSquare5.position = CGPoint(x: view.bounds.size.width / 2 - whiteSquare1.size.width * 1.25, y: whiteSquare3.position.y)
        whiteSquare5.zPosition = 0
        whiteSquare5.setScale(0.08)
//        whiteSquare5.fillColor = ghostWhite
        whiteSquare5.name = "whiteSquare5"
        addChild(whiteSquare5)
        
//        whiteSquare6 = SKShapeNode(rectOf: CGSize(width: 96, height: 96))
        whiteSquare6 = SKSpriteNode(imageNamed: "Asset 78")
        whiteSquare6.position = CGPoint(x: view.bounds.size.width / 2 + whiteSquare1.size.width * 1.25, y: whiteSquare3.position.y)
        whiteSquare6.zPosition = 0
        whiteSquare6.setScale(0.08)
//        whiteSquare6.fillColor = ghostWhite
        whiteSquare6.name = "whiteSquare6"
        addChild(whiteSquare6)
        
        
        var timeRemainingOne = 10
        var timeRemainingTwo = 10
        
        var whiteSquare5FadeOutAction: SKAction
        whiteSquare5FadeOutAction = SKAction.fadeAlpha(to: 0.25, duration: 1.0)
        var whiteSquare5FadeInAction: SKAction
        whiteSquare5FadeInAction = SKAction.fadeAlpha(to: 0.9, duration: 1.0)
        
        var whiteSquare6FadeOutAction: SKAction
        whiteSquare6FadeOutAction = SKAction.fadeAlpha(to: 0.25, duration: 1.0)
        var whiteSquare6FadeInAction: SKAction
        whiteSquare6FadeInAction = SKAction.fadeAlpha(to: 0.9, duration: 1.0)
        
        var decrementTimeRemainingOne: SKAction
        decrementTimeRemainingOne = SKAction.run {
            timeRemainingOne -= 1
        }
        var decrementTimeRemainingTwo: SKAction
        decrementTimeRemainingTwo = SKAction.run {
            timeRemainingTwo -= 1
        }
        var buildingTimerLabel1: SKLabelNode
        buildingTimerLabel1 = SKLabelNode(fontNamed: "BebasNeue-Regular")
        buildingTimerLabel1.text = "\(timeRemainingOne)"
        buildingTimerLabel1.fontSize = 30
        buildingTimerLabel1.fontColor = ghostWhite
        buildingTimerLabel1.position = CGPoint(x: whiteSquare5.frame.midX, y: whiteSquare5.frame.midY - buildingTimerLabel1.frame.height / 2)
        buildingTimerLabel1.zPosition = 2
        whiteSquares.addChild(buildingTimerLabel1)
        
        var buildingTimerLabel2: SKLabelNode
        buildingTimerLabel2 = SKLabelNode(fontNamed: "BebasNeue-Regular")
        buildingTimerLabel2.text = "\(timeRemainingTwo)"
        buildingTimerLabel2.fontSize = 30
        buildingTimerLabel2.fontColor = ghostWhite
        buildingTimerLabel2.position = CGPoint(x: whiteSquare6.frame.midX, y: whiteSquare6.frame.midY - buildingTimerLabel2.frame.height / 2)
        buildingTimerLabel2.zPosition = 2
        whiteSquares.addChild(buildingTimerLabel2)
        
        var updateLabelOneText: SKAction
        updateLabelOneText = SKAction.run {
            buildingTimerLabel1.text = "\(timeRemainingOne)"
        }
        
        var updateLabelTwoText: SKAction
        updateLabelTwoText = SKAction.run {
            buildingTimerLabel2.text = "\(timeRemainingTwo)"
        }
        
        var itemBuildingOneFadeSequence: SKAction
        itemBuildingOneFadeSequence = SKAction.sequence([whiteSquare5FadeOutAction, whiteSquare5FadeInAction, decrementTimeRemainingOne, updateLabelOneText])
        
        var itemBuildingTwoFadeSequence: SKAction
        itemBuildingTwoFadeSequence = SKAction.sequence([whiteSquare6FadeOutAction, whiteSquare6FadeInAction, decrementTimeRemainingTwo, updateLabelTwoText])
        
        var itemBuildingOneRepeatAction: SKAction
        itemBuildingOneRepeatAction = SKAction.repeat(itemBuildingOneFadeSequence, count: 10)
        var returnItemOneToAlpha: SKAction
        returnItemOneToAlpha = SKAction.fadeIn(withDuration: 0.2)
        var removeLabelOne: SKAction
        removeLabelOne = SKAction.run {
            buildingTimerLabel1.removeFromParent()
        }
        
        var itemBuildingTwoRepeatAction: SKAction
        itemBuildingTwoRepeatAction = SKAction.repeat(itemBuildingTwoFadeSequence, count: 10)
        var returnItemTwoToAlpha: SKAction
        returnItemTwoToAlpha = SKAction.fadeIn(withDuration: 0.2)
        var removeLabelTwo: SKAction
        removeLabelTwo = SKAction.run {
            buildingTimerLabel2.removeFromParent()
        }
        
        var stopMenuBecauseBuildingInProgress: SKAction
        var startMenuBecauseBuildingFinished: SKAction
        
        stopMenuBecauseBuildingInProgress = SKAction.run {
            logicForWhiteSquares.buildingWhiteSquare5and6 = true
        }
        startMenuBecauseBuildingFinished = SKAction.run {
            logicForWhiteSquares.buildingWhiteSquare5and6 = false
        }
        
        var endingSequence1: SKAction
        endingSequence1 = SKAction.sequence([stopMenuBecauseBuildingInProgress, itemBuildingOneRepeatAction, returnItemOneToAlpha, removeLabelOne, startMenuBecauseBuildingFinished])
        var endingSequence2: SKAction
        endingSequence2 = SKAction.sequence([stopMenuBecauseBuildingInProgress, itemBuildingTwoRepeatAction, returnItemTwoToAlpha, removeLabelTwo, startMenuBecauseBuildingFinished])
        
        whiteSquare5.run(endingSequence1)
        whiteSquare6.run(endingSequence2)
    }
}
