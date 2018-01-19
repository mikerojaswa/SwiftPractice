//
//  AViewController.swift
//  PageTests
//
//  Created by Michael Rojas on 12/15/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
    let transition = Animator()


    @IBOutlet weak var redView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
}

extension AViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
}
