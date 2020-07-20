//
//  SearchVC.swift
//  Fallah
//
//  Created by kasper on 7/20/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
       // self.presentPopUpOnMainThread(title: "Hello", message: "helo", buttonTitle: "helo")
 
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillAppear(_ animated: Bool) {
         self.modalPresentationStyle = .formSheet
    }

}
