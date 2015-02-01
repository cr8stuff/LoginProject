//
//  CreateAccountViewController.swift
//  LoginProject
//
//  Created by Jamie Montz on 1/28/15.
//  Copyright (c) 2015 David Montz. All rights reserved.
//

import UIKit

protocol CreateAccountViewControllerDelegate {
    func accountCreated ()
}

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var choosePassword: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var chooseUsername: UITextField!
    
    var delegate:CreateAccountViewControllerDelegate?
    
    @IBAction func accountCreateButtonPressed(sender: UIButton) {
        
        if (choosePassword.text == confirmPassword.text && choosePassword.text != nil){
            
            NSUserDefaults.standardUserDefaults().setObject(self.chooseUsername.text, forKey: kUserNameKey)
            NSUserDefaults.standardUserDefaults().setObject(self.choosePassword.text, forKey: kPasswordKey)
            NSUserDefaults.standardUserDefaults().synchronize()
           
            self.dismissViewControllerAnimated(true, completion: nil)
            delegate?.accountCreated()
        }
    }
    @IBAction func accountCreateCancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
