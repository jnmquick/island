//
//  TouchLogicForLightOrange.swift
//  mockup2
//
//  Created by Jason Quick on 6/30/23.
//

import Foundation
import SpriteKit

class LogicForLightOrangeSquares {
    var lightOrangeIsTouched = false
    var lightOrangeSquare1IsTouched = false
    var lightOrangeSquare2IsTouched = false
    var lightOrangeSquare3IsTouched = false
    var lightOrangeSquare4IsTouched = false
    var lightOrangeSquare5IsTouched = false
    var lightOrangeSquare6IsTouched = false
    
    var buildingOnSquare1 = false
    var buildingOnSquare2 = false
    var buildingOnSquare3 = false
    var buildingOnSquare4 = false
    var buildingOnSquare5 = false
    var buildingOnSquare6 = false
    
    var unitNumberID: Int = 0
    var orangeUnitArray = [SKSpriteNode]()
    
    func showMenuForLightOrange(view: SKView, nodeTouched: SKNode) {
        
        if nodeTouched.name == "jasmineSquare2" && lightOrangeIsTouched == false && buildingOnSquare2 != true {
            print("touched jasmine square 2")
            menuForLightOrangeSquare.createMenuForLightOrangeSquare2(view: view)
            menuForLightOrangeSquare.moveLightOrangeSquare2Menu(view: view)
            lightOrangeSquare2IsTouched = true
            lightOrangeIsTouched = true
        } else if nodeTouched.name == "jasmineSquare3" && lightOrangeIsTouched == false && buildingOnSquare3 != true {
            print("touched jasmine square 3")
            menuForLightOrangeSquare.createMenuForLightOrangeSquare3(view: view)
            menuForLightOrangeSquare.moveLightOrangeSquare3Menu(view: view)
            lightOrangeSquare3IsTouched = true
            lightOrangeIsTouched = true
        } else if nodeTouched.name == "jasmineSquare4" && lightOrangeIsTouched == false && buildingOnSquare4 != true {
            print("touched jasmine square 4")
            menuForLightOrangeSquare.createMenuForLightOrangeSquare4(view: view)
            menuForLightOrangeSquare.moveLightOrangeSquare4Menu(view: view)
            lightOrangeSquare4IsTouched = true
            lightOrangeIsTouched = true
        } else if nodeTouched.name == "jasmineSquare5" && lightOrangeIsTouched == false && buildingOnSquare5 != true {
            print("touched jasmine square 5")
            menuForLightOrangeSquare.createMenuForLightOrangeSquare5(view: view)
            menuForLightOrangeSquare.moveLightOrangeSquare5Menu(view: view)
            lightOrangeSquare5IsTouched = true
            lightOrangeIsTouched = true
        } else if nodeTouched.name == "jasmineSquare6" && lightOrangeIsTouched == false && buildingOnSquare6 != true {
            print("touched jasmine square 6")
            menuForLightOrangeSquare.createMenuForLightOrangeSquare6(view: view)
            menuForLightOrangeSquare.moveLightOrangeSquare6Menu(view: view)
            lightOrangeSquare6IsTouched = true
            lightOrangeIsTouched = true
        } else {
            itemOnLightOrangeSquareLogic(view: view, nodeTouched: nodeTouched)
        }
    }
    
