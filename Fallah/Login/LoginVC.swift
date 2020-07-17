//
//  LoginVC.swift
//  Fallah
//
//  Created by kasper on 7/16/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBAction func didTapLoginBtn(_ sender: Any) {
           print("Login ")
    }
    
    @IBAction func didTapForgetPassword(_ sender: Any) {
         print("Forget password ")
    }
    @IBAction func didTapGuestUser(_ sender: Any) {
        print("guest user ")
    }
    
    @IBOutlet weak var registerationBtn: UIButton!
    @IBAction func didTapRegisterationBtn(_ sender: Any) {
           print("Registeration ")
    }
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginBtnOutlite: UIButton!
    @IBOutlet weak var emailView: UIView!

    @IBOutlet weak var emailFieldOutlite: UITextField!
    @IBOutlet weak var passwordOutlite: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    
        passwordView.makeRounded(value: 35, color: UIColor.white.cgColor)
        
    
        emailView.makeRounded(value: 35, color: UIColor.white.cgColor)
    
        registerationBtn.makeRounded(value: 12, color: #colorLiteral(red: 0.05882352941, green: 0.8196078431, blue: 0.9803921569, alpha: 1))
    // adding action to lables
         loginBtnOutlite.makeRounded(value: 12, color: #colorLiteral(red: 0.05882352941, green: 0.8196078431, blue: 0.9803921569, alpha: 1))
  
        
        emailFieldOutlite.attributedPlaceholder = NSAttributedString(string: "email ...",
                                                                     attributes: [NSAttributedString.Key.foregroundColor:UIColor.gray])
        
        passwordOutlite.attributedPlaceholder = NSAttributedString(string: "password ...",
        attributes: [NSAttributedString.Key.foregroundColor:UIColor.gray])
     
    }
    

    
    
    

}
