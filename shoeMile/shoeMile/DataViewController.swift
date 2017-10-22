//
//  DataViewController.swift
//  shoeMile
//
//  Created by Matthew Sagen on 10/9/17.
//  Copyright © 2017 Matthew Sagen. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
  
    var newMiles = 0.0
    var currentMiles = 0.0
    var iter = 0.0
    @IBOutlet weak var stepperLab: UILabel!
    
    @IBAction func stepper(_ sender: UIStepper) {
        stepperLab.text = String(sender.value)
        newMiles = sender.value
    }
    
    
    
    @IBOutlet weak var currentMileLab: UILabel!
    
    @IBAction func submit(_ sender: Any) {
        currentMiles += newMiles
        currentMileLab.text = String(currentMiles)
        newMiles = 0.0
        
    }
    
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }


}

