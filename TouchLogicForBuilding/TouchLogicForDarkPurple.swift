//
//  TouchLogicForDarkPurple.swift
//  mockup2
//
//  Created by Jason Quick on 6/28/23.
//

import Foundation
import SpriteKit

class LogicForDarkPurpleSquares {
    var darkPurpleIsTouched = false
    
    var darkPurpleSquare2IsTouched = false
    var darkPurpleSquare3IsTouched = false
    var darkPurpleSquare4IsTouched = false
    var darkPurpleSquare5IsTouched = false
    var darkPurpleSquare6IsTouched = false
    
    var buildingOnSquare2 = false
    var buildingOnSquare3 = false
    var buildingOnSquare4 = false
    var buildingOnSquare5 = false
    var buildingOnSquare6 = false
    
    var powerPlantFinishedBuildingOnSquare1 = false
    var powerPlantFinishedBuildingOnSquare2 = false
    var powerPlantFinishedBuildingOnSquare3 = false
    var powerPlantFinishedBuildingOnSquare4 = false
    var powerPlantFinishedBuildingOnSquare5 = false
    var powerPlantFinishedBuildingOnSquare6 = false
    
    func showMenuForDarkPurple(view: SKView, nodeTouched: SKNode) {
        if nodeTouched.name == "grapeSquare2" && darkPurpleIsTouched == false && buildingOnSquare2 != true {
            print("touched grape square 2")
            menuForDarkPurpleSquare.createMenuForDarkPurpleSquare2(view: view)
            menuForDarkPurpleSquare.moveDarkPurpleSquare2Menu(view: view)
            darkPurpleSquare2IsTouched = true
            darkPurpleIsTouched = true
        } else if nodeTouched.name == "grapeSquare3" && darkPurpleIsTouched == false && buildingOnSquare3 != true {
            print("touched grape square 3")
            menuForDarkPurpleSquare.createMenuForDarkPurpleSquare3(view: view)
            menuForDarkPurpleSquare.moveDarkPurpleSquare3Menu(view: view)
            darkPurpleSquare3IsTouched = true
            darkPurpleIsTouched = true
        } else if nodeTouched.name == "grapeSquare4" && darkPurpleIsTouched == false && buildingOnSquare4 != true {
            print("touched grape square 4")
            menuForDarkPurpleSquare.createMenuForDarkPurpleSquare4(view: view)
            menuForDarkPurpleSquare.moveDarkPurpleSquare4Menu(view: view)
            darkPurpleSquare4IsTouched = true
            darkPurpleIsTouched = true
        } else if nodeTouched.name == "grapeSquare5" && darkPurpleIsTouched == false && buildingOnSquare5 != true {
            print("touched grape square 5")
            menuForDarkPurpleSquare.createMenuForDarkPurpleSquare5(view: view)
            menuForDarkPurpleSquare.moveDarkPurpleSquare5Menu(view: view)
            darkPurpleSquare5IsTouched = true
            darkPurpleIsTouched = true
        } else if nodeTouched.name == "grapeSquare6" && darkPurpleIsTouched == false && buildingOnSquare6 != true {
            print("touched grape square 6")
            menuForDarkPurpleSquare.createMenuForDarkPurpleSquare6(view: view)
            menuForDarkPurpleSquare.moveDarkPurpleSquare6Menu(view: view)
            darkPurpleSquare6IsTouched = true
            darkPurpleIsTouched = true
        } else {
            itemOndarkPurpleSquareLogic(view: view, nodeTouched: nodeTouched)
        }
    }
    func itemOndarkPurpleSquareLogic(view: SKView, nodeTouched: SKNode) {
        if nodeTouched.name == "darkPurpleSquare2MenuItem1" && darkPurpleSquare2IsTouched == true {
            // LIGHT PURPLE SQUARE 2
            if labels.currency >= menuForDarkPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkPurpleSquare.techLevelRequirementMenuItem1 {
                    builddarkPurpleSquareItem(darkPurpleSquareMenuItem: menuForDarkPurpleSquare.darkPurpleSquare2MenuItem1, nodeAtPoint: whiteSquares.whiteSquare2)
                    menuForDarkPurpleSquare.removeDarkPurpleSquare2Menu(view: view)
                    darkPurpleIsTouched = false
                    darkPurpleSquare2IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else if nodeTouched.name == "darkPurpleSquare3MenuItem1" && darkPurpleSquare3IsTouched == true {
            // LIGHT PURPLE SQUARE 3
            if labels.currency >= menuForDarkPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkPurpleSquare.techLevelRequirementMenuItem1 {
                    builddarkPurpleSquareItem(darkPurpleSquareMenuItem: menuForDarkPurpleSquare.darkPurpleSquare3MenuItem1, nodeAtPoint: whiteSquares.whiteSquare3)
                    menuForDarkPurpleSquare.removeDarkPurpleSquare3Menu(view: view)
                    darkPurpleIsTouched = false
                    darkPurpleSquare3IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else if nodeTouched.name == "darkPurpleSquare4MenuItem1" && darkPurpleSquare4IsTouched == true {
            // LIGHT PURPLE SQUARE 4
            if labels.currency >= menuForDarkPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkPurpleSquare.techLevelRequirementMenuItem1 {
                    builddarkPurpleSquareItem(darkPurpleSquareMenuItem: menuForDarkPurpleSquare.darkPurpleSquare4MenuItem1, nodeAtPoint: whiteSquares.whiteSquare4)
                    menuForDarkPurpleSquare.removeDarkPurpleSquare4Menu(view: view)
                    darkPurpleIsTouched = false
                    darkPurpleSquare4IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else if nodeTouched.name == "darkPurpleSquare5MenuItem1" && darkPurpleSquare5IsTouched == true {
            // LIGHT PURPLE SQUARE 5
            if labels.currency >= menuForDarkPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkPurpleSquare.techLevelRequirementMenuItem1 {
                    builddarkPurpleSquareItem(darkPurpleSquareMenuItem: menuForDarkPurpleSquare.darkPurpleSquare5MenuItem1, nodeAtPoint: whiteSquares.whiteSquare5)
                    menuForDarkPurpleSquare.removeDarkPurpleSquare5Menu(view: view)
                    darkPurpleIsTouched = false
                    darkPurpleSquare5IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else if nodeTouched.name == "darkPurpleSquare6MenuItem1" && darkPurpleSquare6IsTouched == true {
            // LIGHT PURPLE SQUARE 6
            if labels.currency >= menuForDarkPurpleSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkPurpleSquare.techLevelRequirementMenuItem1 {
                    builddarkPurpleSquareItem(darkPurpleSquareMenuItem: menuForDarkPurpleSquare.darkPurpleSquare6MenuItem1, nodeAtPoint: whiteSquares.whiteSquare6)
                    menuForDarkPurpleSquare.removeDarkPurpleSquare6Menu(view: view)
                    darkPurpleIsTouched = false
                    darkPurpleSquare6IsTouched = false
                } else {
                    print("too low tech level")
                }
            } else {
                print("Not enough Gold")
            }
        } else {
            darkPurpleIsTouched = false
            menusToRemove(view: view)
        }
    }
    
    func builddarkPurpleSquareItem(darkPurpleSquareMenuItem: SKSpriteNode, nodeAtPoint: SKNode) {
        var itemToBuildOnDarkPurpleSquare = SKSpriteNode()
        var stopMenuBecauseBuildingInProgress: SKAction!
        var startMenuBecauseBuildingFinished: SKAction!
        var purpleSquareMethod: SKAction!
        
        switch darkPurpleSquareMenuItem {
            // LIGHT PURPLE SQUARE 2
        case menuForDarkPurpleSquare.darkPurpleSquare2MenuItem1:
            itemToBuildOnDarkPurpleSquare = SKSpriteNode(imageNamed: "Location 7-3")
            itemToBuildOnDarkPurpleSquare.setScale(0.08)
            itemToBuildOnDarkPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnDarkPurpleSquare.zPosition = 2
            itemToBuildOnDarkPurpleSquare.name = "powerPlantSquare2"
            labels.currency -= menuForDarkPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare2 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare2 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnDarkPurpleSquare)
            }
            
            // LIGHT PURPLE SQUARE 3
        case menuForDarkPurpleSquare.darkPurpleSquare3MenuItem1:
            itemToBuildOnDarkPurpleSquare = SKSpriteNode(imageNamed: "Location 7-3")
            itemToBuildOnDarkPurpleSquare.setScale(0.08)
            itemToBuildOnDarkPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnDarkPurpleSquare.zPosition = 2
            itemToBuildOnDarkPurpleSquare.name = "powerPlantSquare3"
            labels.currency -= menuForDarkPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare3 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare3 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnDarkPurpleSquare)
            }
            
            // LIGHT PURPLE SQUARE 4
        case menuForDarkPurpleSquare.darkPurpleSquare4MenuItem1:
            itemToBuildOnDarkPurpleSquare = SKSpriteNode(imageNamed: "Location 7-3")
            itemToBuildOnDarkPurpleSquare.setScale(0.08)
            itemToBuildOnDarkPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnDarkPurpleSquare.zPosition = 2
            itemToBuildOnDarkPurpleSquare.name = "powerPlantSquare4"
            labels.currency -= menuForDarkPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare4 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare4 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnDarkPurpleSquare)
            }
            
            // LIGHT PURPLE SQUARE 5
        case menuForDarkPurpleSquare.darkPurpleSquare5MenuItem1:
            itemToBuildOnDarkPurpleSquare = SKSpriteNode(imageNamed: "Location 7-3")
            itemToBuildOnDarkPurpleSquare.setScale(0.08)
            itemToBuildOnDarkPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnDarkPurpleSquare.zPosition = 2
            itemToBuildOnDarkPurpleSquare.name = "powerPlantSquare5"
            labels.currency -= menuForDarkPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare5 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare5 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnDarkPurpleSquare)
            }
            
        
            // LIGHT PURPLE SQUARE 6
        case menuForDarkPurpleSquare.darkPurpleSquare6MenuItem1:
            itemToBuildOnDarkPurpleSquare = SKSpriteNode(imageNamed: "Location 7-3")
            itemToBuildOnDarkPurpleSquare.setScale(0.08)
            itemToBuildOnDarkPurpleSquare.position = nodeAtPoint.position
            itemToBuildOnDarkPurpleSquare.zPosition = 2
            itemToBuildOnDarkPurpleSquare.name = "powerPlantSquare6"
            labels.currency -= menuForDarkPurpleSquare.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare6 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare6 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnDarkPurpleSquare)
            }
            
        default:
            break
        }
        
        whiteSquares.addChild(itemToBuildOnDarkPurpleSquare)
        
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
        buildingTimerLabel.position = CGPoint(x: itemToBuildOnDarkPurpleSquare.frame.midX, y: itemToBuildOnDarkPurpleSquare.frame.midY - buildingTimerLabel.frame.height / 2)
        buildingTimerLabel.zPosition = 2
        whiteSquares.addChild(buildingTimerLabel)
        
        var updateLabelText: SKAction
        updateLabelText = SKAction.run {
            buildingTimerLabel.text = "\(timeRemaining)"
        }
        var checkBuildingCompletion: SKAction
        checkBuildingCompletion = SKAction.run {
            self.checkIfAPowerPlantIsBuilt(timeRemaining: timeRemaining, nodeBuiltName: itemToBuildOnDarkPurpleSquare.name!)
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
        itemToBuildOnDarkPurpleSquare.run(endingSequence)
        
    }
    
    func checkIfAPowerPlantIsBuilt(timeRemaining: Int, nodeBuiltName: String) {
        if timeRemaining == 0 {
            switch nodeBuiltName {
            case "powerPlantSquare1":
                powerPlantFinishedBuildingOnSquare1 = true
            case "powerPlantSquare2":
                powerPlantFinishedBuildingOnSquare2 = true
            case "powerPlantSquare3":
                powerPlantFinishedBuildingOnSquare3 = true
            case "powerPlantSquare4":
                powerPlantFinishedBuildingOnSquare4 = true
            case "powerPlantSquare5":
                powerPlantFinishedBuildingOnSquare5 = true
            case "powerPlantSquare6":
                powerPlantFinishedBuildingOnSquare6 = true
            default:
                break
            }
        }
    }
    
    func menusToRemove(view: SKView) {
        if darkPurpleSquare2IsTouched == true {
            
            menuForDarkPurpleSquare.removeDarkPurpleSquare2Menu(view: view)
            darkPurpleSquare2IsTouched = false
            
        } else if darkPurpleSquare3IsTouched == true {
            
            menuForDarkPurpleSquare.removeDarkPurpleSquare3Menu(view: view)
            darkPurpleSquare3IsTouched = false
            
        } else if darkPurpleSquare4IsTouched == true {
            
            menuForDarkPurpleSquare.removeDarkPurpleSquare4Menu(view: view)
            darkPurpleSquare4IsTouched = false
            
        } else if darkPurpleSquare5IsTouched == true {
            
            menuForDarkPurpleSquare.removeDarkPurpleSquare5Menu(view: view)
            darkPurpleSquare5IsTouched = false
            
        } else if darkPurpleSquare6IsTouched == true {
            
            menuForDarkPurpleSquare.removeDarkPurpleSquare6Menu(view: view)
            darkPurpleSquare6IsTouched = false
            
        } else {
            
            return
        }
    }
}

