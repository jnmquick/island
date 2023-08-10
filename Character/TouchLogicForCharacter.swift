//
//  TouchLogicForCharacter.swift
//  mockup2
//
//  Created by Jason Quick on 7/5/23.
//

import Foundation
import SpriteKit

class LogicForCharacter {
    
    var characterIsTouched = false
    var character1IsTouched = false
    var character2IsTouched = false
    var character3IsTouched = false
    var character4IsTouched = false
    var character5IsTouched = false
    var character6IsTouched = false
    var character7IsTouched = false
    var character8IsTouched = false
    var character9IsTouched = false
    var character10IsTouched = false
    var character11IsTouched = false
    
    func showMenuForCharacter(view: SKView, nodeTouched: SKNode) {
        if nodeTouched.name == "Character 1-3" && characterIsTouched == false {
            print("touched character 1")
            menuForCharacter1Ability.createMenuForCharacter1(view: view)
            menuForCharacter1Ability.moveCharacter1Menu(view: view)
            character1IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 2-3" && characterIsTouched == false {
            print("touched character 2")
            menuForCharacter2Ability.createMenuForCharacter2(view: view)
            menuForCharacter2Ability.moveCharacter2Menu(view: view)
            character2IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 3-3" && characterIsTouched == false {
            print("touched character 3")
            menuForCharacter3Ability.createMenuForCharacter3(view: view)
            menuForCharacter3Ability.moveCharacter3Menu(view: view)
            character3IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 4-3" && characterIsTouched == false {
            print("touched character 4")
            menuForCharacter4Ability.createMenuForCharacter4(view: view)
            menuForCharacter4Ability.moveCharacter4Menu(view: view)
            character4IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 5-3" && characterIsTouched == false {
            print("touched character 5")
            menuForCharacter5Ability.createMenuForCharacter5(view: view)
            menuForCharacter5Ability.moveCharacter5Menu(view: view)
            character5IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 6-3" && characterIsTouched == false {
            print("touched character 6")
            menuForCharacter6Ability.createMenuForCharacter6(view: view)
            menuForCharacter6Ability.moveCharacter6Menu(view: view)
            character6IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 7-3" && characterIsTouched == false {
            print("touched character 7")
            menuForCharacter7Ability.createMenuForCharacter7(view: view)
            menuForCharacter7Ability.moveCharacter7Menu(view: view)
            character7IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 8-3" && characterIsTouched == false {
            print("touched character 8")
            menuForCharacter8Ability.createMenuForCharacter8(view: view)
            menuForCharacter8Ability.moveCharacter8Menu(view: view)
            character8IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 9-3" && characterIsTouched == false {
            print("touched character 9")
            menuForCharacter9Ability.createMenuForCharacter9(view: view)
            menuForCharacter9Ability.moveCharacter9Menu(view: view)
            character9IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 10-3" && characterIsTouched == false {
            print("touched character 10")
            menuForCharacter10Ability.createMenuForCharacter10(view: view)
            menuForCharacter10Ability.moveCharacter10Menu(view: view)
            character10IsTouched = true
            characterIsTouched = true
        } else if nodeTouched.name == "Character 11-3" && characterIsTouched == false {
            print("touched character 11")
            menuForCharacter11Ability.createMenuForCharacter11(view: view)
            menuForCharacter11Ability.moveCharacter11Menu(view: view)
            character11IsTouched = true
            characterIsTouched = true
        } else {
            characterItemLogic(view: view, nodeTouched: nodeTouched)
        }
    }
    
