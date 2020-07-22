//
//  ViewController.swift
//  Fallah
//
//  Created by kasper on 7/15/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit
import ImageSlideshow



class HomeVC: UIViewController {
    
    static var isFromSearch = false
    static var isFromTikets = false
    @IBOutlet weak var alphaView: UIView!
    @IBOutlet weak var leftTable: UITableView!
    @IBOutlet weak var rightTable: UITableView!
    var eventList : [Event] = []
    
    @IBOutlet weak var TikitsContainer: UIView!
    @IBOutlet weak var searchContainer: UIView!
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var popUpSearchContainer: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var headerView: UIView!
    var pageControl = UIPageControl()
    //         var slidShowImageArray = [ImageSource(image:"slider")]
    
    var slidShowImageArray = [InputSource]()// converted savedImage
    @IBOutlet weak var imageSlider: ImageSlideshow!
    @IBOutlet weak var tabBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchContainer.makeRounded(value: 25, color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        TikitsContainer.roundCorners([.topRight , .topLeft], radius: 25)
        headerView.roundCorners([.bottomLeft], radius: 60)
        popUpSearchContainer.roundCorners([.topRight , .topLeft], radius: 60)
       
        imageSlider.setImageInputs([
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
        
        imageSlider.slideshowInterval = 3
        
        // UIApplication.shared.isStatusBarHidden = true
        
        
        // configureSlideShow()
        
        //        tabBar.layer.cornerRadius = 35
        //        view.backgroundColor = .link
        configureCollectionView()
        configureTableViews()
          self.DismissKeyboard()
        
        
           let tap = UITapGestureRecognizer(target: self, action: #selector(hidePopUp))
             alphaView.addGestureRecognizer(tap)
             
        
        
        eventList = [Event(title: "Welcom", imageName: "pic_one"),Event(title: "Welcom", imageName: "pic_four"),Event(title: "Welcom", imageName: "pic_one"),Event(title: "Welcom", imageName: "pic_four"),Event(title: "Welcom", imageName: "pic_one")]
         
        
        
        
    }
    
    @objc func hidePopUp(){
        HomeVC.isFromSearch = false
        self.alphaView.isHidden = true
                self.popUpSearchContainer.isHidden = true
        HomeVC.isFromTikets = false
        self.TikitsContainer.isHidden = true
        TabBarController.sharedTap.switchToHome() 
        
       // self.navigationController?.show(homeVC, sender: nil)
        tabBarController?.selectedIndex =  4
 
//        guard let tabbarController = UIApplication.shared.tabbarController() as? TabBarController else { return }
//        tabbarController.selectedIndex = 1  // Will redirect to first tab ( index = 0 )
//
//
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
        
        
        //       // TabBarController.changeTabIcon(tab: 0)
      
        
        
        if(HomeVC.isFromSearch == true){
             TikitsContainer.isHidden = true
            self.alphaView.isHidden = false
            self.alphaView.alpha = 0.5
            self.popUpSearchContainer.isHidden = false
         
        }else if (HomeVC.isFromTikets == true) {
            self.popUpSearchContainer.isHidden = true

            TikitsContainer.isHidden = false
                       searchContainer.isHidden = true
                       alphaView.isHidden = false
        }else{
            self.alphaView.isHidden = true
            self.popUpSearchContainer.isHidden = true
            self.TikitsContainer.isHidden = true
            HomeVC.isFromTikets = false
           
        }
            
       
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Show the Navigation Bar
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    
    }
    
    //
    //    override func viewWillLayoutSubviews() {
    //           super.viewWillLayoutSubviews()
    //
    //           // Call the roundCorners() func right there.
    //        headerView.roundCorners([.topLeft, .topRight], radius: 3.0)
    //       }
    //
    
    func configureCollectionView()  {
        
        
        collectionView.delegate         = self
        collectionView.dataSource       = self
        // collectionView.backgroundColor  = .systemBackground
        collectionView.collectionViewLayout = UIHelpers.createTwoColumnFlowLayout(in: view)
        collectionView.register(EventCell.nib(), forCellWithReuseIdentifier:EventCell.reuseIdentifer)
    }
    
    
    func configureTableViews(){
        rightTable.delegate             = self
        rightTable.dataSource           = self
        leftTable.delegate              = self
        leftTable.dataSource            = self
        
        
        rightTable.register(EventsDateCell.nib(), forCellReuseIdentifier: EventsDateCell.reuseIdentifer)
        
        leftTable.register(EventsListCell.nib(), forCellReuseIdentifier: EventsListCell.reuseIdentifer)
      
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func configureSlideShow(){
        imageSlider.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
        imageSlider.contentScaleMode = .scaleToFill
        
        
        pageControl.currentPageIndicatorTintColor = UIColor.black
        pageControl.pageIndicatorTintColor = UIColor.gray
        imageSlider.pageIndicator = pageControl
        
        imageSlider.activityIndicator = DefaultActivityIndicator()
        imageSlider.delegate = self
        
        if #available(iOS 13.0, *) {
            let recognizer = UITapGestureRecognizer(target: self, action: #selector(HomeVC.didTap))
            
            imageSlider.addGestureRecognizer(recognizer)
            //            slidShowImageArray = []
            //            tableView.reloadData()
        } else {
            // Fallback on earlier versions
        }
    }
    
    @objc func didTap() {
        let fullScreenController = imageSlider.presentFullScreenController(from: self)
        // set the activity indicator for full screen controller (skipping the line will show no activity indicator)
        fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
    }
}

extension HomeVC: ImageSlideshowDelegate {
    func imageSlideshow(_ imageSlideshow: ImageSlideshow, didChangeCurrentPageTo page: Int){
        
    }
}



extension HomeVC :  UICollectionViewDelegate  , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        eventList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EventCell.reuseIdentifer , for: indexPath) as! EventCell
        cell.event = eventList[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    
}

extension HomeVC : UITableViewDataSource , UITableViewDelegate  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       if tableView == leftTable {


        return eventList.count
       }
       else {

           return eventList.count
       }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if tableView == leftTable {
            let cell = leftTable.dequeueReusableCell(withIdentifier: EventsListCell.reuseIdentifer, for: indexPath) as! EventsListCell
            cell.event = eventList[indexPath.row]
                   return cell
               }
               else {
            let cell = rightTable.dequeueReusableCell(withIdentifier: EventsDateCell.reuseIdentifer , for: indexPath) as! EventsDateCell
             cell.event = eventList[indexPath.row]
                   return cell
                   
               }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == leftTable {


               return 150
              }
              else {

                  return 60
              }
    }
    
}
