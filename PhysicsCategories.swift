//
//  PhysicsCategories.swift
//  mockup2
//
//  Created by Jason Quick on 7/11/23.
//

import Foundation
import SpriteKit

enum PhysicsCategories: UInt32 {
    case playerBullet = 1
    case enemyBullet = 2
    case player = 4
    case enemy = 8
    case none = 16
    case square = 32
}
