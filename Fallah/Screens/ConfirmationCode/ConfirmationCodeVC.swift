//
//  ConfirmationCodeVC.swift
//  Fallah
//
//  Created by kasper on 7/17/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class ConfirmationCodeVC: UIViewController {

    @IBOutlet weak var confirmeOutlite: UIButton!
    @IBOutlet weak var confirmationCodeTextField: UITextField!
    @IBOutlet weak var confirmationViewOutlite: UIView!
    @IBAction func didTapConfirmeBtb(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        confirmationViewOutlite.makeRounded(value: 35, color: #colorLiteral(red: 0.8980392157, green: 0.1137254902, blue: 0.4352941176, alpha: 1))
        
        confirmeOutlite.makeRounded(value: 20, color: #colorLiteral(red: 0.05882352941, green: 0.8196078431, blue: 0.9803921569, alpha: 1))
        
        confirmationCodeTextField.attributedPlaceholder = NSAttributedString(string: "code ...",
                     attributes: [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)])
        
    }


}