    func characterItemLogic(view: SKView, nodeTouched: SKNode) {
        
        if nodeTouched.name == "character1MenuItem1" && character1IsTouched == true {
            if labels.currency >= menuForCharacter1Ability.priceOfCharacter1Item1 {
                if labels.techLevel >= menuForCharacter1Ability.techLevelRequirementCharacter1Item1 {
                    // CHARACTER 1 MENU ITEM 1
                    print("menu item 1 for character 1")
                    labels.currency -= menuForCharacter1Ability.priceOfCharacter1Item1
                    menuForCharacter1Ability.removeCharacter1Menu(view: view)
                    characterIsTouched = false
                    character1IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character2MenuItem1" && character2IsTouched == true {
            if labels.currency >= menuForCharacter2Ability.priceOfCharacter2Item1 {
                if labels.techLevel >= menuForCharacter2Ability.techLevelRequirementCharacter2Item1 {
                    // CHARACTER 2 MENU ITEM 1
                    print("menu item 1 for character 2")
                    labels.currency -= menuForCharacter2Ability.priceOfCharacter2Item1
                    menuForCharacter2Ability.removeCharacter2Menu(view: view)
                    characterIsTouched = false
                    character2IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character3MenuItem1" && character3IsTouched == true {
            
            if labels.currency >= menuForCharacter3Ability.priceOfCharacter3Item1 {
                if labels.techLevel >= menuForCharacter3Ability.techLevelRequirementCharacter3Item1 {
                    // CHARACTER 3 MENU ITEM 1
                    print("menu item 1 for character 3")
                    labels.currency -= menuForCharacter3Ability.priceOfCharacter3Item1
                    menuForCharacter3Ability.removeCharacter3Menu(view: view)
                    characterIsTouched = false
                    character3IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character4MenuItem1" && character4IsTouched == true {
            
            if labels.currency >= menuForCharacter4Ability.priceOfCharacter4Item1 {
                if labels.techLevel >= menuForCharacter4Ability.techLevelRequirementCharacter4Item1 {
                    // CHARACTER 4 MENU ITEM 1
                    print("menu item 1 for character 4")
                    labels.currency -= menuForCharacter4Ability.priceOfCharacter4Item1
                    menuForCharacter4Ability.removeCharacter4Menu(view: view)
                    characterIsTouched = false
                    character4IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character5MenuItem1" && character5IsTouched == true {
            
            if labels.currency >= menuForCharacter5Ability.priceOfCharacter5Item1 {
                if labels.techLevel >= menuForCharacter5Ability.techLevelRequirementCharacter5Item1 {
                    // CHARACTER 5 MENU ITEM 1
                    print("menu item 1 for character 5")
                    labels.currency -= menuForCharacter5Ability.priceOfCharacter5Item1
                    menuForCharacter5Ability.removeCharacter5Menu(view: view)
                    characterIsTouched = false
                    character5IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character6MenuItem1" && character6IsTouched == true {
            if labels.currency >= menuForCharacter6Ability.priceOfCharacter6Item1 {
                if labels.techLevel >= menuForCharacter6Ability.techLevelRequirementCharacter6Item1 {
                    // CHARACTER 6 MENU ITEM 1
                    print("menu item 1 for character 6")
                    labels.currency -= menuForCharacter6Ability.priceOfCharacter6Item1
                    menuForCharacter6Ability.removeCharacter6Menu(view: view)
                    characterIsTouched = false
                    character6IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character7MenuItem1" && character7IsTouched == true {
            
            if labels.currency >= menuForCharacter7Ability.priceOfCharacter7Item1 {
                if labels.techLevel >= menuForCharacter7Ability.techLevelRequirementCharacter7Item1 {
                    // CHARACTER 7 MENU ITEM 1
                    print("menu item 1 for character 7")
                    labels.currency -= menuForCharacter7Ability.priceOfCharacter7Item1
                    menuForCharacter7Ability.removeCharacter7Menu(view: view)
                    characterIsTouched = false
                    character7IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character8MenuItem1" && character8IsTouched == true {
            
            if labels.currency >= menuForCharacter8Ability.priceOfCharacter8Item1 {
                if labels.techLevel >= menuForCharacter8Ability.techLevelRequirementCharacter8Item1 {
                    // CHARACTER 8 MENU ITEM 1
                    print("menu item 1 for character 8")
                    labels.currency -= menuForCharacter8Ability.priceOfCharacter8Item1
                    menuForCharacter8Ability.removeCharacter8Menu(view: view)
                    characterIsTouched = false
                    character8IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character9MenuItem1" && character9IsTouched == true {
            
            if labels.currency >= menuForCharacter9Ability.priceOfCharacter9Item1 {
                if labels.techLevel >= menuForCharacter9Ability.techLevelRequirementCharacter9Item1 {
                    // CHARACTER 9 MENU ITEM 1
                    print("menu item 1 for character 9")
                    labels.currency -= menuForCharacter9Ability.priceOfCharacter9Item1
                    menuForCharacter9Ability.removeCharacter9Menu(view: view)
                    characterIsTouched = false
                    character9IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character10MenuItem1" && character10IsTouched == true {
            
            if labels.currency >= menuForCharacter10Ability.priceOfCharacter10Item1 {
                if labels.techLevel >= menuForCharacter10Ability.techLevelRequirementCharacter10Item1 {
                    // CHARACTER 10 MENU ITEM 1
                    print("menu item 1 for character 10")
                    labels.currency -= menuForCharacter10Ability.priceOfCharacter10Item1
                    menuForCharacter10Ability.removeCharacter10Menu(view: view)
                    characterIsTouched = false
                    character10IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        } else if nodeTouched.name == "character11MenuItem1" && character11IsTouched == true {
            
            if labels.currency >= menuForCharacter11Ability.priceOfCharacter11Item1 {
                if labels.techLevel >= menuForCharacter11Ability.techLevelRequirementCharacter11Item1 {
                    // CHARACTER 11 MENU ITEM 1
                    print("menu item 1 for character 11")
                    labels.currency -= menuForCharacter11Ability.priceOfCharacter11Item1
                    menuForCharacter11Ability.removeCharacter11Menu(view: view)
                    characterIsTouched = false
                    character11IsTouched = false
                } else {
                    print("Too Low Tech Level")
                }
            } else {
                print("Not Enough Crystals")
            }
            
        }else {
            
            if nodeTouched.name != "character1Menu" && nodeTouched.name != "character2Menu" && nodeTouched.name != "character3Menu" && nodeTouched.name != "character4Menu" && nodeTouched.name != "character5Menu" && nodeTouched.name != "character6Menu" && nodeTouched.name != "character7Menu" && nodeTouched.name != "character8Menu" && nodeTouched.name != "character9Menu" && nodeTouched.name != "character10Menu" && nodeTouched.name != "character11Menu" {
                characterIsTouched = false
                menusToRemove(view: view)
            }
        }
    }
    func menusToRemove(view: SKView) {
        if character1IsTouched == true {
            
            menuForCharacter1Ability.removeCharacter1Menu(view: view)
            character1IsTouched = false
            
        } else if character2IsTouched == true {
            
            menuForCharacter2Ability.removeCharacter2Menu(view: view)
            character2IsTouched = false
            
        } else if character3IsTouched == true {
            
            menuForCharacter3Ability.removeCharacter3Menu(view: view)
            character3IsTouched = false
            
        } else if character4IsTouched == true {
            
            menuForCharacter4Ability.removeCharacter4Menu(view: view)
            character4IsTouched = false
            
        } else if character5IsTouched == true {
            
            menuForCharacter5Ability.removeCharacter5Menu(view: view)
            character5IsTouched = false
            
        } else if character6IsTouched == true {
            
            menuForCharacter6Ability.removeCharacter6Menu(view: view)
            character6IsTouched = false
            
        } else if character7IsTouched == true {
            
            menuForCharacter7Ability.removeCharacter7Menu(view: view)
            character7IsTouched = false
            
        } else if character8IsTouched == true {
            
            menuForCharacter8Ability.removeCharacter8Menu(view: view)
            character8IsTouched = false
            
        } else if character9IsTouched == true {
            
            menuForCharacter9Ability.removeCharacter9Menu(view: view)
            character9IsTouched = false
            
        } else if character10IsTouched == true {
            
            menuForCharacter10Ability.removeCharacter10Menu(view: view)
            character10IsTouched = false
            
        } else if character11IsTouched == true {
            
            menuForCharacter11Ability.removeCharacter11Menu(view: view)
            character11IsTouched = false
            
        } else {
            
            return
        }
    }
}
