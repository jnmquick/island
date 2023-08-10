//
//  CharacterSelectScene.swift
//  mockup2
//
//  Created by Jason Quick on 7/4/23.
//

import Foundation
import SpriteKit

let characters = Characters()

var choseCharacter1 = false
var choseCharacter2 = false
var choseCharacter3 = false

class CharacterSelectScene: SKScene {
    let characterSelectBackground = CharacterSelectBackground()
    let logicForCharacterScene = LogicForCharacterScene()
    
    override func didMove(to view: SKView) {
        characterSelectBackground.createBackground(view: view)
        addChild(characterSelectBackground)
        
        characters.createCharacter1(view: view)
        characters.createCharacter2(view: view)
        characters.createCharacter3(view: view)
        characters.createCharacterSelectionTitle(view: view)
        
        addChild(characters)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let locationOfTouch = touch.location(in: self)
            let nodeTouched = atPoint(locationOfTouch)
            
            logicForCharacterScene.logicForCharacterSelect(nodeTouched: nodeTouched, view: self.view!, runChangeScene: runChangeScene)
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
        characters.removeFromParent()
        self.run(changeSceneSequence)
            
        }
}
