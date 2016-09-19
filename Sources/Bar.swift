//
//  Bar.swift
//  Pods
//
//  Created by Leonardo Cardoso on 16/09/2016.
//
//

import Foundation
import UIKit

open class BarView: UIView {
    
    // MARK: - Vars
    fileprivate var animationSpeed: Double = 1.0
    fileprivate var maxHeight: CGFloat = 0
    
    // MARK: - Initializers
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    // Custom initializers
    public init(
        _ rect: CGRect,
        _ cornerRadius: CGFloat = 0.0,
        _ animationSpeed: Double = 1.0,
        _ color: UIColor = UIColor.black,
        _ maxHeight: CGFloat = 0.0
        ) {
        
        super.init(frame: rect)
        
        self.animationSpeed = animationSpeed
        self.maxHeight = maxHeight
        
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true

        self.backgroundColor = color
        
    }
    
    
    // Start animations
    open func start() {
        
        
    }
    
    // Stop animations
    open func stop() {
        
        
    }
    
}
