//
//  MainMenuScene.swift
//  mockup2
//
//  Created by Jason Quick on 7/24/23.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    let mainMenuBackground = MainMenuBackground()
    let mainMenuButtons = MainMenuButtons()
    
    override func didMove(to view: SKView) {
        mainMenuBackground.createBackground(view: view)
        addChild(mainMenuBackground)
        
        mainMenuButtons.createCharacterSelectButton(view: view)
        mainMenuButtons.createPlayButton(view: view)
        mainMenuButtons.createSettingsButton(view: view)
        addChild(mainMenuButtons)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let locationOfTouch = touch.location(in: self)
            let nodeTouched = atPoint(locationOfTouch)
            
            pressedButton(button: nodeTouched)
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
    
    func changeToGameScene() {
        let sceneToMoveTo = CharacterSelectSceneNew(size: view!.bounds.size)
        sceneToMoveTo.size = view!.bounds.size
        sceneToMoveTo.scaleMode = .aspectFill
        let myTransition = SKTransition.fade(withDuration: 0.5)
        self.view!.presentScene(sceneToMoveTo, transition: myTransition)
    }
    
    func changeToCharacterMenuScene() {
        let sceneToMoveTo = CharacterMenuScene(size: view!.bounds.size)
        sceneToMoveTo.size = view!.bounds.size
        sceneToMoveTo.scaleMode = .aspectFill
        let myTransition = SKTransition.fade(withDuration: 0.5)
        self.view!.presentScene(sceneToMoveTo, transition: myTransition)
    }
        
    func runChangeScene(changeScene: @escaping () -> Void) {
        let changeSceneAction = SKAction.run(changeScene)
        let waitToChangeScene = SKAction.wait(forDuration: 0.5)
        let changeSceneSequence = SKAction.sequence([waitToChangeScene, changeSceneAction])
        self.run(changeSceneSequence)
            
        }
    
    func pressedButton(button: SKNode) {
        
        switch button.name {
        case "Play Button":
            runChangeScene {
                self.changeToGameScene()
            }
        case "Character Button":
            runChangeScene {
                self.changeToCharacterMenuScene()
            }
        default:
            break
        }
        
    }
    
}
