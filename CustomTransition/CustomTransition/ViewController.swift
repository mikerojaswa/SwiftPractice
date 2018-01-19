//
//  ViewController.swift
//  CustomTransition
//
//  Created by Michael Rojas on 12/18/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let transition = PopAnimator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doStuffs() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.transitioningDelegate = self
        self.present(secondViewController, animated: true, completion: nil)
    }

    @IBAction func buttonPressed(_ sender: Any) {
        doStuffs()
    }
}

extension ViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
}

