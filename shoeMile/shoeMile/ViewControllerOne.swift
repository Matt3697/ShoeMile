//
//  ViewControllerOne.swift
//  shoeMile
//
//  Created by Matthew Sagen on 10/24/17.
//  Copyright © 2017 Matthew Sagen. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    @IBAction func login(_ sender: Any) {
        performSegue(withIdentifier: "logInSegue", sender: self)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        
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
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
