//
//  createAccountViewController.swift
//  shoeMile
//
//  Created by Matthew Sagen on 10/24/17.
//  Copyright © 2017 Matthew Sagen. All rights reserved.
//

import UIKit


class createAccountViewController: UIViewController {

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var firstNameBox: UITextField!
    @IBOutlet weak var lastNameBox: UITextField!
    @IBOutlet weak var emailBox: UITextField!
    @IBOutlet weak var passwordBox: UITextField!
    @IBOutlet weak var passRepeatBox: UITextField!
    
    
    @IBAction func closeWindow(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func submit(_ sender: Any) {
        if(firstNameBox.text != nil){
            UserDefaults.standard.set(firstNameBox.text, forKey: "firstName")
        }
        if(lastNameBox.text != nil){
            if(UserDefaults.standard.bool(forKey: "email") == true){
                print("User with that email already exists.")
            }
            else{
                UserDefaults.standard.set(lastNameBox.text, forKey: "lastName")
            }
        }
        if(emailBox.text != nil){
            UserDefaults.standard.set(emailBox.text, forKey: "email")
        }
        if(passwordBox.text != nil && passwordBox.text == passRepeatBox.text){
            UserDefaults.standard.set(passwordBox.text, forKey: "password")
        }
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
}
