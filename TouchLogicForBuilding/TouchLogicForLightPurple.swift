//
//  TouchLogicForGreenSquares.swift
//  mockup2
//
//  Created by Jason Quick on 6/27/23.
//

import Foundation
import SpriteKit

class LogicForLightPurpleSquares {
    var lightPurpleIsTouched = false
    
    var lightPurpleSquare2IsTouched = false
    var lightPurpleSquare3IsTouched = false
    var lightPurpleSquare4IsTouched = false
    var lightPurpleSquare5IsTouched = false
    var lightPurpleSquare6IsTouched = false
    
    var buildingOnSquare2 = false
    var buildingOnSquare3 = false
    var buildingOnSquare4 = false
    var buildingOnSquare5 = false
    var buildingOnSquare6 = false
    
    var casinoFinishedBuildingOnSquare1 = false
    var casinoFinishedBuildingOnSquare2 = false
    var casinoFinishedBuildingOnSquare3 = false
    var casinoFinishedBuildingOnSquare4 = false
    var casinoFinishedBuildingOnSquare5 = false
    var casinoFinishedBuildingOnSquare6 = false
    
    func showMenuForLightPurple(view: SKView, nodeTouched: SKNode) {
        if nodeTouched.name == "amethystSquare2" && lightPurpleIsTouched == false && buildingOnSquare2 != true {
            print("touched amethyst square 2")
            menuForLightPurpleSquare.createMenuForLightPurpleSquare2(view: view)
            menuForLightPurpleSquare.moveLightPurpleSquare2Menu(view: view)
            lightPurpleSquare2IsTouched = true
            lightPurpleIsTouched = true
        } else if nodeTouched.name == "amethystSquare3" && lightPurpleIsTouched == false && buildingOnSquare3 != true {
            print("touched amethyst square 3")
            menuForLightPurpleSquare.createMenuForLightPurpleSquare3(view: view)
            menuForLightPurpleSquare.moveLightPurpleSquare3Menu(view: view)
            lightPurpleSquare3IsTouched = true
            lightPurpleIsTouched = true
        } else if nodeTouched.name == "amethystSquare4" && lightPurpleIsTouched == false && buildingOnSquare4 != true {
            print("touched amethyst square 4")
            menuForLightPurpleSquare.createMenuForLightPurpleSquare4(view: view)
            menuForLightPurpleSquare.moveLightPurpleSquare4Menu(view: view)
            lightPurpleSquare4IsTouched = true
            lightPurpleIsTouched = true
        } else if nodeTouched.name == "amethystSquare5" && lightPurpleIsTouched == false && buildingOnSquare5 != true {
            print("touched amethyst square 5")
            menuForLightPurpleSquare.createMenuForLightPurpleSquare5(view: view)
            menuForLightPurpleSquare.moveLightPurpleSquare5Menu(view: view)
            lightPurpleSquare5IsTouched = true
            lightPurpleIsTouched = true
        } else if nodeTouched.name == "amethystSquare6" && lightPurpleIsTouched == false && buildingOnSquare6 != true {
            print("touched amethyst square 6")
            menuForLightPurpleSquare.createMenuForLightPurpleSquare6(view: view)
            menuForLightPurpleSquare.moveLightPurpleSquare6Menu(view: view)
            lightPurpleSquare6IsTouched = true
            lightPurpleIsTouched = true
        } else {
            itemOnLightPurpleSquareLogic(view: view, nodeTouched: nodeTouched)
        }
    }
    func itemOnLightPurpleSquareLogic(view: SKView, nodeTouched: SKNode) {
        if nodeTouched.name == "lightPurpleSquare2MenuItem1" && lightPurpleSquare2IsTouched == true {
            // LIGHT PURPLE SQUARE 2
            if labels.currency >= menuForLightPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightPurpleSquare.techLevelRequirementMenuItem1 {
                    buildLightPurpleSquareItem(lightPurpleSquareMenuItem: menuForLightPurpleSquare.lightPurpleSquare2MenuItem1, nodeAtPoint: whiteSquares.whiteSquare2)
                    menuForLightPurpleSquare.removeLightPurpleSquare2Menu(view: view)
                    lightPurpleIsTouched = false
                    lightPurpleSquare2IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else if nodeTouched.name == "lightPurpleSquare3MenuItem1" && lightPurpleSquare3IsTouched == true {
            // LIGHT PURPLE SQUARE 3
            if labels.currency >= menuForLightPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightPurpleSquare.techLevelRequirementMenuItem1 {
                    buildLightPurpleSquareItem(lightPurpleSquareMenuItem: menuForLightPurpleSquare.lightPurpleSquare3MenuItem1, nodeAtPoint: whiteSquares.whiteSquare3)
                    menuForLightPurpleSquare.removeLightPurpleSquare3Menu(view: view)
                    lightPurpleIsTouched = false
                    lightPurpleSquare3IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else if nodeTouched.name == "lightPurpleSquare4MenuItem1" && lightPurpleSquare4IsTouched == true {
            // LIGHT PURPLE SQUARE 4
            if labels.currency >= menuForLightPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightPurpleSquare.techLevelRequirementMenuItem1 {
                    buildLightPurpleSquareItem(lightPurpleSquareMenuItem: menuForLightPurpleSquare.lightPurpleSquare4MenuItem1, nodeAtPoint: whiteSquares.whiteSquare4)
                    menuForLightPurpleSquare.removeLightPurpleSquare4Menu(view: view)
                    lightPurpleIsTouched = false
                    lightPurpleSquare4IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else if nodeTouched.name == "lightPurpleSquare5MenuItem1" && lightPurpleSquare5IsTouched == true {
            // LIGHT PURPLE SQUARE 5
            if labels.currency >= menuForLightPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightPurpleSquare.techLevelRequirementMenuItem1 {
                    buildLightPurpleSquareItem(lightPurpleSquareMenuItem: menuForLightPurpleSquare.lightPurpleSquare5MenuItem1, nodeAtPoint: whiteSquares.whiteSquare5)
                    menuForLightPurpleSquare.removeLightPurpleSquare5Menu(view: view)
                    lightPurpleIsTouched = false
                    lightPurpleSquare5IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else if nodeTouched.name == "lightPurpleSquare6MenuItem1" && lightPurpleSquare6IsTouched == true {
            // LIGHT PURPLE SQUARE 6
            if labels.currency >= menuForLightPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightPurpleSquare.techLevelRequirementMenuItem1 {
                    buildLightPurpleSquareItem(lightPurpleSquareMenuItem: menuForLightPurpleSquare.lightPurpleSquare6MenuItem1, nodeAtPoint: whiteSquares.whiteSquare6)
                    menuForLightPurpleSquare.removeLightPurpleSquare6Menu(view: view)
                    lightPurpleIsTouched = false
                    lightPurpleSquare6IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else {
            lightPurpleIsTouched = false
            menusToRemove(view: view)
        }
    }
    
    func buildLightPurpleSquareItem(lightPurpleSquareMenuItem: SKSpriteNode, nodeAtPoint: SKNode) {
        var itemToBuildOnLightPurpleSquare = SKSpriteNode()
        var stopMenuBecauseBuildingInProgress: SKAction!
        var startMenuBecauseBuildingFinished: SKAction!
        var purpleSquareMethod: SKAction!
        
        switch lightPurpleSquareMenuItem {
            // LIGHT PURPLE SQUARE 2
        case menuForLightPurpleSquare.lightPurpleSquare2MenuItem1:
            itemToBuildOnLightPurpleSquare = SKSpriteNode(imageNamed: "Location 8-3")
            itemToBuildOnLightPurpleSquare.setScale(0.08)
            itemToBuildOnLightPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnLightPurpleSquare.zPosition = 2
            itemToBuildOnLightPurpleSquare.name = "casinoSquare2"
            labels.currency -= menuForLightPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare2 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare2 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnLightPurpleSquare)
            }
            
            // LIGHT PURPLE SQUARE 3
        case menuForLightPurpleSquare.lightPurpleSquare3MenuItem1:
            itemToBuildOnLightPurpleSquare = SKSpriteNode(imageNamed: "Location 8-3")
            itemToBuildOnLightPurpleSquare.setScale(0.08)
            itemToBuildOnLightPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnLightPurpleSquare.zPosition = 2
            itemToBuildOnLightPurpleSquare.name = "casinoSquare3"
            labels.currency -= menuForLightPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare3 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare3 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnLightPurpleSquare)
            }
            
            // LIGHT PURPLE SQUARE 4
        case menuForLightPurpleSquare.lightPurpleSquare4MenuItem1:
            itemToBuildOnLightPurpleSquare = SKSpriteNode(imageNamed: "Location 8-3")
            itemToBuildOnLightPurpleSquare.setScale(0.08)
            itemToBuildOnLightPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnLightPurpleSquare.zPosition = 2
            itemToBuildOnLightPurpleSquare.name = "casinoSquare4"
            labels.currency -= menuForLightPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare4 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare4 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnLightPurpleSquare)
            }
            
            // LIGHT PURPLE SQUARE 5
        case menuForLightPurpleSquare.lightPurpleSquare5MenuItem1:
            itemToBuildOnLightPurpleSquare = SKSpriteNode(imageNamed: "Location 8-3")
            itemToBuildOnLightPurpleSquare.setScale(0.08)
            itemToBuildOnLightPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnLightPurpleSquare.zPosition = 2
            itemToBuildOnLightPurpleSquare.name = "casinoSquare5"
            labels.currency -= menuForLightPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare5 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare5 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnLightPurpleSquare)
            }
            
        
            // LIGHT PURPLE SQUARE 6
        case menuForLightPurpleSquare.lightPurpleSquare6MenuItem1:
            itemToBuildOnLightPurpleSquare = SKSpriteNode(imageNamed: "Location 8-3")
            itemToBuildOnLightPurpleSquare.setScale(0.08)
            itemToBuildOnLightPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnLightPurpleSquare.zPosition = 2
            itemToBuildOnLightPurpleSquare.name = "casinoSquare6"
            labels.currency -= menuForLightPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare6 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare6 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnLightPurpleSquare)
            }
            
        default:
            break
        }
        
        whiteSquares.addChild(itemToBuildOnLightPurpleSquare)
        
        var timeRemaining = 10
        var itemBuildingFadeOut: SKAction
        itemBuildingFadeOut = SKAction.fadeAlpha(to: 0.25, duration: 1.0)
        var itemBuildingFadeIn: SKAction
        itemBuildingFadeIn = SKAction.fadeAlpha(to: 0.9, duration: 1.0)
        var decrementTimeRemaining: SKAction
        decrementTimeRemaining = SKAction.run {
            timeRemaining -= 1
        }
        
        var buildingTimerLabel: SKLabelNode
        buildingTimerLabel = SKLabelNode(fontNamed: "BebasNeue-Regular")
        buildingTimerLabel.text = "\(timeRemaining)"
        buildingTimerLabel.fontSize = 30
        buildingTimerLabel.fontColor = ghostWhite
        buildingTimerLabel.position = CGPoint(x: itemToBuildOnLightPurpleSquare.frame.midX, y: itemToBuildOnLightPurpleSquare.frame.midY - buildingTimerLabel.frame.height / 2)
        buildingTimerLabel.zPosition = 2
        whiteSquares.addChild(buildingTimerLabel)
        
        var updateLabelText: SKAction
        updateLabelText = SKAction.run {
            buildingTimerLabel.text = "\(timeRemaining)"
        }
        var checkBuildingCompletion: SKAction
        checkBuildingCompletion = SKAction.run {
            self.checkIfACasinoIsBuilt(timeRemaining: timeRemaining, nodeBuiltName: itemToBuildOnLightPurpleSquare.name!)
            print(timeRemaining)
        }
        var itemBuildingFadeSequence: SKAction
        itemBuildingFadeSequence = SKAction.sequence([itemBuildingFadeOut, itemBuildingFadeIn, decrementTimeRemaining, updateLabelText, checkBuildingCompletion])
        
        var itemBuildingRepeatAction: SKAction
        itemBuildingRepeatAction = SKAction.repeat(itemBuildingFadeSequence, count: 10)
        var returnItemToAlpha: SKAction
        returnItemToAlpha = SKAction.fadeIn(withDuration: 0.2)
        var removeLabel: SKAction
        removeLabel = SKAction.run {
            buildingTimerLabel.removeFromParent()
        }
    
        var endingSequence: SKAction
        endingSequence = SKAction.sequence([stopMenuBecauseBuildingInProgress, itemBuildingRepeatAction, returnItemToAlpha, removeLabel, purpleSquareMethod, startMenuBecauseBuildingFinished])
        itemToBuildOnLightPurpleSquare.run(endingSequence)
        
    }
    
