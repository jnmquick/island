//
//  Background.swift
//  mockup2
//
//  Created by Jason Quick on 6/27/23.
//

import Foundation
import SpriteKit

class Background: SKShapeNode {
    
    var background: SKShapeNode!
    
    func createBackground(view: SKView) {
        
        background = SKShapeNode(rectOf: CGSize(width: view.bounds.size.width * 5, height: view.bounds.size.height * 5))
        background.zPosition = -2
        background.position = CGPoint(x: view.frame.midX, y: view.frame.midY + background.frame.size.height / 4)
        background.fillColor = waterBlue
        background.name = "background"
        print(background.frame.width)
        print(background.frame.height)
        addChild(background)
    }
}
