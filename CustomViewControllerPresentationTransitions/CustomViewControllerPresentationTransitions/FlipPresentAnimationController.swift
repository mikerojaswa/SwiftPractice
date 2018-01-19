//
//  FlipPresentAnimationController.swift
//  CustomViewControllerPresentationTransitions
//
//  Created by Michael Rojas on 12/12/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit

class FlipPresentAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    private let originFrame: CGRect
    
    init(originFrame: CGRect) {
        self.originFrame = originFrame
    }

    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 2.0
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        // 1
        guard let fromVC = transitionContext.viewController(forKey: .from),
            let toVC = transitionContext.viewController(forKey: .to),
            let snapshot = toVC.view.snapshotView(afterScreenUpdates: true)
            else {
                return
        }
        
        // 2
        let containerView = transitionContext.containerView
        let finalFrame = transitionContext.finalFrame(for: toVC)
        
        // 3
        snapshot.frame = originFrame
        snapshot.layer.cornerRadius = FirstViewController.cornerRadius
        snapshot.layer.masksToBounds = true
        
        // 1
        containerView.addSubview(toVC.view)
        containerView.addSubview(snapshot)
        toVC.view.isHidden = true
        
//        // 2
//        AnimationHelper.perspectiveTransform(for: containerView)
//        snapshot.layer.transform = AnimationHelper.yRotation(.pi / 2)
//        // 3
        let duration = transitionDuration(using: transitionContext)

    }
    

}
