//
//  touchslider.swift
//  custtomslider
//
//  Created by Susanne Burnham on 10/2/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

import UIKit

@IBDesignable
class TouchSlider: UIView {
    
    @IBInspectable var barColor: UIColor = UIColor.blackColor()
    
    @IBInspectable var value: CGFloat = 0 {
    
        didSet {
    
        if value < minValue { value = minValue }
        if value > maxValue { value = maxValue }
            
            setNeedsDisplay()
        
        }
    }
    
    
    @IBInspectable var minValue: CGFloat = 0
    @IBInspectable var maxValue: CGFloat = 100
    
    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        barColor.set()
        
        CGContextMoveToPoint(context, 0, rect.height / 2)
        CGContextAddLineToPoint(context, rect.width, rect.height / 2)
        
        CGContextStrokePath(context)
        
        
        CGContextFillEllipseInRect(context, handleRect)
        
    }
    
    var handleRect: CGRect {
        
        let handleX = (bounds.width - bounds.height) * (value / maxValue)

        return CGRect(x: handleX, y: 0, width: bounds.height, height: bounds.height)
    }
    
    var isTouchingHandle = false
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            
            let locPoint = touch.locationInView(self)
            
            isTouchingHandle = CGRectContainsPoint(handleRect, locPoint)
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>,
        withEvent event: UIEvent?){
            
            if isTouchingHandle {
                
                if let touch = touches.first {
                    
                    let touchX = touch.locationInView(self).x
                    
                }
            }
            
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
