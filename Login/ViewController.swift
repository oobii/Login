//
//  ViewController.swift
//  Login
//
//  Created by martynov on 2017-11-17.
//  Copyright © 2017 martynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // do switch case here to set the right nav item title base on forget ....
        
        guard let button = sender as? UIButton else { return }

        switch button {
                    case forgotUsername:
                        segue.destination.navigationItem.title = "Forgot username"
                    case forgotPassword:
                        segue.destination.navigationItem.title = "Forgot password"
                    default:
                        segue.destination.navigationItem.title = username.text
                    
              
           
        }
    }
    
}

