//
//  CharacterMenuScene.swift
//  mockup2
//
//  Created by Jason Quick on 7/24/23.
//

import Foundation
import SpriteKit

class CharacterMenuScene: SKScene {
    
    let characterMenuBackground = CharacterMenuBackground()
    let characterMenuButtons = CharacterMenuButtons()
    let characterMenu = CharacterMenu()
    
    override func didMove(to view: SKView) {
        characterMenuBackground.createBackground(view: view)
        addChild(characterMenuBackground)
        
        characterMenuButtons.createbackButton(view: view)
        addChild(characterMenuButtons)
        
        characterMenu.createCharacterHeadline(view: view)
        characterMenu.createCharacter1(view: view)
        characterMenu.createCharacter2(view: view)
        characterMenu.createCharacter3(view: view)
        characterMenu.createCharacter4(view: view)
        characterMenu.createCharacter5(view: view)
        characterMenu.createCharacter6(view: view)
        characterMenu.createCharacter7(view: view)
        characterMenu.createCharacter8(view: view)
        characterMenu.createCharacter9(view: view)
        characterMenu.createCharacter10(view: view)
        characterMenu.createCharacter11(view: view)
        addChild(characterMenu)
        
        addChild(characterDetails)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let locationOfTouch = touch.location(in: self)
            let nodeTouched = atPoint(locationOfTouch)
            
            characterDetails.displayCharacterMenuDetails(for: nodeTouched, view: self.view!)
            
            if nodeTouched.name == "Back Button" {
                runChangeScene()
            }
            
            print(nodeTouched.name ?? "Node name unknown")
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    func changeScene() {
        let sceneToMoveTo = MainMenuScene(size: view!.bounds.size)
        sceneToMoveTo.size = view!.bounds.size
        sceneToMoveTo.scaleMode = .aspectFill
        let myTransition = SKTransition.fade(withDuration: 0.25)
        self.view!.presentScene(sceneToMoveTo, transition: myTransition)
    }
        
    func runChangeScene() {
        let changeSceneAction = SKAction.run(changeScene)
        self.run(changeSceneAction)
    }
}
