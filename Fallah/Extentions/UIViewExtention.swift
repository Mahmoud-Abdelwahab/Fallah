//
//  UIViewExtention.swift
//  Fallah
//
//  Created by kasper on 7/17/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

extension UIView {
    func makeRounded(value : CGFloat , color : CGColor){
          self.layer.cornerRadius = value
          self.layer.borderWidth = 1
          self.layer.borderColor = color
          
      }
    

}
