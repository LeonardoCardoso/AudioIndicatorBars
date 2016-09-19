//
//  AudioIndicatorBars.swift
//  AudioIndicatorBars
//
//  Created by Leonardo Cardoso on 16/09/2016.
//  Copyright © 2016 leocardz.com. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
open class AudioIndicatorBarsView: UIView {
    
    // MARK: - Lets
    fileprivate let barsOffset: CGFloat = 2.0
    
    // MARK: - Vars
    fileprivate var barsSet: [BarView] = []
    
    fileprivate var barCornerRadius: CGFloat = 0
    @IBInspectable var corner : CGFloat = 0 {
        didSet {
            self.barCornerRadius = corner
        }
    }
    
    fileprivate var barsCount: Int = 4
    @IBInspectable var bars : CGFloat = 4 {
        didSet {
            self.barsCount = Int(bars)
        }
    }
    
    
    fileprivate var barColor: UIColor = UIColor.black
    @IBInspectable var color : UIColor = UIColor.black {
        didSet {
            self.barColor = color
        }
    }
    
    // MARK: - Initializers
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    // Custom initializers
    public init(
        _ rect: CGRect,
        _ barsCount: Int = 10,
        _ barCornerRadius: CGFloat = 0.0,
        _ color: UIColor = UIColor.black
        ) {
        
        super.init(frame: rect)
        
        self.doDraw(rect, barsCount, barCornerRadius, color)
        
    }
    
    // MARK: - Functions
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        
        
        self.doDraw(rect, self.barsCount, CGFloat(self.barCornerRadius), self.color)
        
    }
    
    // Do draw
    func doDraw(
        _ rect: CGRect,
        _ barsCount: Int = 4,
        _ cornerRadius: CGFloat = 0.0,
        _ color: UIColor = UIColor.black
        ) {
        
        let sectionsWidth = rect.width / CGFloat(self.barsCount)
        
        for i in 0 ..< self.barsCount {
            
            let x = sectionsWidth * CGFloat(i) + self.barsOffset
            let width = sectionsWidth - self.barsOffset * 2
            let y: CGFloat = rect.height - width
            
            let frame: CGRect = CGRect(x: x, y: y, width: width, height: width)
            let bar: BarView = BarView(frame, cornerRadius, color, x, y, width, rect.height)
            
            self.barsSet.append(bar)
            
            self.addSubview(bar)
            
        }
        
    }
    
    // Start animations
    open func start() {
        
        for bar in self.barsSet { bar.start() }
        
    }
    
    // Stop animations
    open func stop() {
        
        for bar in self.barsSet { bar.stop() }
        
    }
    
}
