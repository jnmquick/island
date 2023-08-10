//
//  CameraMotion.swift
//  mockup2
//
//  Created by Jason Quick on 7/2/23.
//

import Foundation
import SpriteKit

var cameraCycle = 0

func cameraMovement(scene: SKScene, nodeTouched: SKNode){
    let speed: CGFloat = 1500.0
                    
    var moveAction: SKAction!
    var duration: CGFloat = 0.0
    var nextPosition: CGPoint
    
    switch cameraCycle {
    case 0:
        if nodeTouched.name == "cameraSelect" {
            nextPosition = CGPoint(x: scene.frame.midX, y: scene.frame.midY - whiteSquares.whiteSquare1.frame.size.height / 2)
            duration = distanceBetween(point: scene.camera!.position, andPoint: nextPosition) / speed
            moveAction = SKAction.move(to: nextPosition, duration: Double(duration))
            scene.camera!.run(moveAction)
            cameraCycle += 1
        }
    case 1:
        if nodeTouched.name == "cameraSelect" {
            nextPosition = CGPoint(x: units.scout.position.x, y: units.scout.position.y)
            duration = distanceBetween(point: scene.camera!.position, andPoint: nextPosition) / speed
            moveAction = SKAction.move(to: nextPosition, duration: Double(duration))
            scene.camera!.run(moveAction)
            cameraCycle -= 1
        }
    default:
        break
    }
}

func distanceBetween(point p1: CGPoint, andPoint p2: CGPoint) -> CGFloat {
        return sqrt(pow((p2.x - p1.x), 2) + pow((p2.y - p1.y), 2))
    }
