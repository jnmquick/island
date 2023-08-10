//
//  TouchLogicCharacterScene.swift
//  mockup2
//
//  Created by Jason Quick on 7/7/23.
//

import Foundation
import SpriteKit

class LogicForCharacterScene {
    
    var character1MenuIsShowing = false
    var character2MenuIsShowing = false
    var character3MenuIsShowing = false
    
    var errorIsShowing = false
    
    func logicForCharacterSelect(nodeTouched: SKNode, view: SKView, runChangeScene: () -> Void) {
        if nodeTouched.name == "choice1" {
            characters.showMenuForCharacter1(view: view)
            character1MenuIsShowing = true
        } else if nodeTouched.name == "select1" {
            choseCharacter1 = true
            character1MenuIsShowing = false
            characters.removeCharacterMenu(number: 1)
            if choseCharacter2 {
                choseCharacter2 = false
                characters.greenCheck.removeFromParent()
            } else if choseCharacter3 {
                choseCharacter3 = false
                characters.greenCheck.removeFromParent()
            }
            characters.createGreenCheck(position: characters.character1)
        } else if nodeTouched.name == "choice2" {
            characters.showMenuForCharacter2(view: view)
            character2MenuIsShowing = true
        } else if nodeTouched.name == "select2" {
            choseCharacter2 = true
            character2MenuIsShowing = false
            characters.removeCharacterMenu(number: 2)
            if choseCharacter1 {
                choseCharacter1 = false
                characters.greenCheck.removeFromParent()
            } else if choseCharacter3 {
                choseCharacter3 = false
                characters.greenCheck.removeFromParent()
            }
            characters.createGreenCheck(position: characters.character2)
        } else if nodeTouched.name == "choice3" {
            characters.showMenuForCharacter3(view: view)
            character3MenuIsShowing = true
        } else if nodeTouched.name == "select3" {
            choseCharacter3 = true
            character3MenuIsShowing = false
            characters.removeCharacterMenu(number: 3)
            if choseCharacter2 {
                choseCharacter2 = false
                characters.greenCheck.removeFromParent()
            } else if choseCharacter1 {
                choseCharacter1 = false
                characters.greenCheck.removeFromParent()
            }
            characters.createGreenCheck(position: characters.character3)
        } else if nodeTouched.name == "ready" && choseCharacter1 {
            runChangeScene()
        } else if nodeTouched.name == "ready" && choseCharacter2 {
            runChangeScene()
        } else if nodeTouched.name == "ready" && choseCharacter3 {
            runChangeScene()
        } else {
            menusToRemove()
        }
        
        if nodeTouched.name == "ready" && choseCharacter1 != true && choseCharacter2 != true && choseCharacter3 != true {
            print("Please choose a character")
            errorIsShowing = true
            characters.warnPlayerToSelect(view: view)
        } else if errorIsShowing {
            characters.characterSelectError.removeFromParent()
//            characters.errorBackdrop.removeFromParent()
            errorIsShowing = false
        }
    }
    
    func menusToRemove() {
        if character1MenuIsShowing {
            characters.removeCharacterMenu(number: 1)
            character1MenuIsShowing = false
        } else if character2MenuIsShowing {
            characters.removeCharacterMenu(number: 2)
            character2MenuIsShowing = false
        } else if character3MenuIsShowing {
            characters.removeCharacterMenu(number: 3)
            character3MenuIsShowing = false
        } else {
            return
        }
    }
}
