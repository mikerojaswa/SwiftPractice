//
//  MasterViewController.swift
//  PageTests
//
//  Created by Michael Rojas on 12/18/17.
//  Copyright © 2017 Michael Rojas. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    private var pageViewController: PageViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "embedSegue" {
            pageViewController = segue.destination as? PageViewController
        }
    }

    @IBAction func nextButtonPressed(_ sender: Any) {
        pageViewController?.nextPage() { [weak self] (previousViewController, nextViewController) in
            print("We did it")
        }

    }
    
}
