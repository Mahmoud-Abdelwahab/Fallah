//
//  EventsListCell.swift
//  Fallah
//
//  Created by kasper on 7/21/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class EventsListCell: UITableViewCell {
   static var reuseIdentifer = "EventsListCell"
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var monthLable: UILabel!
    @IBOutlet weak var dayLable: UILabel!
    
    var event : Event?{
           didSet{
               setUpCell(with : event!)
           }
       }
       
       func setUpCell(with event: Event){
           eventImage.image = UIImage(named: event.imageName)
           
           titleLable.text = event.title
        dayLable.text = event.title
        monthLable.text  = event.title
        
           
       }
       

      //register ColcetionView with cell
       
       static func nib()->UINib {
           return UINib(nibName: reuseIdentifer, bundle: nil)
       }
       
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
