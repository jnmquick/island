//
//  CharacterDetails.swift
//  mockup2
//
//  Created by Jason Quick on 7/24/23.
//

import Foundation
import SpriteKit

class CharacterDetails: SKNode {
    
    var characterDetail: SKSpriteNode!
    var detailsAreShowing = false
    
    func createCharacterDetails(view: SKView, imageNamed: String) {
        characterDetail = SKSpriteNode(imageNamed: imageNamed)
        characterDetail.setScale(0.44)
        characterDetail.position = CGPoint(x: view.frame.midX, y: view.frame.midY - view.frame.size.height)
        characterDetail.zPosition = 4
        addChild(characterDetail)
    }
    func moveDetailsUp(view: SKView) {
        let moveAction = SKAction.move(by: CGVector(dx: 0.0, dy: characterDetail.position.y + view.frame.size.height * 1.5), duration: 0.25)
        characterDetail.run(moveAction)
    }
    func moveDetailsDown(view: SKView) {
        let move = SKAction.move(by: CGVector(dx: 0.0, dy: characterDetail.position.y - view.frame.size.height * 1.5), duration: 0.25)
        let remove = SKAction.removeFromParent()
        let moveAction = SKAction.sequence([move, remove])
        characterDetail.run(moveAction)
    }
    
    func displayLongPressCharacterDetails(for nodeTouched: SKNode, view: SKView) {
        
        if detailsAreShowing == false {
            switch nodeTouched.name {
                
            case "Character 1":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail1")
//                moveDetailsUp(view: view)
            case "Character 2":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail2")
//                moveDetailsUp(view: view)
            case "Character 3":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail3")
//                moveDetailsUp(view: view)
            case "Character 4":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail4")
//                moveDetailsUp(view: view)
            case "Character 5":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail5")
//                moveDetailsUp(view: view)
            case "Character 6":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail6")
//                moveDetailsUp(view: view)
            case "Character 7":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail7")
//                moveDetailsUp(view: view)
            case "Character 8":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail8")
//                moveDetailsUp(view: view)
            case "Character 9":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail9")
//                moveDetailsUp(view: view)
            case "Character 10":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail10")
//                moveDetailsUp(view: view)
            case "Character 11":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail11")
//                moveDetailsUp(view: view)
            default:
                break
                
            }
        }
    }
    
    func displayCharacterMenuDetails(for nodeTouched: SKNode, view: SKView) {
        
        if detailsAreShowing == false {
            switch nodeTouched.name {
                
            case "Character 1":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail1")
                moveDetailsUp(view: view)
            case "Character 2":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail2")
                moveDetailsUp(view: view)
            case "Character 3":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail3")
                moveDetailsUp(view: view)
            case "Character 4":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail4")
                moveDetailsUp(view: view)
            case "Character 5":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail5")
                moveDetailsUp(view: view)
            case "Character 6":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail6")
                moveDetailsUp(view: view)
            case "Character 7":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail7")
                moveDetailsUp(view: view)
            case "Character 8":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail8")
                moveDetailsUp(view: view)
            case "Character 9":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail9")
                moveDetailsUp(view: view)
            case "Character 10":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail10")
                moveDetailsUp(view: view)
            case "Character 11":
                detailsAreShowing = true
                createCharacterDetails(view: view, imageNamed: "CharacterDetail11")
                moveDetailsUp(view: view)
            default:
                break
                
            }
        } else {
            moveDetailsDown(view: view)
            detailsAreShowing = false
        }
    }
}