    func checkIfACasinoIsBuilt(timeRemaining: Int, nodeBuiltName: String) {
        if timeRemaining == 0 {
            switch nodeBuiltName {
            case "casinoSquare1":
                casinoFinishedBuildingOnSquare1 = true
            case "casinoSquare2":
                casinoFinishedBuildingOnSquare2 = true
            case "casinoSquare3":
                casinoFinishedBuildingOnSquare3 = true
            case "casinoSquare4":
                casinoFinishedBuildingOnSquare4 = true
            case "casinoSquare5":
                casinoFinishedBuildingOnSquare5 = true
            case "casinoSquare6":
                casinoFinishedBuildingOnSquare6 = true
            default:
                break
            }
        }
    }
    
    func menusToRemove(view: SKView) {
        if lightPurpleSquare2IsTouched == true {
            
            menuForLightPurpleSquare.removeLightPurpleSquare2Menu(view: view)
            lightPurpleSquare2IsTouched = false
            
        } else if lightPurpleSquare3IsTouched == true {
            
            menuForLightPurpleSquare.removeLightPurpleSquare3Menu(view: view)
            lightPurpleSquare3IsTouched = false
            
        } else if lightPurpleSquare4IsTouched == true {
            
            menuForLightPurpleSquare.removeLightPurpleSquare4Menu(view: view)
            lightPurpleSquare4IsTouched = false
            
        } else if lightPurpleSquare5IsTouched == true {
            
            menuForLightPurpleSquare.removeLightPurpleSquare5Menu(view: view)
            lightPurpleSquare5IsTouched = false
            
        } else if lightPurpleSquare6IsTouched == true {
            
            menuForLightPurpleSquare.removeLightPurpleSquare6Menu(view: view)
            lightPurpleSquare6IsTouched = false
            
        } else {
            
            return
        }
    }
}
