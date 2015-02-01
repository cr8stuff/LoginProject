//
//  MainViewController.swift
//  LoginProject
//
//  Created by Jamie Montz on 1/28/15.
//  Copyright (c) 2015 David Montz. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UILabel!
    @IBOutlet weak var passwordTextField: UILabel!
    
    @IBAction func cancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey(kUserNameKey) as String
        let password = NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey) as String


        usernameTextField.text = userName
        passwordTextField.text = password
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
