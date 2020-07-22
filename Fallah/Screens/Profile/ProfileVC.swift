//
//  ProfileVC.swift
//  Fallah
//
//  Created by kasper on 7/19/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
   
    
    @IBOutlet weak var emailContainer: UIView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBAction func didTapSideBar(_ sender: Any) {
    }
    
    @IBAction func didTapEditeProfile(_ sender: Any) {
    }
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameContainer: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var phoneContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.DismissKeyboard()
        containerView.roundCorners([.topLeft , .topRight], radius: 50)
  
//        searchContainer.cornerRadius = 25
//        searchContainer.borderWidth = 1
//        searchContainer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        usernameContainer.makeRounded(value: 25, color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        phoneContainer.makeRounded(value: 25, color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        emailContainer.makeRounded(value: 25, color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        
    }
 
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           // Hide the Navigation Bar
           self.navigationController?.setNavigationBarHidden(true, animated: animated)

      
       }

    
       override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(animated)
           // Show the Navigation Bar
           self.navigationController?.setNavigationBarHidden(false, animated: animated)
       }
    
    
   

}
