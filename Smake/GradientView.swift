//
//  GradientView.swift
//  Smake
//
//  Created by Hussain on 7/6/18.
//  Copyright © 2018 Hussain. All rights reserved.
//

import UIKit

@IBDesignable// To see the changes instantly
class GradientView: UIView {

    @IBInspectable var topColor : UIColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable var bottomColor : UIColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientlayer = CAGradientLayer()
        gradientlayer.colors = [topColor.cgColor ,  bottomColor.cgColor]
        gradientlayer.startPoint = CGPoint(x: 0, y: 0)
        gradientlayer.endPoint = CGPoint(x: 1, y: 1)
        gradientlayer.frame = self.bounds
        self.layer.insertSublayer(gradientlayer, at: 0)
        
        
    }// when you want to build Gradiant Color Layer you must spcifiy 3 thing firstly COLORS secondly The Start point and End Point and Finaly The Size of it's layer

}
