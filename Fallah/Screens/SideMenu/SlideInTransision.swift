//
//  SlideInTransision.swift
//  Fallah
//
//  Created by kasper on 7/27/20.
//  Copyright © 2020 com.Mahmoud.Abdul-Wahab.NewDesign25. All rights reserved.
//

import UIKit

class SlideInTransision: NSObject , UIViewControllerAnimatedTransitioning {
    var isPresenting = false
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        /// transitionContext this hold info about the view and viewcontroller which u want to transitioning to
        guard let toViewController = transitionContext.viewController(forKey: .to) ,let fromViewController = transitionContext.viewController(forKey: .from) else{return}
        // to which means menu .. from  the home VC
        
        // this container is created when presingting and dismissing viewcontrollers in transitions
        let containerVIew = transitionContext.containerView
        let finalWidth = toViewController.view.bounds.width * 0.8  // menue take 8/10 from the screen width
        let finalHeight = toViewController.view.bounds.height
        
        if isPresenting{
            //add menu VC to the container which created automatically during transition
            
            containerVIew.addSubview(toViewController.view)
            //set inintial fram of the screen
            // - finalWidth which is = 0 maybe
            toViewController.view.frame = CGRect(x: -finalWidth, y: 0, width: finalWidth, height: finalHeight)
        }
        
        
        // animate on the screen
        let transform = {
            toViewController.view.transform = CGAffineTransform(translationX: finalWidth, y: 0)
        }
        
        //reset the animation  when dismissing
        // animate back of the screen
        let identity = {
            fromViewController.view.transform = .identity
        }
        
        // animation of the transition 
        let duration = transitionDuration(using: transitionContext)
        
        let isCancelled = transitionContext.transitionWasCancelled
        UIView.animate(withDuration: duration, animations: {
            self.isPresenting ? transform() : identity()
        }) { (_) in
            transitionContext.completeTransition(!isCancelled)
        }
    }
    

}
