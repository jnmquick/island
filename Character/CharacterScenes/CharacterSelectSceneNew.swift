//
//  CharacterSelectSceneNew.swift
//  mockup2
//
//  Created by Jason Quick on 7/25/23.
//

import Foundation
import SpriteKit

class CharacterSelectSceneNew: SKScene {
    let characterSelectBackground = CharacterSelectBackground()
    var changingScene = false
    
    override func didMove(to view: SKView) {
        characterSelectBackground.createBackground(view: view)
        addChild(characterSelectBackground)
        
        characterSelection.createSceneTitle(view: view)
        characterSelection.createCharacterChoices(view: view)
        longGesture.createCharacterGesture(view: view)
        addChild(characterSelection)
        addChild(characterSelection.characters)
        addChild(characterDetails)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let locationOfTouch = touch.location(in: self)
            let nodeTouched = atPoint(locationOfTouch)
            
            characterSelection.characterSelectionLogic(nodeTouched: nodeTouched)
            characterDetails.displayLongPressCharacterDetails(for: nodeTouched, view: self.view!)
            
            print(nodeTouched.name ?? "node name unknown")
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        if characterSelection.timeRemaining == 0 && !changingScene {
            if characterSelection.choseCharacter == nil {
                let choice = Bool.random()
                if choice == true {
                    characterSelection.choseCharacter = characterSelection.k
                } else {
                    characterSelection.choseCharacter = characterSelection.l
                }
                print("choice", choice)
                print(characterSelection.choseCharacter!)
            }
            changingScene = true
            longGesture.removeCharacterGesture(view: self.view!)
            if characterSelection.greenCheckExists {
                characterSelection.greenCheck.removeFromParent()
            }
            runChangeScene()
        }
    }
    
    func changeScene() {
        let sceneToMoveTo = GameScene(size: view!.bounds.size)
        sceneToMoveTo.size = view!.bounds.size
        sceneToMoveTo.scaleMode = .aspectFill
        let myTransition = SKTransition.fade(withDuration: 0.5)
        self.view!.presentScene(sceneToMoveTo, transition: myTransition)
    }
        
    func runChangeScene() {
        let changeSceneAction = SKAction.run(changeScene)
        let waitToChangeScene = SKAction.wait(forDuration: 0.5)
        let changeSceneSequence = SKAction.sequence([waitToChangeScene, changeSceneAction])
        characterSelection.characters.removeAllChildren()
        characterSelection.removeAllChildren()
        characterSelection.removeFromParent()
        self.run(changeSceneSequence)
            
    }
}
