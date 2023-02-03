//
//  UIColor+Ext.swift
//  ColoursApp
//
//  Created by Dhiman, Sabi (Consumer Servicing & Engagement Platform) on 03/02/2023.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        
        let randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        //alpha is the opacity
        
        return randomColor
    }
}
//static means every instance of uicolor can have this function
