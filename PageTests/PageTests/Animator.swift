//
//  Animator.swift
//  PageTests
//
//  Created by Michael Rojas on 12/19/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import Foundation
import Foundation
import UIKit

class Animator: NSObject, UIViewControllerAnimatedTransitioning {
    let duration = 10.0
    var presenting = true
    var originFrame = CGRect.zero
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let screenWidth = UIScreen.main.bounds.size.width
        let containerView = transitionContext.containerView
        let fromView = transitionContext.viewController(forKey: .from)! as! AViewController
        let toView = transitionContext.viewController(forKey: .to)! as! BViewController
        containerView.addSubview(toView.view)

        UIView.animate(withDuration: duration,
                       animations: {
                        let rectOffFrom = CGRect(origin: CGPoint(x: -screenWidth, y: fromView.redView.frame.size.height), size: fromView.redView.bounds.size)
                        fromView.redView.frame = rectOffFrom
        },
                       completion: { _ in
                        transitionContext.completeTransition(true)
        }
        )
    }
    
}
