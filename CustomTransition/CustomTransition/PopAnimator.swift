//
//  PopAnimator.swift
//  CustomTransition
//
//  Created by Michael Rojas on 12/18/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import Foundation
import UIKit

class PopAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    let duration = 0.4
    var presenting = true
    var originFrame = CGRect.zero
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let screenWidth = UIScreen.main.bounds.size.width
        let containerView = transitionContext.containerView
        let fromView = transitionContext.view(forKey: .from)!
        let toView = transitionContext.viewController(forKey: .to)! as! SecondViewController
        containerView.addSubview(toView.view)
        
        let rectBefor = CGRect(origin: CGPoint(x: screenWidth, y: toView.blueView.bounds.size.height), size: toView.blueView.bounds.size)
        toView.blueView.frame = rectBefor
        UIView.animate(withDuration: duration,
                       animations: {
                        let rectOffFrom = CGRect(origin: CGPoint(x: -screenWidth, y: 0), size: fromView.bounds.size)

                        fromView.frame = rectOffFrom
                        let rectOff = CGRect(origin: CGPoint(x: 0, y: toView.blueView.bounds.size.height), size: toView.blueView.bounds.size)
                        toView.blueView.frame = rectOff
                        
                        
        },
                       completion: { _ in
                        transitionContext.completeTransition(true)
        }
        )
    }

}
