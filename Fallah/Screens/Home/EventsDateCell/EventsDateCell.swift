//
//  EventsDateCell.swift
//  Fallah
//
//  Created by kasper on 7/21/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class EventsDateCell: UITableViewCell {
    static var reuseIdentifer = "EventsDateCell"

    @IBOutlet weak var dayLable: UILabel!
    @IBOutlet weak var monthLable: UILabel!
    
    
       var event : Event?{
              didSet{
                  setUpCell(with : event!)
              }
          }
          
          func setUpCell(with event: Event){
        
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
