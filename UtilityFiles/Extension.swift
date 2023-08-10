//
//  Extension.swift
//  mockup2
//
//  Created by Jason Quick on 7/21/23.
//

import Foundation
import CoreGraphics
import SpriteKit

let π = CGFloat(Double.pi)

public extension CGFloat {
    func radiansToDegrees() -> CGFloat {
        return self * 180.0 / π
    }
}
