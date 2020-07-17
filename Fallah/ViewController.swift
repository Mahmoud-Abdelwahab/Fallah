//
//  ViewController.swift
//  Fallah
//
//  Created by kasper on 7/15/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabBar: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
      

        tabBar.layer.cornerRadius = 35
        view.backgroundColor = .link
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

