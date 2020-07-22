//
//  TabBarController.swift
//  Fallah
//
//  Created by kasper on 7/17/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit


class TabBarController: UITabBarController , UITabBarControllerDelegate {
    
   static  let sharedTap = TabBarController()
    
    
    
     func switchToHome(){
        self.selectedIndex = 1
    }
    
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
//            if item.tag == 0 {
//                //item.title = "news".localizedString()
//                print("0")
//            } else if item.tag == 1 {
//                // item.title = "updates".localizedString()
//                print("1")
//            } else if item.tag == 2 {
//                //item.title = "test".localizedString()
//                print("2")
//            }else if item.tag == 3 {
//                //item.title = "test".localizedString()
//                print("3")
//            }else if item.tag == 4 {
//                //item.title = "test".localizedString()
//                print("4")
//            } else {
//                print("nothing")
//                // item.title = "more".localizedString()
//            }
        }
    }
    
     
    // UITabBarDelegate
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            print("home")
             HomeVC.isFromSearch = false
                   HomeVC.isFromTikets = false
        case 1:
            print("Tikits")
                 HomeVC.isFromSearch = false
            HomeVC.isFromTikets = true
        case 2:
            print("Search")
            HomeVC.isFromSearch = true
        case 3:
            print("bookmark")
        case 4 :
            print("person")
        default:
            var _ = "something wrong"
        }
        
    }
    
    // UITabBarControllerDelegate
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        print("Selected view controller")
      ///  print(viewController.nibName)
        
    }
}