    func itemOnLightOrangeSquareLogic(view: SKView, nodeTouched: SKNode) {
        
        if nodeTouched.name == "lightOrangeSquare2MenuItem1" && lightOrangeSquare2IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem1 {
                    // LIGHT ORANGE SQUARE 2
                    print("building units at light orange square 2")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare2Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare2IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare2MenuItem2" && lightOrangeSquare2IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare2Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare2IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare3MenuItem1" && lightOrangeSquare3IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem1 {
                    // LIGHT ORANGE SQUARE 3
                    print("building units at light orange square 3")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare3Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare3IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare3MenuItem2" && lightOrangeSquare3IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare3Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare3IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare4MenuItem1" && lightOrangeSquare4IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem1 {
                    // LIGHT ORANGE SQUARE 4
                    print("building units at light orange square 4")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare4Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare4IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare4MenuItem2" && lightOrangeSquare4IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare4Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare4IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare5MenuItem1" && lightOrangeSquare5IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem1 {
                    // LIGHT ORANGE SQUARE 5
                    print("building units at light orange square 5")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare5Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare5IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare5MenuItem2" && lightOrangeSquare5IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare5Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare5IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare6MenuItem1" && lightOrangeSquare6IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem1 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem1 {
                    // LIGHT ORANGE SQUARE 6
                    print("building units at light orange square 6")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare6Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare6IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else if nodeTouched.name == "lightOrangeSquare6MenuItem2" && lightOrangeSquare6IsTouched == true {
            
            if labels.currency >= menuForLightOrangeSquare.priceOfMenuItem2 {
                if labels.techLevel >= menuForLightOrangeSquare.techLevelRequirementMenuItem2 {
                    print("Do something here for menu item 2 selection")
                    buildingUnitsLightOrange(nodeNamed: nodeTouched.name!, view: view)
                    menuForLightOrangeSquare.removeLightOrangeSquare6Menu(view: view)
                    lightOrangeIsTouched = false
                    lightOrangeSquare6IsTouched = false
                } else {
                    print("tech level too low")
                }
            } else {
                print("Not enough Gold")
            }
            
        } else {
            lightOrangeIsTouched = false
            menusToRemove(view: view)
        }
    }
    
    func menusToRemove(view: SKView) {
        if lightOrangeSquare2IsTouched == true {
            
            menuForLightOrangeSquare.removeLightOrangeSquare2Menu(view: view)
            lightOrangeSquare2IsTouched = false
            
        } else if lightOrangeSquare3IsTouched == true {
            
            menuForLightOrangeSquare.removeLightOrangeSquare3Menu(view: view)
            lightOrangeSquare3IsTouched = false
            
        } else if lightOrangeSquare4IsTouched == true {
            
            menuForLightOrangeSquare.removeLightOrangeSquare4Menu(view: view)
            lightOrangeSquare4IsTouched = false
            
        } else if lightOrangeSquare5IsTouched == true {
            
            menuForLightOrangeSquare.removeLightOrangeSquare5Menu(view: view)
            lightOrangeSquare5IsTouched = false
            
        } else if lightOrangeSquare6IsTouched == true {
            
            menuForLightOrangeSquare.removeLightOrangeSquare6Menu(view: view)
            lightOrangeSquare6IsTouched = false
            
        } else {
            
            return
        }
    }
    
    func buildingUnitsLightOrange(nodeNamed: String, view: SKView) {
        
        var lightOrangeUnit: SKSpriteNode!
        
        var timeRemaining = 10
        let timeRemainingLabel = SKLabelNode(fontNamed: "BebasNeue-Regular")
        timeRemainingLabel.text = "\(timeRemaining)"
        timeRemainingLabel.fontSize = 30
        timeRemainingLabel.fontColor = ghostWhite
        timeRemainingLabel.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        timeRemainingLabel.zPosition = 2
        
        switch nodeNamed {
        
        case "lightOrangeSquare2MenuItem1":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare2.frame.midX, y: whiteSquares.whiteSquare2.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem1
        case "lightOrangeSquare3MenuItem1":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem1
        case "lightOrangeSquare4MenuItem1":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare4.frame.midX, y: whiteSquares.whiteSquare4.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem1
        case "lightOrangeSquare5MenuItem1":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare5.frame.midX, y: whiteSquares.whiteSquare5.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem1
        case "lightOrangeSquare6MenuItem1":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare6.frame.midX, y: whiteSquares.whiteSquare6.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem1
        case "lightOrangeSquare2MenuItem2":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip2")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare2.frame.midX, y: whiteSquares.whiteSquare2.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem2
        case "lightOrangeSquare3MenuItem2":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip2")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem2
        case "lightOrangeSquare4MenuItem2":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip2")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare4.frame.midX, y: whiteSquares.whiteSquare4.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem2
        case "lightOrangeSquare5MenuItem2":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip2")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare5.frame.midX, y: whiteSquares.whiteSquare5.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem2
        case "lightOrangeSquare6MenuItem2":
            lightOrangeUnit = SKSpriteNode(imageNamed: "BattleShip2")
            lightOrangeUnit.zPosition = 2
            lightOrangeUnit.setScale(0.0)
            lightOrangeUnit.position = CGPoint(x: whiteSquares.whiteSquare3.frame.midX, y: whiteSquares.whiteSquare3.frame.maxY + whiteSquares.whiteSquare3.frame.size.height * 1.5)
            timeRemainingLabel.position = CGPoint(x: whiteSquares.whiteSquare6.frame.midX, y: whiteSquares.whiteSquare6.frame.midY)
            labels.currency -= menuForLightOrangeSquare.priceOfMenuItem2
        default:
            break
        }
        orangeUnits.addChild(lightOrangeUnit)
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
        scaleUnit = SKAction.scale(to: 0.18, duration: 0.5)
        
        let speed: CGFloat = 100.0
        var duration: CGFloat = 0.0
        var nextPosition: CGPoint
        var orangeUnitMoveAction: SKAction
        nextPosition = CGPoint(x: view.frame.midX, y: view.frame.midY + view.frame.size.height / 8)
        duration = distanceBetween(point: lightOrangeUnit.position, andPoint: nextPosition) / speed
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
            lightOrangeUnit.name = "Jasmine \(self.unitNumberID)"
        }
        
        var appendOrangeArray: SKAction
        appendOrangeArray = SKAction.run {
            self.orangeUnitArray.append(lightOrangeUnit)
        }
        
        var endingSequence: SKAction
        endingSequence = SKAction.sequence([repeatLabelAction, removeLabel, scaleUnit, orangeUnitMoveAction, incrementUnitsCount, incrementUnitNumberID, assignUnitName, appendOrangeArray])
        
        lightOrangeUnit.run(endingSequence)
    }
    
    func distanceBetween(point p1:CGPoint, andPoint p2:CGPoint) -> CGFloat {
            return sqrt(pow((p2.x - p1.x), 2) + pow((p2.y - p1.y), 2))
        }
}
