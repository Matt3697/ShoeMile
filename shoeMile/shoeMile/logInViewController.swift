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
    
    
    
    
    
    @IBAction func submit(_ sender: Any) {
        performSegue(withIdentifier: "dataSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        var usrEmail = email.text
        var usrPass = password.text
        
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
