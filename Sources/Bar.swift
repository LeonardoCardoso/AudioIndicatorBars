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
    fileprivate var x: CGFloat = 0.0
    fileprivate var y: CGFloat = 0.0
    fileprivate var minHeight: CGFloat = 0.0
    fileprivate var maxHeight: CGFloat = 0.0
    fileprivate var doAnimate: Bool = false
    fileprivate var isAnimating: Bool = false
    
    // MARK: - Initializers
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    // Custom initializers
    public init(
        _ rect: CGRect,
        _ cornerRadius: CGFloat = 0.0,
        _ color: UIColor = UIColor.black,
        _ x: CGFloat = 0.0,
        _ minHeight: CGFloat = 0.0,
        _ maxHeight: CGFloat = 0.0
        ) {
        
        super.init(frame: rect)
        
        self.animationSpeed = Double.random(min: 0.5, max: 0.9)
        self.x = x
        self.y = maxHeight - AudioIndicatorBarsView.barsOffset
        self.minHeight = minHeight
        self.maxHeight = maxHeight - AudioIndicatorBarsView.barsOffset * 2
        
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        
        self.backgroundColor = color
    }
    
    
    // Start animations
    open func start() {
        
        self.doAnimate = true
        self.animate()
        
    }
    
    // Stop animations
    open func stop() {
        
        self.doAnimate = false
        
    }
    
    func animate() {
        if(self.doAnimate && !self.isAnimating) {
            UIView.animate(
                withDuration: self.animationSpeed,
                animations: {() -> Void in
                    
                    self.isAnimating = true
                    
                    self.frame = CGRect(
                        x: self.x,
                        y: self.y,
                        width: self.minHeight,
                        height: -self.maxHeight
                    )
                    
            }) {(finished: Bool) -> Void in
                
                UIView.animate(
                    withDuration: self.animationSpeed,
                    animations: {() -> Void in
                        
                        self.frame = CGRect(
                            x: self.x,
                            y: self.y,
                            width: self.minHeight,
                            height: -self.minHeight
                        )
                        
                }) {(finished: Bool) -> Void in
                    
                    self.isAnimating = false
                    self.animate()
                }
                
            }
        }
        
    }
    
}
