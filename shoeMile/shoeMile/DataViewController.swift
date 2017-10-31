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
    var goalMiles = 0.0
    
    @IBOutlet weak var stepperLab: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        stepperLab.text = String(sender.value)
        newMiles = sender.value
    }
    
    @IBOutlet weak var currentMileLab: UILabel!
    @IBOutlet weak var progressLab: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var loadingSymbol: UIActivityIndicatorView!
    
    @IBAction func submit(_ sender: Any) {
        animate()
        currentMiles += newMiles
        currentMileLab.text = String(currentMiles)
        UserDefaults.standard.set(currentMiles, forKey: "miles")
        progress()
        loadingSymbol.stopAnimating()
    }
    func animate(){
        loadingSymbol.hidesWhenStopped = true
        view.addSubview(loadingSymbol)
        loadingSymbol.startAnimating()
    }
    func progress(){
        if(goalMiles > 0.0){
            let progperc = Float((currentMiles / goalMiles) * 100)
            progressLab.text = String(progperc)
            progressView.progress = (progperc / 100)
        }
    }
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "miles") as? Double{
            currentMiles = x
            currentMileLab.text = String(x)
        }
        if let y = UserDefaults.standard.object(forKey: "maxMiles") as? Double{
            goalMiles = y
        }
    }
    

}

