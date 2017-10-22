//
//  DataViewController.swift
//  shoeMile
//
//  Created by Matthew Sagen on 10/9/17.
//  Copyright © 2017 Matthew Sagen. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    //stepper label displays user input on stepper
    @IBOutlet weak var stepperLabel: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        stepperLabel.text = String(sender.value)
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

