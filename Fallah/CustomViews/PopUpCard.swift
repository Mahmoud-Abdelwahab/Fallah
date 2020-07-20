//
//  PopUpCard.swift
//  Fallah
//
//  Created by kasper on 7/20/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class PopUpCard: UIViewController {
    
    let containerView           = GFAlertContainerAlert()
    let titleLable              = GFTitleLable(textAlignment: .center, fontSize: 20 )
    
    var  alertTitle  : String?
    var  message : String?
    var  buttonTitle : String?
    
    
    init(alertTitle : String , message : String , buttonTitle : String){
        super.init(nibName : nil , bundle : nil)
        self.alertTitle         = alertTitle
        self.message            = message
        self.buttonTitle        = buttonTitle
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        view.backgroundColor    = UIColor.black.withAlphaComponent(0.75)
        configuringContainerView()
        configureTitleView()
        
    }
    
    
    func configuringContainerView()  {
        view.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.heightAnchor.constraint(equalToConstant: 600) ,
            
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    
    
    func configureTitleView()  {
        containerView.addSubview(titleLable)
        
        titleLable.text = alertTitle ?? "Somthing went Wrong"
        
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20) ,
            titleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20) ,
            titleLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor  , constant: -20)
            ,
            titleLable.heightAnchor
                .constraint(equalToConstant: 28)
            
        ])
        
    }
    
    
    
    
    
    @objc func dismissVC (){
        // dimiss
        dismiss(animated: true)
        
    }
}
