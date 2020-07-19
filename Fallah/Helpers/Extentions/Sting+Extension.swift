//
//  Sting+Extension.swift
//  Fallah
//
//  Created by kasper on 7/15/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//
import UIKit

extension String {
    func localizedString() -> String {
        return NSLocalizedString(self, comment: "")
    }
}
