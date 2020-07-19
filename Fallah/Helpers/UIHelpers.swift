//
//  UIHelpers.swift
//  Fallah
//
//  Created by kasper on 7/18/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//


import UIKit

enum UIHelpers { // enum more safe than struct  because enum can't be initialized  and we don't want  to make somthing like tis let helper = UIHelper()
    
    static func createTwoColumnFlowLayout(in view : UIView) -> UICollectionViewFlowLayout{
        let width                     = view.bounds.width
        let padding : CGFloat         = 12
        let mininmumSpacing : CGFloat = 10
        let availableWidth            = width - (padding * 2)  - mininmumSpacing
        let itemWidth                 = availableWidth / 2
        let flowLayout                = UICollectionViewFlowLayout()
        flowLayout.sectionInset       = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize           = CGSize(width: itemWidth, height: itemWidth) //+40 to give extra height for the lable
        
        return flowLayout
    }
}
