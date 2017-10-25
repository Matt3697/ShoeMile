//
//  logInViewController.swift
//  shoeMile
//
//  Created by Matthew Sagen on 10/24/17.
//  Copyright © 2017 Matthew Sagen. All rights reserved.
//

import UIKit

class logInViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
   
    var actEmail = UserDefaults.standard.object(forKey: "email") as? String
    var actPass = UserDefaults.standard.object(forKey: "password") as? String
    
    @IBAction func exit(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func submit(_ sender: Any) {
        let entEmail = email.text
        let entPass = password.text
        if((entEmail == actEmail) && (entPass == actPass)){
            performSegue(withIdentifier: "dataSegue", sender: self)
        }
        else{
            print("The Email or Password Entered is Incorrect")
            dismiss(animated: false, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
