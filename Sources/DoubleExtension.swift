//
//  DoubleExtension.swift
//  AudioIndicatorBars
//
//  Created by Leonardo Cardoso on 19/09/2016.
//  Copyright © 2016 leocardz.com. All rights reserved.
//

import Foundation

public extension Double {
    
    /// Returns a random floating point number between 0.0 and 1.0, inclusive.
    public static var random:Double {
        get {
            return Double(arc4random()) / 0xFFFFFFFF
        }
    }
    
    /**
     Create a random number Double
     
     - parameter min: Double
     - parameter max: Double
     
     - returns: Double
     */
    public static func random(min: Double, max: Double) -> Double {
        return Double.random * (max - min) + min
    }
    
}
