//
//  FirstViewController.swift
//  CustomViewControllerPresentationTransitions
//
//  Created by Michael Rojas on 12/8/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    static let cornerRadius: CGFloat = 25
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView.layer.cornerRadius = FirstViewController.cornerRadius
        uiView.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var uiView: UIView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

