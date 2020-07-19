//
//  TabBarController.swift
//  Fallah
//
//  Created by kasper on 7/17/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit


class TabBarController: UITabBarController , UITabBarControllerDelegate {

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        self.delegate = self
    }
    
    // MARK: - Methods
    fileprivate func setupTabBarController() {
        tabBar.cornerRadius = 30
        tabBar.barTintColor = #colorLiteral(red: 0.07056804746, green: 0.07655970007, blue: 0.1256075501, alpha: 1)
        tabBar.tintColor = UIColor.mainColor
        tabBar.unselectedItemTintColor = UIColor.lightGray
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.init(name: "HelveticaNeue-Bold", size: 10) ?? UIFont.defaultFont(8, .Bold)
        ]
        guard let items = tabBar.items else { return }
        for item in items {
            item.setTitleTextAttributes(titleAttributes, for: .normal)
            if item.tag == 0 {
                //item.title = "news".localizedString()
                 print("home")
            } else if item.tag == 1 {
               // item.title = "updates".localizedString()
                 print("save")
            } else if item.tag == 2 {
               //item.title = "test".localizedString()
                 print("search")
            }else if item.tag == 3 {
               //item.title = "test".localizedString()
                 print("bookmark")
            }else if item.tag == 4 {
               //item.title = "test".localizedString()
                 print("person")
            } else {
                 print("nothing")
               // item.title = "more".localizedString()
            }
        }
    }
    
    
   static func changeTabIcon(tab:Int){
  
        switch tab {
        case 0:
                 print("home")
        case 1:
            print("save")
        case 2:
           print("search")
        case 3:
                print("bookmark")
            case 4 :
                     print("person")
        default:
            var _ = "something wrong"
        }
    
    }
    
    
    // UITabBarDelegate
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("Selected item")
    }

    // UITabBarControllerDelegate
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected view controller")
        print(viewController.title)

    }
}
