//
//  BViewController.swift
//  PageTests
//
//  Created by Michael Rojas on 12/15/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenWidth = UIScreen.main.bounds.size.width
        self.blueView.frame = CGRect(origin: CGPoint(x: screenWidth, y: self.blueView.bounds.size.height), size: self.blueView.bounds.size)
        self.redView.frame = CGRect(origin: CGPoint(x: 0, y: self.blueView.bounds.size.height), size: self.blueView.bounds.size)
        animateIn()
    }
    
    func animateIn() {
        let screenWidth = UIScreen.main.bounds.size.width
        UIView.animate(withDuration: 0.3,
                       animations: {
                        let blueViewOffset = CGRect(origin: CGPoint(x: 0, y: self.blueView.bounds.size.height), size: self.blueView.bounds.size)
                        let redViewOffset = CGRect(origin: CGPoint(x: -screenWidth, y: self.redView.bounds.size.height), size: self.redView.bounds.size)
                        
                        self.redView.frame = redViewOffset
                        self.blueView.frame = blueViewOffset
                        
        },completion:nil)
    }
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!
    
}

