//
//  UIApplicationExt.swift
//  Fallah
//
//  Created by kasper on 7/20/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

extension UIApplication {
/*function will return reference to tabbarcontroller */
func tabbarController() -> UIViewController? {
    guard let vcs = self.keyWindow?.rootViewController?.children else { return nil }
for vc in vcs {
if  let _ = vc as? TabBarController {
return vc
}
}
return nil
}
}
