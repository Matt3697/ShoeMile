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
    
    
    
    @IBOutlet weak var goalMilesLab: UITextField!
    
    @IBAction func saveChanges(_ sender: Any) {
        if(goalMilesLab.text != nil){
            goalMiles = goalMiles.binade
        }
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
