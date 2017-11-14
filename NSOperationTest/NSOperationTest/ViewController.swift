//
//  ViewController.swift
//  NSOperationTest
//
//  Created by Michael Rojas on 11/1/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var Button: UIButton!
    
    var task: DispatchWorkItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        Button.addTarget(self, action: #selector(cancelTask), for: .touchUpInside)
        createWorkItem()
    }
    
    func createWorkItem(){
        task = DispatchWorkItem { self.view.backgroundColor = .red}

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: task!)
    }
   
    
    @objc func cancelTask(){
        task?.cancel()
    }

}

