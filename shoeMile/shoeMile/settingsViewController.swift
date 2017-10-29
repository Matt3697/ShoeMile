//
//  settingsViewController.swift
//  shoeMile
//
//  Created by Matthew Sagen on 10/25/17.
//  Copyright © 2017 Matthew Sagen. All rights reserved.
//

import UIKit


class settingsViewController: UIViewController {
    
    
    var goalMiles = 0.0
    @IBOutlet weak var goalMilesLab: UITextField!
    
    @IBAction func exit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func save(_ sender: UIButton) {
        let goalMiles = Double(goalMilesLab.text!)
        goalMilesLab.text = String(describing: goalMiles)
        UserDefaults.standard.set("goalMiles", forKey: "maxMiles")
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "maxMiles") as? Double{
            goalMiles = x
            goalMilesLab.text = String(x)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
