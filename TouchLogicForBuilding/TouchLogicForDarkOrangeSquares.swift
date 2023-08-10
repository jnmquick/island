//
//  TouchLogicForDarkOrangeSquares.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class LogicForDarkOrangeSquares {
    var darkOrangeIsTouched = false
    var darkOrangeSquare1IsTouched = false
    var darkOrangeSquare2IsTouched = false
    var darkOrangeSquare3IsTouched = false
    var darkOrangeSquare4IsTouched = false
    var darkOrangeSquare5IsTouched = false
    var darkOrangeSquare6IsTouched = false
    
    var buildingOnSquare1 = false
    var buildingOnSquare2 = false
    var buildingOnSquare3 = false
    var buildingOnSquare4 = false
    var buildingOnSquare5 = false
    var buildingOnSquare6 = false
    
    var menuItem2IsSelected = false
    var unitNumberID: Int = 0
    var orangeUnitArray = [SKSpriteNode]()
    
    func showMenuForDarkOrange(view: SKView, nodeTouched: SKNode) {
        if nodeTouched.name == "xanthousSquare2" && darkOrangeIsTouched == false && buildingOnSquare2 != true {
            print("touched xanthous square 2")
            menuForDarkOrangeSquare.createMenuForDarkOrangeSquare2(view: view)
            menuForDarkOrangeSquare.moveDarkOrangeSquare2Menu(view: view)
            darkOrangeSquare2IsTouched = true
            darkOrangeIsTouched = true
        } else if nodeTouched.name == "xanthousSquare3" && darkOrangeIsTouched == false && buildingOnSquare3 != true {
            print("touched xanthous square 3")
            menuForDarkOrangeSquare.createMenuForDarkOrangeSquare3(view: view)
            menuForDarkOrangeSquare.moveDarkOrangeSquare3Menu(view: view)
            darkOrangeSquare3IsTouched = true
            darkOrangeIsTouched = true
        } else if nodeTouched.name == "xanthousSquare4" && darkOrangeIsTouched == false && buildingOnSquare4 != true {
            print("touched xanthous square 4")
            menuForDarkOrangeSquare.createMenuForDarkOrangeSquare4(view: view)
            menuForDarkOrangeSquare.moveDarkOrangeSquare4Menu(view: view)
            darkOrangeSquare4IsTouched = true
            darkOrangeIsTouched = true
        } else if nodeTouched.name == "xanthousSquare5" && darkOrangeIsTouched == false && buildingOnSquare5 != true {
            print("touched xanthous square 5")
            menuForDarkOrangeSquare.createMenuForDarkOrangeSquare5(view: view)
            menuForDarkOrangeSquare.moveDarkOrangeSquare5Menu(view: view)
            darkOrangeSquare5IsTouched = true
            darkOrangeIsTouched = true
        } else if nodeTouched.name == "xanthousSquare6" && darkOrangeIsTouched == false && buildingOnSquare6 != true {
            print("touched xanthous square 6")
            menuForDarkOrangeSquare.createMenuForDarkOrangeSquare6(view: view)
            menuForDarkOrangeSquare.moveDarkOrangeSquare6Menu(view: view)
            darkOrangeSquare6IsTouched = true
            darkOrangeIsTouched = true
        } else {
            itemOnDarkOrangeSquareLogic(view: view, nodeTouched: nodeTouched)
        }
    }
    
    func itemOnDarkOrangeSquareLogic(view: SKView, nodeTouched: SKNode) {
        
        if nodeTouched.name == "darkOrangeSquare2MenuItem1" && darkOrangeSquare2IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem1 {
                    // DARK Orange SQUARE 2
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare2Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare2IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare2MenuItem2" && darkOrangeSquare2IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare2Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare2IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare3MenuItem1" && darkOrangeSquare3IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem1 {
                    // DARK Orange SQUARE 3
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare3Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare3IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare3MenuItem2" && darkOrangeSquare3IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare3Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare3IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare4MenuItem1" && darkOrangeSquare4IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem1 {
                    // DARK Orange SQUARE 4
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare4Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare4IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare4MenuItem2" && darkOrangeSquare4IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare4Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare4IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare5MenuItem1" && darkOrangeSquare5IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem1 {
                    // DARK Orange SQUARE 5
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare5Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare5IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare5MenuItem2" && darkOrangeSquare5IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare5Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare5IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare6MenuItem1" && darkOrangeSquare6IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem1 {
                    // DARK Orange SQUARE 6
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare6Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare6IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "darkOrangeSquare6MenuItem2" && darkOrangeSquare6IsTouched == true {
            
            if labels.currency >= menuForDarkOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForDarkOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsDarkOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForDarkOrangeSquare.removeDarkOrangeSquare6Menu(view: view)
                    darkOrangeIsTouched = false
                    darkOrangeSquare6IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else {
            darkOrangeIsTouched = false
            menusToRemove(view: view)
        }
    }
    func menusToRemove(view: SKView) {
        if darkOrangeSquare2IsTouched == true {
            
            menuForDarkOrangeSquare.removeDarkOrangeSquare2Menu(view: view)
            darkOrangeSquare2IsTouched = false
            
        } else if darkOrangeSquare3IsTouched == true {
            
            menuForDarkOrangeSquare.removeDarkOrangeSquare3Menu(view: view)
            darkOrangeSquare3IsTouched = false
            
        } else if darkOrangeSquare4IsTouched == true {
            
            menuForDarkOrangeSquare.removeDarkOrangeSquare4Menu(view: view)
            darkOrangeSquare4IsTouched = false
            
        } else if darkOrangeSquare5IsTouched == true {
            
            menuForDarkOrangeSquare.removeDarkOrangeSquare5Menu(view: view)
            darkOrangeSquare5IsTouched = false
            
        } else if darkOrangeSquare6IsTouched == true {
            
            menuForDarkOrangeSquare.removeDarkOrangeSquare6Menu(view: view)
            darkOrangeSquare6IsTouched = false
            
        } else {
            
            return
        }
    }
    
    func buildingUnitsDarkOrange(nodeNamed: String, view: SKView) {
        
        var darkOrangeUnit: SKSpriteNode!
        
        var timeRemaining = 10
        let timeRemainingLabel = SKLabelNode(fontNamed: "BebasNeue-Regular")
        timeRemainingLabel.text = "\(timeRemaining)"
        timeRemainingLabel.fontSize = 30
        timeRemainingLabel.fontColor = ghostWhite
        timeRemainingLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        timeRemainingLabel.zPosition = 2
        
        switch nodeNamed {
        case "darkOrangeSquare2MenuItem1":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip1")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare2.frame.midX, y: whiteSquares.whiteSquare2.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem1
        case "darkOrangeSquare3MenuItem1":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip1")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem1
        case "darkOrangeSquare4MenuItem1":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip1")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare4.frame.midX, y: whiteSquares.whiteSquare4.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem1
        case "darkOrangeSquare5MenuItem1":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip1")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare5.frame.midX, y: whiteSquares.whiteSquare5.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem1
        case "darkOrangeSquare6MenuItem1":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip1")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare6.frame.midX, y: whiteSquares.whiteSquare6.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem1
        case "darkOrangeSquare2MenuItem2":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip2")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            menuItem2IsSelected = true
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare2.frame.midX, y: whiteSquares.whiteSquare2.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem2
        case "darkOrangeSquare3MenuItem2":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip2")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            menuItem2IsSelected = true
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem2
        case "darkOrangeSquare4MenuItem2":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip2")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            menuItem2IsSelected = true
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare4.frame.midX, y: whiteSquares.whiteSquare4.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem2
        case "darkOrangeSquare5MenuItem2":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip2")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            menuItem2IsSelected = true
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare5.frame.midX, y: whiteSquares.whiteSquare5.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem2
        case "darkOrangeSquare6MenuItem2":
            darkOrangeUnit = SKSpriteNode(imageNamed: "PirateShip2")
            darkOrangeUnit.zPosition = 2
            darkOrangeUnit.setScale(0.0)
            darkOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            menuItem2IsSelected = true
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare6.frame.midX, y: whiteSquares.whiteSquare6.frame.midY)
            labels.currency -= menuForDarkOrangeSquare.priceOfMenuItem2
        default:
            break
        }
        orangeUnits2.addChild(darkOrangeUnit)
        whiteSquares.addChild(timeRemainingLabel)
        
        var decrementTimeRemaining: SKAction
        decrementTimeRemaining = SKAction.run {
            timeRemaining -= 1
        }
        var orangeUnitWait: SKAction
        orangeUnitWait = SKAction.wait(forDuration: 1.5)
        var updateLabel: SKAction
        updateLabel = SKAction.run {
            timeRemainingLabel.text = "\(timeRemaining)"
        }
        
        var labelSequence: SKAction
        labelSequence = SKAction.sequence([decrementTimeRemaining, updateLabel, orangeUnitWait])
        
        var repeatLabelAction: SKAction
        repeatLabelAction = SKAction.repeat(labelSequence, count: 10)
        
        var removeLabel: SKAction
        removeLabel = SKAction.run {
            timeRemainingLabel.removeFromParent()
        }
        
        var scaleUnit: SKAction
        if menuItem2IsSelected {
            scaleUnit = SKAction.scale(to: 0.27, duration: 0.5)
            menuItem2IsSelected = false
        } else {
            scaleUnit = SKAction.scale(to: 0.18, duration: 0.5)
        }
        
        let speed: CGFloat = 100.0
        var duration: CGFloat = 0.0
        var nextPosition: CGPoint
        var orangeUnitMoveAction: SKAction
        nextPosition = CGPoint(x: view.frame.midX, y: view.frame.midY + view.frame.size.height / 8)
        duration = distanceBetween(point: darkOrangeUnit.position, andPoint: nextPosition) / speed
        orangeUnitMoveAction = SKAction.move(to: nextPosition, duration: duration)
        
        var incrementUnitsCount: SKAction
        incrementUnitsCount = SKAction.run {
            labels.numberOfUnits += 1
        }
        
        var incrementUnitNumberID: SKAction
        incrementUnitNumberID = SKAction.run {
            self.unitNumberID += 1
        }
        
        var assignUnitName: SKAction
        assignUnitName = SKAction.run {
            darkOrangeUnit.name = "Xanthous \(self.unitNumberID)"
        }
        
        var appendOrangeArray: SKAction
        appendOrangeArray = SKAction.run {
            self.orangeUnitArray.append(darkOrangeUnit)
        }
        
        var endingSequence: SKAction
        endingSequence = SKAction.sequence([repeatLabelAction, removeLabel, scaleUnit, orangeUnitMoveAction, incrementUnitsCount, incrementUnitNumberID, assignUnitName, appendOrangeArray])
        
        darkOrangeUnit.run(endingSequence)
    }
    
    func distanceBetween(point p1:CGPoint, andPoint p2:CGPoint) -> CGFloat {
            return sqrt(pow((p2.x - p1.x), 2) + pow((p2.y - p1.y), 2))
        }
}
