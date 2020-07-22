//
//  EventListVC.swift
//  Fallah
//
//  Created by kasper on 7/22/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class EventListVC: UIViewController {
    
    
    @IBOutlet weak var headerImage: UIImageView!
    
    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBAction func backBtn(_ sender: Any) {
    }
   
  
    
   
 
    var eventList : [Event] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate   = self
        containerView.roundCorners([.topRight , .topLeft], radius: 80)
     
        
        
  eventList = [Event(title: "Welcom", imageName: "pic_one"),Event(title: "Welcom", imageName: "pic_four"),Event(title: "Welcom", imageName: "pic_one"),Event(title: "Welcom", imageName: "pic_four"),Event(title: "Welcom", imageName: "pic_one")]

       
    
      
    }
    
   


}

extension EventListVC : UITableViewDataSource , UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EventListCustomCell.reuseIdentifer, for: indexPath)as! EventListCustomCell
                  
        //  cell.event = eventList[indexPath.row]
        return cell
    }
    
    
    
}
