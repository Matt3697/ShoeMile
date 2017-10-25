//
//  settingsViewController.swift
//  shoeMile
//
//  Created by Matthew Sagen on 10/25/17.
//  Copyright © 2017 Matthew Sagen. All rights reserved.
//

import UIKit
    var goalMiles = 0.0
class settingsViewController: UIViewController {
    
    
    @IBAction func setGoalMiles(_ sender: Double) {
            goalMiles = sender
    }
    
    
    @IBAction func exit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
