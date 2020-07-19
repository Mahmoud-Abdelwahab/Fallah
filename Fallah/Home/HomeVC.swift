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
    
    var eventList : [Event] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var headerView: UIView!
    var pageControl = UIPageControl()
    //         var slidShowImageArray = [ImageSource(image:"slider")]
    
    var slidShowImageArray=[InputSource]()// converted savedImage
    @IBOutlet weak var imageSlider: ImageSlideshow!
    @IBOutlet weak var tabBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.roundCorners([.bottomLeft], radius: 60)
        
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
        
        eventList = [Event(title: "Welcom", imageName: "pic_one"),Event(title: "Welcom", imageName: "pic_four"),Event(title: "Welcom", imageName: "pic_one"),Event(title: "Welcom", imageName: "pic_four"),Event(title: "Welcom", imageName: "pic_one")]
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
        TabBarController.changeTabIcon(tab: 0)
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
