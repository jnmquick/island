//
//  TouchLogicForWhiteSquares.swift
//  mockup2
//
//  Created by Jason Quick on 6/27/23.
//

import Foundation
import SpriteKit

class LogicForWhiteSquares {
    var whiteSquareIsTouched = false
    var whiteSquare1IsTouched = false
    var whiteSquare2IsTouched = false
    var whiteSquare3IsTouched = false
    var whiteSquare4IsTouched = false
    var whiteSquare5IsTouched = false
    var whiteSquare6IsTouched = false
    
    var buildingWhiteSquare5and6 = false
    
    var lightPurpleFinishedBuildingOnSquare1 = false
    var lightPurpleFinishedBuildingOnSquare2 = false
    var lightPurpleFinishedBuildingOnSquare3 = false
    var lightPurpleFinishedBuildingOnSquare4 = false
    var lightPurpleFinishedBuildingOnSquare5 = false
    var lightPurpleFinishedBuildingOnSquare6 = false
    
    func showMenuForWhiteSquare(view: SKView, nodeTouched: SKNode) {
        if nodeTouched.name == "whiteSquare1" && whiteSquareIsTouched == false {
            print("touched white square 1")
            menuForWhiteSquare1.createMenuForWhiteSquare1(view: view)
            menuForWhiteSquare1.moveWhiteSquare1Menu(view: view)
            whiteSquare1IsTouched = true
//            whiteSquares.whiteSquare1.strokeColor = whiteSquare1IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare1.lineWidth = whiteSquare1IsTouched ? 3 : 0
            whiteSquareIsTouched = true
        } else if nodeTouched.name == "whiteSquare2" && whiteSquareIsTouched == false {
            print("touched white square 2")
            menuForWhiteSquare2.createMenuForWhiteSquare2(view: view)
            menuForWhiteSquare2.moveWhiteSquare2Menu(view: view)
            menu2ForWhiteSquare2.createMenu2ForWhiteSquare2(view: view)
            dots.createDots(view: view, squareNamed: menuForWhiteSquare2.whiteSquare2Menu)
            dots.moveDots(view: view, squareNamed: menuForWhiteSquare2.whiteSquare2Menu)
            whiteSquare2IsTouched = true
//            whiteSquares.whiteSquare2.strokeColor = whiteSquare2IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare2.lineWidth = whiteSquare2IsTouched ? 3 : 0
            whiteSquareIsTouched = true
            gesture.createGesture(view: view)
        } else if nodeTouched.name == "whiteSquare3" && whiteSquareIsTouched == false {
            print("touched white square 3")
            menuForWhiteSquare3.createMenuForWhiteSquare3(view: view)
            menuForWhiteSquare3.moveWhiteSquare3Menu(view: view)
            menu2ForWhiteSquare3.createMenu2ForWhiteSquare3(view: view)
            dots.createDots(view: view, squareNamed: menuForWhiteSquare3.whiteSquare3Menu)
            dots.moveDots(view: view, squareNamed: menuForWhiteSquare3.whiteSquare3Menu)
            whiteSquare3IsTouched = true
//            whiteSquares.whiteSquare3.strokeColor = whiteSquare3IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare3.lineWidth = whiteSquare3IsTouched ? 3 : 0
            whiteSquareIsTouched = true
            gesture.createGesture(view: view)
        } else if nodeTouched.name == "whiteSquare4" && whiteSquareIsTouched == false {
            print("touched white square 4")
            menuForWhiteSquare4.createMenuForWhiteSquare4(view: view)
            menuForWhiteSquare4.moveWhiteSquare4Menu(view: view)
            menu2ForWhiteSquare4.createMenu2ForWhiteSquare4(view: view)
            dots.createDots(view: view, squareNamed: menuForWhiteSquare4.whiteSquare4Menu)
            dots.moveDots(view: view, squareNamed: menuForWhiteSquare4.whiteSquare4Menu)
            whiteSquare4IsTouched = true
//            whiteSquares.whiteSquare4.strokeColor = whiteSquare4IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare4.lineWidth = whiteSquare4IsTouched ? 3 : 0
            whiteSquareIsTouched = true
            gesture.createGesture(view: view)
        } else if nodeTouched.name == "whiteSquare5" && whiteSquareIsTouched == false && buildingWhiteSquare5and6 == false {
            print("touched white square 5")
            menuForWhiteSquare5.createMenuForWhiteSquare5(view: view)
            menuForWhiteSquare5.moveWhiteSquare5Menu(view: view)
            menu2ForWhiteSquare5.createMenu2ForWhiteSquare5(view: view)
            dots.createDots(view: view, squareNamed: menuForWhiteSquare5.whiteSquare5Menu)
            dots.moveDots(view: view, squareNamed: menuForWhiteSquare5.whiteSquare5Menu)
            whiteSquare5IsTouched = true
//            whiteSquares.whiteSquare5.strokeColor = whiteSquare5IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare5.lineWidth = whiteSquare5IsTouched ? 3 : 0
            whiteSquareIsTouched = true
            gesture.createGesture(view: view)
        } else if nodeTouched.name == "whiteSquare6" && whiteSquareIsTouched == false && buildingWhiteSquare5and6 == false {
            print("touched white square 6")
            menuForWhiteSquare6.createMenuForWhiteSquare6(view: view)
            menuForWhiteSquare6.moveWhiteSquare6Menu(view: view)
            menu2ForWhiteSquare6.createMenu2ForWhiteSquare6(view: view)
            dots.createDots(view: view, squareNamed: menuForWhiteSquare6.whiteSquare6Menu)
            dots.moveDots(view: view, squareNamed: menuForWhiteSquare6.whiteSquare6Menu)
            whiteSquare6IsTouched = true
//            whiteSquares.whiteSquare6.strokeColor = whiteSquare6IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare6.lineWidth = whiteSquare6IsTouched ? 3 : 0
            whiteSquareIsTouched = true
            gesture.createGesture(view: view)
        } else {
            addItemOnWhiteSquareLogic(view: view, nodeTouched: nodeTouched)
        }
    }
    func addItemOnWhiteSquareLogic(view: SKView, nodeTouched: SKNode) {
        
        if nodeTouched.name == "whiteSquare1MenuItem1" && whiteSquare1IsTouched == true {
            if labels.currency >= menuForWhiteSquare1.priceOfMenuItem1 {
                if labels.techLevel >= menuForWhiteSquare1.techLevelRequirementMenuItem1 {
                    if menuForWhiteSquare1.menuItem1WasBuilt == false {
                        // WHITE SQUARE 1 MENU ITEM 1
                        print("upgrading Base")
                        whiteSquares.upgradeWhiteSquares(view: view)
                        menuForWhiteSquare1.removeWhiteSquare1Menu(view: view)
                        menuForWhiteSquare1.menuItem1WasBuilt = true
                        whiteSquareIsTouched = false
                        whiteSquare1IsTouched = false
//                        whiteSquares.whiteSquare1.strokeColor = whiteSquare1IsTouched ? eerieBlack : ghostWhite
//                        whiteSquares.whiteSquare1.lineWidth = whiteSquare1IsTouched ? 3 : 0
                    } else {
                        print("Already Upgraded This")
                    }
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare2MenuItem1" && whiteSquare2IsTouched == true {
            
            if labels.currency >= menuForWhiteSquare2.priceOfMenuItem1 {
                if labels.techLevel >= menuForWhiteSquare2.techLevelRequirementMenuItem1 {
                    // WHITE SQUARE 2 MENU ITEM 1
                    print("building menu item 1 at white square 2")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare2.whiteSquare2MenuItem1, nodeAtPoint: whiteSquares.whiteSquare2)
                    menuForWhiteSquare2.removeWhiteSquare2Menu(view: view)
                    menu2ForWhiteSquare2.removeWhiteSquare2Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare2.whiteSquare2Menu)
                    whiteSquareIsTouched = false
                    whiteSquare2IsTouched = false
//                    whiteSquares.whiteSquare2.strokeColor = whiteSquare2IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare2.lineWidth = whiteSquare2IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare2MenuItem2" && whiteSquare2IsTouched == true {
            
            if labels.currency >= menuForWhiteSquare2.priceOfMenuItem2 {
                if labels.techLevel >= menuForWhiteSquare2.techLevelRequirementMenuItem2 {
                    // WHITE SQUARE 2 MENU ITEM 2
                    print("building menu item 2 at white square 2")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare2.whiteSquare2MenuItem2, nodeAtPoint: whiteSquares.whiteSquare2)
                    menuForWhiteSquare2.removeWhiteSquare2Menu(view: view)
                    menu2ForWhiteSquare2.removeWhiteSquare2Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare2.whiteSquare2Menu)
                    whiteSquareIsTouched = false
                    whiteSquare2IsTouched = false
//                    whiteSquares.whiteSquare2.strokeColor = whiteSquare2IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare2.lineWidth = whiteSquare2IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare2MenuItem3" && whiteSquare2IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare2.priceOfMenuItem3 {
                if labels.techLevel >= menu2ForWhiteSquare2.techLevelRequirementMenuItem3 {
                    // WHITE SQUARE 2 MENU ITEM 3
                    print("building menu item 3 at white square 1")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare2.whiteSquare2MenuItem3, nodeAtPoint: whiteSquares.whiteSquare2)
                    menuForWhiteSquare2.removeWhiteSquare2Menu(view: view)
                    menu2ForWhiteSquare2.removeWhiteSquare2Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare2.whiteSquare2Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare2IsTouched = false
//                    whiteSquares.whiteSquare2.strokeColor = whiteSquare2IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare2.lineWidth = whiteSquare2IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare2MenuItem4" && whiteSquare2IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare2.priceOfMenuItem4 {
                if labels.techLevel >= menu2ForWhiteSquare2.techLevelRequirementMenuItem4 {
                    // WHITE SQUARE 2 MENU ITEM 4
                    print("building menu item 4 at white square 2")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare2.whiteSquare2MenuItem4, nodeAtPoint: whiteSquares.whiteSquare2)
                    menuForWhiteSquare2.removeWhiteSquare2Menu(view: view)
                    menu2ForWhiteSquare2.removeWhiteSquare2Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare2.whiteSquare2Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare2IsTouched = false
//                    whiteSquares.whiteSquare2.strokeColor = whiteSquare2IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare2.lineWidth = whiteSquare2IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare3MenuItem1" && whiteSquare3IsTouched == true {
            
            if labels.currency >= menuForWhiteSquare3.priceOfMenuItem1 {
                if labels.techLevel >= menuForWhiteSquare3.techLevelRequirementMenuItem1 {
                    // WHITE SQUARE 3 MENU ITEM 1
                    print("building menu item 1 at white square 3")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare3.whiteSquare3MenuItem1, nodeAtPoint: whiteSquares.whiteSquare3)
                    menuForWhiteSquare3.removeWhiteSquare3Menu(view: view)
                    menu2ForWhiteSquare3.removeWhiteSquare3Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare3.whiteSquare3Menu)
                    whiteSquareIsTouched = false
                    whiteSquare3IsTouched = false
//                    whiteSquares.whiteSquare3.strokeColor = whiteSquare3IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare3.lineWidth = whiteSquare3IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare3MenuItem2" && whiteSquare3IsTouched == true {
            
            if labels.currency >= menuForWhiteSquare3.priceOfMenuItem2 {
                if labels.techLevel >= menuForWhiteSquare3.techLevelRequirementMenuItem2 {
                    // WHITE SQUARE 3 MENU ITEM 2
                    print("building menu item 2 at white square 3")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare3.whiteSquare3MenuItem2, nodeAtPoint: whiteSquares.whiteSquare3)
                    menuForWhiteSquare3.removeWhiteSquare3Menu(view: view)
                    menu2ForWhiteSquare3.removeWhiteSquare3Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare3.whiteSquare3Menu)
                    whiteSquareIsTouched = false
                    whiteSquare3IsTouched = false
//                    whiteSquares.whiteSquare3.strokeColor = whiteSquare3IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare3.lineWidth = whiteSquare3IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare3MenuItem3" && whiteSquare3IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare3.priceOfMenuItem3 {
                if labels.techLevel >= menu2ForWhiteSquare3.techLevelRequirementMenuItem3 {
                    // WHITE SQUARE 3 MENU ITEM 3
                    print("building menu item 3 at white square 3")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare3.whiteSquare3MenuItem3, nodeAtPoint: whiteSquares.whiteSquare3)
                    menuForWhiteSquare3.removeWhiteSquare3Menu(view: view)
                    menu2ForWhiteSquare3.removeWhiteSquare3Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare3.whiteSquare3Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare3IsTouched = false
//                    whiteSquares.whiteSquare3.strokeColor = whiteSquare3IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare3.lineWidth = whiteSquare3IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare3MenuItem4" && whiteSquare3IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare3.priceOfMenuItem4 {
                if labels.techLevel >= menu2ForWhiteSquare3.techLevelRequirementMenuItem4 {
                    // WHITE SQUARE 3 MENU ITEM 4
                    print("building menu item 4 at white square 3")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare3.whiteSquare3MenuItem4, nodeAtPoint: whiteSquares.whiteSquare3)
                    menuForWhiteSquare3.removeWhiteSquare3Menu(view: view)
                    menu2ForWhiteSquare3.removeWhiteSquare3Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare3.whiteSquare3Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare3IsTouched = false
//                    whiteSquares.whiteSquare3.strokeColor = whiteSquare3IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare3.lineWidth = whiteSquare3IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare4MenuItem1" && whiteSquare4IsTouched == true {
            if labels.currency >= menuForWhiteSquare4.priceOfMenuItem1 {
                if labels.techLevel >= menuForWhiteSquare4.techLevelRequirementMenuItem1 {
                    // WHITE SQUARE 4 MENU ITEM 1
                    print("building menu item 1 at white square 4")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare4.whiteSquare4MenuItem1, nodeAtPoint: whiteSquares.whiteSquare4)
                    menuForWhiteSquare4.removeWhiteSquare4Menu(view: view)
                    menu2ForWhiteSquare4.removeWhiteSquare4Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare4.whiteSquare4Menu)
                    whiteSquareIsTouched = false
                    whiteSquare4IsTouched = false
//                    whiteSquares.whiteSquare4.strokeColor = whiteSquare4IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare4.lineWidth = whiteSquare4IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare4MenuItem2" && whiteSquare4IsTouched == true {
            if labels.currency >= menuForWhiteSquare4.priceOfMenuItem2 {
                if labels.techLevel >= menuForWhiteSquare4.techLevelRequirementMenuItem2 {
                    // WHITE SQUARE 4 MENU ITEM 2
                    print("building menu item 2 at white square 4")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare4.whiteSquare4MenuItem2, nodeAtPoint: whiteSquares.whiteSquare4)
                    menuForWhiteSquare4.removeWhiteSquare4Menu(view: view)
                    menu2ForWhiteSquare4.removeWhiteSquare4Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare4.whiteSquare4Menu)
                    whiteSquareIsTouched = false
                    whiteSquare4IsTouched = false
//                    whiteSquares.whiteSquare4.strokeColor = whiteSquare4IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare4.lineWidth = whiteSquare4IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare4MenuItem3" && whiteSquare4IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare4.priceOfMenuItem3 {
                if labels.techLevel >= menu2ForWhiteSquare4.techLevelRequirementMenuItem3 {
                    // WHITE SQUARE 4 MENU ITEM 3
                    print("building menu item 3 at white square 4")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare4.whiteSquare4MenuItem3, nodeAtPoint: whiteSquares.whiteSquare4)
                    menuForWhiteSquare4.removeWhiteSquare4Menu(view: view)
                    menu2ForWhiteSquare4.removeWhiteSquare4Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare4.whiteSquare4Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare4IsTouched = false
//                    whiteSquares.whiteSquare4.strokeColor = whiteSquare4IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare4.lineWidth = whiteSquare4IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare4MenuItem4" && whiteSquare4IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare4.priceOfMenuItem4 {
                if labels.techLevel >= menu2ForWhiteSquare4.techLevelRequirementMenuItem4 {
                    // WHITE SQUARE 4 MENU ITEM 4
                    print("building menu item 4 at white square 4")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare4.whiteSquare4MenuItem4, nodeAtPoint: whiteSquares.whiteSquare4)
                    menuForWhiteSquare4.removeWhiteSquare4Menu(view: view)
                    menu2ForWhiteSquare4.removeWhiteSquare4Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare4.whiteSquare4Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare4IsTouched = false
//                    whiteSquares.whiteSquare4.strokeColor = whiteSquare4IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare4.lineWidth = whiteSquare4IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare5MenuItem1" && whiteSquare5IsTouched == true {
            if labels.currency >= menuForWhiteSquare5.priceOfMenuItem1 {
                if labels.techLevel >= menuForWhiteSquare5.techLevelRequirementMenuItem1 {
                    // WHITE SQUARE 5 MENU ITEM 1
                    print("building menu item 1 at white square 5")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare5.whiteSquare5MenuItem1, nodeAtPoint: whiteSquares.whiteSquare5)
                    menuForWhiteSquare5.removeWhiteSquare5Menu(view: view)
                    menu2ForWhiteSquare5.removeWhiteSquare5Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare5.whiteSquare5Menu)
                    whiteSquareIsTouched = false
                    whiteSquare5IsTouched = false
//                    whiteSquares.whiteSquare5.strokeColor = whiteSquare5IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare5.lineWidth = whiteSquare5IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare5MenuItem2" && whiteSquare5IsTouched == true {
            if labels.currency >= menuForWhiteSquare5.priceOfMenuItem2 {
                if labels.techLevel >= menuForWhiteSquare5.techLevelRequirementMenuItem2 {
                    // WHITE SQUARE 5 MENU ITEM 2
                    print("building menu item 2 at white square 5")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare5.whiteSquare5MenuItem2, nodeAtPoint: whiteSquares.whiteSquare5)
                    menuForWhiteSquare5.removeWhiteSquare5Menu(view: view)
                    menu2ForWhiteSquare5.removeWhiteSquare5Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare5.whiteSquare5Menu)
                    whiteSquareIsTouched = false
                    whiteSquare5IsTouched = false
//                    whiteSquares.whiteSquare5.strokeColor = whiteSquare5IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare5.lineWidth = whiteSquare5IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare5MenuItem3" && whiteSquare5IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare5.priceOfMenuItem3 {
                if labels.techLevel >= menu2ForWhiteSquare5.techLevelRequirementMenuItem3 {
                    // WHITE SQUARE 5 MENU ITEM 3
                    print("building menu item 3 at white square 5")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare5.whiteSquare5MenuItem3, nodeAtPoint: whiteSquares.whiteSquare5)
                    menuForWhiteSquare5.removeWhiteSquare5Menu(view: view)
                    menu2ForWhiteSquare5.removeWhiteSquare5Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare5.whiteSquare5Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare5IsTouched = false
//                    whiteSquares.whiteSquare5.strokeColor = whiteSquare5IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare5.lineWidth = whiteSquare5IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare5MenuItem4" && whiteSquare5IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare5.priceOfMenuItem4 {
                if labels.techLevel >= menu2ForWhiteSquare5.techLevelRequirementMenuItem4 {
                    // WHITE SQUARE 5 MENU ITEM 4
                    print("building menu item 4 at white square 5")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare5.whiteSquare5MenuItem4, nodeAtPoint: whiteSquares.whiteSquare5)
                    menuForWhiteSquare5.removeWhiteSquare5Menu(view: view)
                    menu2ForWhiteSquare5.removeWhiteSquare5Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare5.whiteSquare5Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare5IsTouched = false
//                    whiteSquares.whiteSquare5.strokeColor = whiteSquare5IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare5.lineWidth = whiteSquare5IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare6MenuItem1" && whiteSquare6IsTouched == true {
            if labels.currency >= menuForWhiteSquare6.priceOfMenuItem1 {
                if labels.techLevel >= menuForWhiteSquare6.techLevelRequirementMenuItem1 {
                    // WHITE SQUARE 6 MENU ITEM 1
                    print("building menu item 1 at white square 6")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare6.whiteSquare6MenuItem1, nodeAtPoint: whiteSquares.whiteSquare6)
                    menuForWhiteSquare6.removeWhiteSquare6Menu(view: view)
                    menu2ForWhiteSquare6.removeWhiteSquare6Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare6.whiteSquare6Menu)
                    whiteSquareIsTouched = false
                    whiteSquare6IsTouched = false
//                    whiteSquares.whiteSquare6.strokeColor = whiteSquare6IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare6.lineWidth = whiteSquare6IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare6MenuItem2" && whiteSquare6IsTouched == true {
            if labels.currency >= menuForWhiteSquare6.priceOfMenuItem2 {
                if labels.techLevel >= menuForWhiteSquare6.techLevelRequirementMenuItem2 {
                    // WHITE SQUARE 6 MENU ITEM 2
                    print("building menu item 2 at white square 6")
                    buildWhiteSquareItem(whiteSquareMenuItem: menuForWhiteSquare6.whiteSquare6MenuItem2, nodeAtPoint: whiteSquares.whiteSquare6)
                    menuForWhiteSquare6.removeWhiteSquare6Menu(view: view)
                    menu2ForWhiteSquare6.removeWhiteSquare6Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menuForWhiteSquare6.whiteSquare6Menu)
                    whiteSquareIsTouched = false
                    whiteSquare6IsTouched = false
//                    whiteSquares.whiteSquare6.strokeColor = whiteSquare6IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare6.lineWidth = whiteSquare6IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare6MenuItem3" && whiteSquare6IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare6.priceOfMenuItem3 {
                if labels.techLevel >= menu2ForWhiteSquare6.techLevelRequirementMenuItem3 {
                    // WHITE SQUARE 6 MENU ITEM 3
                    print("building menu item 3 at white square 6")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare6.whiteSquare6MenuItem3, nodeAtPoint: whiteSquares.whiteSquare6)
                    menuForWhiteSquare6.removeWhiteSquare6Menu(view: view)
                    menu2ForWhiteSquare6.removeWhiteSquare6Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare6.whiteSquare6Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare6IsTouched = false
//                    whiteSquares.whiteSquare6.strokeColor = whiteSquare6IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare6.lineWidth = whiteSquare6IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "whiteSquare6MenuItem4" && whiteSquare6IsTouched == true {
            
            if labels.currency >= menu2ForWhiteSquare6.priceOfMenuItem4 {
                if labels.techLevel >= menu2ForWhiteSquare6.techLevelRequirementMenuItem4 {
                    // WHITE SQUARE 6 MENU ITEM 4
                    print("building menu item 4 at white square 6")
                    buildWhiteSquareItem(whiteSquareMenuItem: menu2ForWhiteSquare6.whiteSquare6MenuItem4, nodeAtPoint: whiteSquares.whiteSquare6)
                    menuForWhiteSquare6.removeWhiteSquare6Menu(view: view)
                    menu2ForWhiteSquare6.removeWhiteSquare6Menu2(view: view)
                    dots.removeDots(view: view, squareNamed: menu2ForWhiteSquare6.whiteSquare6Menu2)
                    whiteSquareIsTouched = false
                    whiteSquare6IsTouched = false
//                    whiteSquares.whiteSquare6.strokeColor = whiteSquare6IsTouched ? eerieBlack : ghostWhite
//                    whiteSquares.whiteSquare6.lineWidth = whiteSquare6IsTouched ? 3 : 0
                    gesture.removeGesture(view: view)
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else {
            // if the node touched isn't menu 1 backdrop and menu 2 backdrop
            // and menu 3 backdrop and 4 etc. then do the following... if it isn't any of them
            // then do the following
            if nodeTouched.name != "whiteSquare1Menu" && nodeTouched.name != "whiteSquare2Menu" && nodeTouched.name != "whiteSquare3Menu" && nodeTouched.name != "whiteSquare4Menu" && nodeTouched.name != "whiteSquare5Menu" && nodeTouched.name != "whiteSquare6Menu" && nodeTouched.name != "whiteSquare1MenuItem1" && nodeTouched.name != "whiteSquare2MenuItem1" && nodeTouched.name != "whiteSquare3MenuItem1" && nodeTouched.name != "whiteSquare4MenuItem1" && nodeTouched.name != "whiteSquare5MenuItem1" && nodeTouched.name != "whiteSquare6MenuItem1" && nodeTouched.name != "whiteSquare1MenuItem2" && nodeTouched.name != "whiteSquare2MenuItem2" && nodeTouched.name != "whiteSquare3MenuItem2" && nodeTouched.name != "whiteSquare4MenuItem2" && nodeTouched.name != "whiteSquare5MenuItem2" && nodeTouched.name != "whiteSquare6MenuItem2" && nodeTouched.name != "whiteSquare1MenuItem3" && nodeTouched.name != "whiteSquare2MenuItem3" && nodeTouched.name != "whiteSquare3MenuItem3" && nodeTouched.name != "whiteSquare4MenuItem3" && nodeTouched.name != "whiteSquare5MenuItem3" && nodeTouched.name != "whiteSquare6MenuItem3" && nodeTouched.name != "whiteSquare1MenuItem4" && nodeTouched.name != "whiteSquare2MenuItem4" && nodeTouched.name != "whiteSquare3MenuItem4" && nodeTouched.name != "whiteSquare4MenuItem4" && nodeTouched.name != "whiteSquare5MenuItem4" && nodeTouched.name != "whiteSquare6MenuItem4" {
                whiteSquareIsTouched = false
                menusToRemove(view: view)
                if gesture.gestureWasCreated {
                    gesture.removeGesture(view: view)
                }
            }
        }
    }
    
    func buildWhiteSquareItem(whiteSquareMenuItem: SKSpriteNode, nodeAtPoint: SKNode) {
        var itemToBuildOnWhiteSquare = SKSpriteNode()
        var stopMenuBecauseBuildingInProgress: SKAction!
        var startMenuBecauseBuildingFinished: SKAction!
        var purpleSquareMethod: SKAction!
        
        switch whiteSquareMenuItem {
            // WHITE SQUARE 2
        case menuForWhiteSquare2.whiteSquare2MenuItem1:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 4-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "amethystSquare2"
            labels.currency -= menuForWhiteSquare2.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare2 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare2 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menuForWhiteSquare2.whiteSquare2MenuItem2:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 1-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "grapeSquare2"
            labels.currency -= menuForWhiteSquare2.priceOfMenuItem2
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare2 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare2 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menu2ForWhiteSquare2.whiteSquare2MenuItem3:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 5-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "jasmineSquare2"
            labels.currency -= menu2ForWhiteSquare2.priceOfMenuItem3
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare2 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare2 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightOrange.implementLightOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
        
        case menu2ForWhiteSquare2.whiteSquare2MenuItem4:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 6-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "xanthousSquare2"
            labels.currency -= menu2ForWhiteSquare2.priceOfMenuItem4
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare2 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare2 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkOrange.implementDarkOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            // WHITE SQUARE 3
        case menuForWhiteSquare3.whiteSquare3MenuItem1:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 4-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "amethystSquare3"
            labels.currency -= menuForWhiteSquare3.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare3 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare3 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
    
        case menuForWhiteSquare3.whiteSquare3MenuItem2:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 1-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "grapeSquare3"
            labels.currency -= menuForWhiteSquare3.priceOfMenuItem2
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare3 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare3 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menu2ForWhiteSquare3.whiteSquare3MenuItem3:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 5-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "jasmineSquare3"
            labels.currency -= menu2ForWhiteSquare3.priceOfMenuItem3
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare3 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare3 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightOrange.implementLightOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
        
        case menu2ForWhiteSquare3.whiteSquare3MenuItem4:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 6-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "xanthousSquare3"
            labels.currency -= menu2ForWhiteSquare3.priceOfMenuItem4
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare3 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare3 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkOrange.implementDarkOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            // WHITE SQUARE 4
        case menuForWhiteSquare4.whiteSquare4MenuItem1:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 4-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "amethystSquare4"
            labels.currency -= menuForWhiteSquare4.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare4 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare4 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menuForWhiteSquare4.whiteSquare4MenuItem2:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 1-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "grapeSquare4"
            labels.currency -= menuForWhiteSquare4.priceOfMenuItem2
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare4 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare4 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menu2ForWhiteSquare4.whiteSquare4MenuItem3:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 5-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "jasmineSquare4"
            labels.currency -= menu2ForWhiteSquare4.priceOfMenuItem3
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare4 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare4 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightOrange.implementLightOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
        
        case menu2ForWhiteSquare4.whiteSquare4MenuItem4:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 6-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "xanthousSquare4"
            labels.currency -= menu2ForWhiteSquare4.priceOfMenuItem4
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare4 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare4 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkOrange.implementDarkOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            // WHITE SQUARE 5
        case menuForWhiteSquare5.whiteSquare5MenuItem1:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 4-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "amethystSquare5"
            labels.currency -= menuForWhiteSquare5.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare5 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare5 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menuForWhiteSquare5.whiteSquare5MenuItem2:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 1-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "grapeSquare5"
            labels.currency -= menuForWhiteSquare5.priceOfMenuItem2
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare5 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare5 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menu2ForWhiteSquare5.whiteSquare5MenuItem3:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 5-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "jasmineSquare5"
            labels.currency -= menu2ForWhiteSquare5.priceOfMenuItem3
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare5 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare5 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightOrange.implementLightOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
        
        case menu2ForWhiteSquare5.whiteSquare5MenuItem4:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 6-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "xanthousSquare5"
            labels.currency -= menu2ForWhiteSquare5.priceOfMenuItem4
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare5 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare5 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkOrange.implementDarkOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            // WHITE SQUARE 6
        case menuForWhiteSquare6.whiteSquare6MenuItem1:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 4-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "amethystSquare6"
            labels.currency -= menuForWhiteSquare6.priceOfMenuItem1
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare6 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightPurpleSquares.buildingOnSquare6 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightPurple.implementLightPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menuForWhiteSquare6.whiteSquare6MenuItem2:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 1-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "grapeSquare6"
            labels.currency -= menuForWhiteSquare6.priceOfMenuItem2
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare6 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkPurpleSquares.buildingOnSquare6 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkPurple.implementDarkPurpleAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        case menu2ForWhiteSquare6.whiteSquare6MenuItem3:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 5-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "jasmineSquare6"
            labels.currency -= menu2ForWhiteSquare6.priceOfMenuItem3
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare6 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForLightOrangeSquares.buildingOnSquare6 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForLightOrange.implementLightOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
        
        case menu2ForWhiteSquare6.whiteSquare6MenuItem4:
            itemToBuildOnWhiteSquare = SKSpriteNode(imageNamed: "Location 6-3")
            itemToBuildOnWhiteSquare.setScale(0.08)
            itemToBuildOnWhiteSquare.position = nodeAtPoint.position
            itemToBuildOnWhiteSquare.zPosition = 1
            itemToBuildOnWhiteSquare.name = "xanthousSquare6"
            labels.currency -= menu2ForWhiteSquare1.priceOfMenuItem4
            stopMenuBecauseBuildingInProgress = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare6 = true
            }
            startMenuBecauseBuildingFinished = SKAction.run {
                logicForDarkOrangeSquares.buildingOnSquare6 = false
            }
            purpleSquareMethod = SKAction.run {
                actionsForDarkOrange.implementDarkOrangeAction(itemToBuildOnWhiteSquare: itemToBuildOnWhiteSquare)
            }
            
        default:
            break
        }
        
        whiteSquares.addChild(itemToBuildOnWhiteSquare)
        
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
        buildingTimerLabel.position = CGPoint(x: itemToBuildOnWhiteSquare.frame.midX, y: itemToBuildOnWhiteSquare.frame.midY - buildingTimerLabel.frame.height / 2)
        buildingTimerLabel.zPosition = 2
        whiteSquares.addChild(buildingTimerLabel)
        
        var updateLabelText: SKAction
        updateLabelText = SKAction.run {
            buildingTimerLabel.text = "\(timeRemaining)"
        }
        var checkBuildingCompletion: SKAction
        checkBuildingCompletion = SKAction.run {
            self.checkIfALightPurpleIsBuilt(timeRemaining: timeRemaining, nodeBuiltName: itemToBuildOnWhiteSquare.name!)
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
        itemToBuildOnWhiteSquare.run(endingSequence)
        
    }
    
    func menusToRemove(view: SKView) {
        if whiteSquare1IsTouched == true {
            
            menuForWhiteSquare1.removeWhiteSquare1Menu(view: view)
            whiteSquare1IsTouched = false
//            whiteSquares.whiteSquare1.strokeColor = whiteSquare1IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare1.lineWidth = whiteSquare1IsTouched ? 3 : 0
            
        } else if whiteSquare2IsTouched == true {
            
            menuForWhiteSquare2.removeWhiteSquare2Menu(view: view)
            menu2ForWhiteSquare2.removeWhiteSquare2Menu2(view: view)
            dots.removeDots(view: view, squareNamed: menuForWhiteSquare2.whiteSquare2Menu)
            whiteSquare2IsTouched = false
//            whiteSquares.whiteSquare2.strokeColor = whiteSquare2IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare2.lineWidth = whiteSquare2IsTouched ? 3 : 0
            
        } else if whiteSquare3IsTouched == true {
            
            menuForWhiteSquare3.removeWhiteSquare3Menu(view: view)
            menu2ForWhiteSquare3.removeWhiteSquare3Menu2(view: view)
            dots.removeDots(view: view, squareNamed: menuForWhiteSquare3.whiteSquare3Menu)
            whiteSquare3IsTouched = false
//            whiteSquares.whiteSquare3.strokeColor = whiteSquare3IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare3.lineWidth = whiteSquare3IsTouched ? 3 : 0
            
        } else if whiteSquare4IsTouched == true {
            
            menuForWhiteSquare4.removeWhiteSquare4Menu(view: view)
            menu2ForWhiteSquare4.removeWhiteSquare4Menu2(view: view)
            dots.removeDots(view: view, squareNamed: menuForWhiteSquare4.whiteSquare4Menu)
            whiteSquare4IsTouched = false
//            whiteSquares.whiteSquare4.strokeColor = whiteSquare4IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare4.lineWidth = whiteSquare4IsTouched ? 3 : 0
            
        } else if whiteSquare5IsTouched == true {
            
            menuForWhiteSquare5.removeWhiteSquare5Menu(view: view)
            menu2ForWhiteSquare5.removeWhiteSquare5Menu2(view: view)
            dots.removeDots(view: view, squareNamed: menuForWhiteSquare5.whiteSquare5Menu)
            whiteSquare5IsTouched = false
//            whiteSquares.whiteSquare5.strokeColor = whiteSquare5IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare5.lineWidth = whiteSquare5IsTouched ? 3 : 0
            
        } else if whiteSquare6IsTouched == true {
            
            menuForWhiteSquare6.removeWhiteSquare6Menu(view: view)
            menu2ForWhiteSquare6.removeWhiteSquare6Menu2(view: view)
            dots.removeDots(view: view, squareNamed: menuForWhiteSquare6.whiteSquare6Menu)
            whiteSquare6IsTouched = false
//            whiteSquares.whiteSquare6.strokeColor = whiteSquare6IsTouched ? eerieBlack : ghostWhite
//            whiteSquares.whiteSquare6.lineWidth = whiteSquare6IsTouched ? 3 : 0
            
        } else {
            
            return
        }
    }
    func checkIfALightPurpleIsBuilt(timeRemaining: Int, nodeBuiltName: String) {
        if timeRemaining == 0 {
            switch nodeBuiltName {
            case "amethystSquare1":
                lightPurpleFinishedBuildingOnSquare1 = true
            case "amethystSquare2":
                lightPurpleFinishedBuildingOnSquare2 = true
            case "amethystSquare3":
                lightPurpleFinishedBuildingOnSquare3 = true
            case "amethystSquare4":
                lightPurpleFinishedBuildingOnSquare4 = true
            case "amethystSquare5":
                lightPurpleFinishedBuildingOnSquare5 = true
            case "amethystSquare6":
                lightPurpleFinishedBuildingOnSquare6 = true
            default:
                break
            }
        }
    }
}
