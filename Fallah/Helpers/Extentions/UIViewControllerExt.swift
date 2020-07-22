//
//  UIViewControllerExt.swift
//  Fallah
//
//  Created by kasper on 7/19/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

extension UIViewController {

    func DismissKeyboard() {
           let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
           view.addGestureRecognizer(tap)
       }
    
    
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)

        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)

            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }

        return nil
    }
}
