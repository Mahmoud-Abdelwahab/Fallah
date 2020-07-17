//
//  RegistrationVC.swift
//  Fallah
//
//  Created by kasper on 7/16/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class RegistrationVC: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var rePasswordTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var rePasswordView: UIView!
    
    @IBOutlet weak var phoneView: UIView!
    
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var loginBtnOutlite: UIButton!
    
    @IBAction func didTapLoginBtn(_ sender: Any) {
    }
    @IBOutlet weak var registerBtnOutlite: UIButton!
    @IBAction func didTapRegisterBtn(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameView.makeRounded(value: 30, color: #colorLiteral(red: 0.8980392157, green: 0.1137254902, blue: 0.4352941176, alpha: 1))
         passwordView.makeRounded(value: 30, color: #colorLiteral(red: 0.8980392157, green: 0.1137254902, blue: 0.4352941176, alpha: 1))
         rePasswordView.makeRounded(value: 30, color: #colorLiteral(red: 0.8980392157, green: 0.1137254902, blue: 0.4352941176, alpha: 1))
         phoneView.makeRounded(value: 30, color: #colorLiteral(red: 0.8980392157, green: 0.1137254902, blue: 0.4352941176, alpha: 1))
         emailView.makeRounded(value: 30, color: #colorLiteral(red: 0.8980392157, green: 0.1137254902, blue: 0.4352941176, alpha: 1))
        registerBtnOutlite.makeRounded(value: 20, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        loginBtnOutlite.makeRounded(value: 20, color: #colorLiteral(red: 0.05882352941, green: 0.8196078431, blue: 0.9803921569, alpha: 1))
        
        usernameTextField.attributedPlaceholder = NSAttributedString(string: "userName",
              attributes: [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 0.7333333333, green: 0.737254902, blue: 0.7411764706, alpha: 1)])
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email",
        attributes: [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 0.7333333333, green: 0.737254902, blue: 0.7411764706, alpha: 1)])
        phoneTextField.attributedPlaceholder = NSAttributedString(string: "phone",
              attributes: [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 0.7333333333, green: 0.737254902, blue: 0.7411764706, alpha: 1)])
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password",
              attributes: [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 0.7333333333, green: 0.737254902, blue: 0.7411764706, alpha: 1)])

        rePasswordTextField.attributedPlaceholder = NSAttributedString(string: "Re-Enter Password",
              attributes: [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 0.7333333333, green: 0.737254902, blue: 0.7411764706, alpha: 1)])
    }
    



}
