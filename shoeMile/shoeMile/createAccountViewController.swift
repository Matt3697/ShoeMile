//
//  createAccountViewController.swift
//  shoeMile
//
//  Created by Matthew Sagen on 10/24/17.
//  Copyright © 2017 Matthew Sagen. All rights reserved.
//

import UIKit


class createAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
