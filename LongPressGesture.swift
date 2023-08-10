//
//  LongPressGesture.swift
//  mockup2
//
//  Created by Jason Quick on 7/29/23.
//

import Foundation
import SpriteKit

class LongPressGesture {
    var longPress: UILongPressGestureRecognizer!
    var characterLongPress: UILongPressGestureRecognizer!
    
    @objc func longPressed(sender: UILongPressGestureRecognizer) {
        print("long press occuring")
        
        if sender.state == .began {
            if squaresImage.whiteSquare1IsPressed {
                squaresImage.createTheImage(named: "Location 2-2", view: longPress.view as! SKView)
            } else if squaresImage.amethystSquare2IsPressed {
                squaresImage.createTheImage(named: "Location 4-2", view: longPress.view as! SKView)
            } else if squaresImage.grapeSquare2IsPressed {
                squaresImage.createTheImage(named: "Location 1-2", view: longPress.view as! SKView)
            } else if squaresImage.jasmineSquare2IsPressed {
                squaresImage.createTheImage(named: "Location 5-2", view: longPress.view as! SKView)
            } else if squaresImage.xanthousSquare2IsPressed {
                squaresImage.createTheImage(named: "Location 6-2", view: longPress.view as! SKView)
            } else if squaresImage.amethystSquare3IsPressed {
                squaresImage.createTheImage(named: "Location 4-2", view: longPress.view as! SKView)
            } else if squaresImage.grapeSquare3IsPressed {
                squaresImage.createTheImage(named: "Location 1-2", view: longPress.view as! SKView)
            } else if squaresImage.jasmineSquare3IsPressed {
                squaresImage.createTheImage(named: "Location 5-2", view: longPress.view as! SKView)
            } else if squaresImage.xanthousSquare3IsPressed {
                squaresImage.createTheImage(named: "Location 6-2", view: longPress.view as! SKView)
            } else if squaresImage.amethystSquare4IsPressed {
                squaresImage.createTheImage(named: "Location 4-2", view: longPress.view as! SKView)
            } else if squaresImage.grapeSquare4IsPressed {
                squaresImage.createTheImage(named: "Location 1-2", view: longPress.view as! SKView)
            } else if squaresImage.jasmineSquare4IsPressed {
                squaresImage.createTheImage(named: "Location 5-2", view: longPress.view as! SKView)
            } else if squaresImage.xanthousSquare4IsPressed {
                squaresImage.createTheImage(named: "Location 6-2", view: longPress.view as! SKView)
            } else if squaresImage.amethystSquare5IsPressed {
                squaresImage.createTheImage(named: "Location 4-2", view: longPress.view as! SKView)
            } else if squaresImage.grapeSquare5IsPressed {
                squaresImage.createTheImage(named: "Location 1-2", view: longPress.view as! SKView)
            } else if squaresImage.jasmineSquare5IsPressed {
                squaresImage.createTheImage(named: "Location 5-2", view: longPress.view as! SKView)
            } else if squaresImage.xanthousSquare5IsPressed {
                squaresImage.createTheImage(named: "Location 6-2", view: longPress.view as! SKView)
            } else if squaresImage.amethystSquare6IsPressed {
                squaresImage.createTheImage(named: "Location 4-2", view: longPress.view as! SKView)
            } else if squaresImage.grapeSquare6IsPressed {
                squaresImage.createTheImage(named: "Location 1-2", view: longPress.view as! SKView)
            } else if squaresImage.jasmineSquare6IsPressed {
                squaresImage.createTheImage(named: "Location 5-2", view: longPress.view as! SKView)
            } else if squaresImage.xanthousSquare6IsPressed {
                squaresImage.createTheImage(named: "Location 6-2", view: longPress.view as! SKView)
            } else if squaresImage.casinoSquare2IsPressed {
                squaresImage.createTheImage(named: "Location 8-2", view: longPress.view as! SKView)
            } else if squaresImage.casinoSquare3IsPressed {
                squaresImage.createTheImage(named: "Location 8-2", view: longPress.view as! SKView)
            } else if squaresImage.casinoSquare4IsPressed {
                squaresImage.createTheImage(named: "Location 8-2", view: longPress.view as! SKView)
            } else if squaresImage.casinoSquare5IsPressed {
                squaresImage.createTheImage(named: "Location 8-2", view: longPress.view as! SKView)
            } else if squaresImage.casinoSquare6IsPressed {
                squaresImage.createTheImage(named: "Location 8-2", view: longPress.view as! SKView)
            } else if squaresImage.powerPlantSquare2IsPressed {
                squaresImage.createTheImage(named: "Location 7-2", view: longPress.view as! SKView)
            } else if squaresImage.powerPlantSquare3IsPressed {
                squaresImage.createTheImage(named: "Location 7-2", view: longPress.view as! SKView)
            } else if squaresImage.powerPlantSquare4IsPressed {
                squaresImage.createTheImage(named: "Location 7-2", view: longPress.view as! SKView)
            } else if squaresImage.powerPlantSquare5IsPressed {
                squaresImage.createTheImage(named: "Location 7-2", view: longPress.view as! SKView)
            } else if squaresImage.powerPlantSquare6IsPressed {
                squaresImage.createTheImage(named: "Location 7-2", view: longPress.view as! SKView)
            }
        }
        if sender.state == .ended {
            squaresImage.removeTheImage(view: longPress.view as! SKView)
        }
    }
    
    func createGesture(view: SKView) {
        longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPressed(sender: )))
        longPress.minimumPressDuration = 0.25
        longPress.numberOfTouchesRequired = 1
        view.addGestureRecognizer(longPress)
    }
    func removeGesture(view: SKView) {
        view.removeGestureRecognizer(longPress)
    }
    
    @objc func characterLongPressed(sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            characterDetails.moveDetailsUp(view: characterLongPress.view as! SKView)
        }
        if sender.state == .ended {
            characterDetails.moveDetailsDown(view: characterLongPress.view as! SKView)
            characterDetails.detailsAreShowing = false
        }
    }
    
    func createCharacterGesture(view: SKView) {
        characterLongPress = UILongPressGestureRecognizer(target: self, action: #selector(characterLongPressed(sender: )))
        characterLongPress.minimumPressDuration = 0.1
        characterLongPress.numberOfTouchesRequired = 1
        view.addGestureRecognizer(characterLongPress)
    }
    
    func removeCharacterGesture(view: SKView) {
        view.removeGestureRecognizer(characterLongPress)
    }
}
