//
//  ViewController.swift
//  AeroSpec
//
//  Created by Zach Feingold on 7/24/16.
//  Copyright © 2016 nrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   let password = "123456"
   //MARK: Properties:
   @IBOutlet weak var LoginButton: UIButton!
   @IBOutlet weak var passwordTextField: UITextField!
   
   override func viewDidLoad() {
      super.viewDidLoad()
        self.passwordTextField.delegate = self
      // Do any additional setup after loading the view, typically from a nib.
   }
    func textFieldShouldReturn(passwordTextField: UITextField) -> Bool {
        passwordTextField.resignFirstResponder()
        return true;
    }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
   @IBAction func loginButtonClicked(sender: AnyObject) {
      if (passwordTextField.text == password) {
         self.performSegueWithIdentifier("LoginButtonPressed", sender: self)
      } else {
         let alertController = UIAlertController(title: "Incorrect Password", message:
            "Please enter the correct password for this account.", preferredStyle: UIAlertControllerStyle.Alert)
         alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
         
         self.presentViewController(alertController, animated: true, completion: nil)
      }
   }
   
}

