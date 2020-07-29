//
//  ReserveTicketVC.swift
//  Fallah
//
//  Created by kasper on 7/23/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit
import ImageSlideshow
class ReserveTicketVC: UIViewController {
    
    var pageControl = UIPageControl()

    @IBOutlet weak var ReserveTicket: UIButton!
    @IBAction func ReserveTicketBtn(_ sender: Any) {
    }
    
    var slidShowImageArray = [InputSource]()// converted savedImage
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var status: UIButton!
    
    @IBOutlet weak var imageSlideShow: ImageSlideshow!
    override func viewDidLoad() {
        super.viewDidLoad()
        
          containerView.roundCorners([.topRight], radius: 80)
        status.makeRounded(value: 80, color: #colorLiteral(red: 0.1515082552, green: 1, blue: 0, alpha: 1))
        
        
        configureSlideShow()
        
        setUpReserveBtn()
    }
    func setUpReserveBtn()  {
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: ReserveTicket.frame.size.width, height:ReserveTicket.frame.size.height))
               lineView.borderColor = #colorLiteral(red: 0.05882352941, green: 0.8196078431, blue: 0.9803921569, alpha: 1)
               lineView.borderWidth = 2
               lineView.cornerRadius = 20
               //lineView.backgroundColor = UIColor.black
               ReserveTicket.addSubview(lineView)
    }
    
    func configureSlideShow(){
        imageSlideShow.setImageInputs([
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!),
            ImageSource(image: UIImage(named: "slider")!)
        ])
        
        imageSlideShow.slideshowInterval = 3
          imageSlideShow.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
          imageSlideShow.contentScaleMode = .scaleToFill
          
          
          pageControl.currentPageIndicatorTintColor = UIColor.black
          pageControl.pageIndicatorTintColor = UIColor.gray
          imageSlideShow.pageIndicator = pageControl
          
          imageSlideShow.activityIndicator = DefaultActivityIndicator()
          imageSlideShow.delegate = self
          
          if #available(iOS 13.0, *) {
              let recognizer = UITapGestureRecognizer(target: self, action: #selector(HomeVC.didTap))
              
              imageSlideShow.addGestureRecognizer(recognizer)
              //            slidShowImageArray = []
              //            tableView.reloadData()
          } else {
              // Fallback on earlier versions
          }
      }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension ReserveTicketVC: ImageSlideshowDelegate {
    func imageSlideshow(_ imageSlideshow: ImageSlideshow, didChangeCurrentPageTo page: Int){
        
    }
}
