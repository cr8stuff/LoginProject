//
//  LoginViewConrtrollerViewController.swift
//  LoginProject
//
//  Created by Jamie Montz on 1/28/15.
//  Copyright (c) 2015 David Montz. All rights reserved.
//

import UIKit

class LoginViewConrtroller: UIViewController, CreateAccountViewControllerDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSeque" {
            var createAccountVC = segue.destinationViewController as CreateAccountViewController
            createAccountVC.delegate = self
        }
    }
    
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey(kUserNameKey) as String
        let password = NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey) as String
        
        if (userName == usernameTextField.text && password == passwordTextField.text){
            self.performSegueWithIdentifier("loginToMainSegue", sender: self)
        }
        else{
            println("invalid password")
        }
        
        
    }
    
    @IBAction func createAccountButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("loginToCreateAccountSeque", sender: self)
    }
    
    //create accountviewcontroller delegate
    func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
    }

}
