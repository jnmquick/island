//
//  GestureRecognizer.swift
//  mockup2
//
//  Created by Jason Quick on 6/29/23.
//

import Foundation
import SpriteKit

class Gesture {
    var gestureWasCreated = false
    var numberSwipes = 0
    var swipeRight: UISwipeGestureRecognizer!
    var swipeLeft: UISwipeGestureRecognizer!
    
    @objc func swipedRight(sender: UISwipeGestureRecognizer){
        print("swiped right")
        if numberSwipes > 0 {
            if logicForWhiteSquares.whiteSquare2IsTouched {
                menuForWhiteSquare2.moveWhiteSquare2Menu(view: swipeRight.view as! SKView)
                menu2ForWhiteSquare2.moveWhiteSquare2Menu2Right(view: swipeRight.view as! SKView)
                dots.changeDots(numberSwipes)
            } else if logicForWhiteSquares.whiteSquare3IsTouched {
                menuForWhiteSquare3.moveWhiteSquare3Menu(view: swipeRight.view as! SKView)
                menu2ForWhiteSquare3.moveWhiteSquare3Menu2Right(view: swipeRight.view as! SKView)
                dots.changeDots(numberSwipes)
            } else if logicForWhiteSquares.whiteSquare4IsTouched {
                menuForWhiteSquare4.moveWhiteSquare4Menu(view: swipeRight.view as! SKView)
                menu2ForWhiteSquare4.moveWhiteSquare4Menu2Right(view: swipeRight.view as! SKView)
                dots.changeDots(numberSwipes)
            } else if logicForWhiteSquares.whiteSquare5IsTouched {
                menuForWhiteSquare5.moveWhiteSquare5Menu(view: swipeRight.view as! SKView)
                menu2ForWhiteSquare5.moveWhiteSquare5Menu2Right(view: swipeRight.view as! SKView)
                dots.changeDots(numberSwipes)
            } else if logicForWhiteSquares.whiteSquare6IsTouched {
                menuForWhiteSquare6.moveWhiteSquare6Menu(view: swipeRight.view as! SKView)
                menu2ForWhiteSquare6.moveWhiteSquare6Menu2Right(view: swipeRight.view as! SKView)
                dots.changeDots(numberSwipes)
            }
            
            numberSwipes -= 1
        }
    }
    
    @objc func swipedLeft(sender: UISwipeGestureRecognizer){
        print("swiped left")
        if numberSwipes == 0 {
            if logicForWhiteSquares.whiteSquare2IsTouched {
                menu2ForWhiteSquare2.moveWhiteSquare2Menu2(view: swipeLeft.view as! SKView)
                menuForWhiteSquare2.moveWhiteSquare2MenuLeft(view: swipeLeft.view as! SKView)
                dots.changeDots(numberSwipes)
            } else if logicForWhiteSquares.whiteSquare3IsTouched {
                menu2ForWhiteSquare3.moveWhiteSquare3Menu2(view: swipeLeft.view as! SKView)
                menuForWhiteSquare3.moveWhiteSquare3MenuLeft(view: swipeLeft.view as! SKView)
                dots.changeDots(numberSwipes)
            } else if logicForWhiteSquares.whiteSquare4IsTouched {
                menu2ForWhiteSquare4.moveWhiteSquare4Menu2(view: swipeLeft.view as! SKView)
                menuForWhiteSquare4.moveWhiteSquare4MenuLeft(view: swipeLeft.view as! SKView)
                dots.changeDots(numberSwipes)
            } else if logicForWhiteSquares.whiteSquare5IsTouched {
                menu2ForWhiteSquare5.moveWhiteSquare5Menu2(view: swipeLeft.view as! SKView)
                menuForWhiteSquare5.moveWhiteSquare5MenuLeft(view: swipeLeft.view as! SKView)
                dots.changeDots(numberSwipes)
            } else if logicForWhiteSquares.whiteSquare6IsTouched {
                menu2ForWhiteSquare6.moveWhiteSquare6Menu2(view: swipeLeft.view as! SKView)
                menuForWhiteSquare6.moveWhiteSquare6MenuLeft(view: swipeLeft.view as! SKView)
                dots.changeDots(numberSwipes)
            }
            
            numberSwipes += 1
        }
    }
    
    func createGesture(view: SKView) {
        swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipedRight(sender:)))
        swipeRight.direction = .right
        swipeRight.numberOfTouchesRequired = 1
        view.addGestureRecognizer(swipeRight)
        
        swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipedLeft(sender:)))
        swipeLeft.direction = .left
        swipeRight.numberOfTouchesRequired = 1
        view.addGestureRecognizer(swipeLeft)
        
        gestureWasCreated = true
    }
    
    func removeGesture(view: SKView) {
        view.removeGestureRecognizer(swipeRight)
        view.removeGestureRecognizer(swipeLeft)
        
        gestureWasCreated = false
        numberSwipes = 0
    }
}
