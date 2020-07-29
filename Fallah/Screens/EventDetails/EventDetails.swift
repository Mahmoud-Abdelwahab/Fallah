//
//  EventDetails.swift
//  Fallah
//
//  Created by kasper on 7/21/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class EventDetails: UIViewController {

    @IBOutlet weak var deleteTicketBtn: UIButton!
    @IBOutlet weak var qrCode: UIImageView!
    @IBOutlet weak var containerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.roundCorners([.topRight], radius: 75)
     
        qrCode.image =  self.generateQRCode(from: "Hacking with Mahmoud")
        
        
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: deleteTicketBtn.frame.size.width, height:deleteTicketBtn.frame.size.height))
        lineView.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        lineView.borderWidth = 2
        lineView.cornerRadius = 20
        //lineView.backgroundColor = UIColor.black
        deleteTicketBtn.addSubview(lineView)
        
   
    }
    

}
