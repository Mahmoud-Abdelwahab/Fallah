//
//  SideMenuTableViewController.swift
//  Fallah
//
//  Created by kasper on 7/27/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class SideMenuTableViewController: UITableViewController {

    enum MenuType : Int {
        case home
        case organization
        case aboutUs
        case share
        case termis
        case contact
        case setting
        case logout
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row-1) else{return}
        dismiss(animated: true) {
            print("dismiss\(menuType)")
        }
    }
   

}
