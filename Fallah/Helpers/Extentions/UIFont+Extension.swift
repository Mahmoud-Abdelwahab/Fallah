//
//  UIFont+Extensions.swift
//  Fallah
//
//  Created by kasper on 7/15/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//
import UIKit

extension UIFont {
    class func defaultFont(_ size: CGFloat = 12, _ style: FontStyle = .Regular) -> UIFont {
        return UIFont(name: "Cairo-\(style)", size: size)!
    }
}
