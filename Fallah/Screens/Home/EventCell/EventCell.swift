//
//  EventCell.swift
//  Fallah
//
//  Created by kasper on 7/18/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class EventCell: UICollectionViewCell {
    static let reuseIdentifer = "EventCell"
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventTitle: UILabel!
    
    var event : Event?{
        didSet{
            setUpCell(with : event!)
        }
    }
    
    func setUpCell(with event: Event){
        eventImage.image = UIImage(named: event.imageName)
        
        eventTitle.text = event.title
        
    }
    

   //register ColcetionView with cell
    
    static func nib()->UINib {
        return UINib(nibName: reuseIdentifer, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
