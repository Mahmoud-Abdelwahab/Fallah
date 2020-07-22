//
//  EventListCustomCell.swift
//  Fallah
//
//  Created by kasper on 7/22/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class EventListCustomCell: UITableViewCell {
    static let reuseIdentifer = "EventListCustomCell"

    var event : Event?{
        didSet{
            eventImage.image = UIImage(named: event!.imageName)
            eventName.text = event?.title
            eventTime.text = event?.title
            eventDate.text = event?.title
        }
    }
    

    @IBOutlet weak var eventName: UILabel!
    
    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var eventTime: UILabel!
    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var eventImage: UIImageView!
   
    
    override func awakeFromNib() {
     //   self.makeRounded(value: 0, color: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1))
//        self.frame = CGRect(x: 0, y: 0, width: self.frame.size.width - 20 , height: self.frame.size.height - 20)
        
        borderView.makeRounded(value: 0, color: #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1))
    }
  

}
