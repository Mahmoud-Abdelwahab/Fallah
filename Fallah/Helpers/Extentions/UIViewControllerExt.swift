//
//  UIViewControllerExt.swift
//  Fallah
//
//  Created by kasper on 7/19/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentPopUpOnMainThread(title : String , message :String , buttonTitle : String ){
        DispatchQueue.main.async {
            let alertVC = PopUpCard(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle   = .crossDissolve  // fade in
           //self.present(alertVC,animated: true)
            
            self.present(alertVC, animated: true, completion: nil)
            //self.navigationController?.pushViewController(alertVC, animated: false)
            
        }
    }
    
    
    
    
    func DismissKeyboard() {
           let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
           view.addGestureRecognizer(tap)
       }
}
