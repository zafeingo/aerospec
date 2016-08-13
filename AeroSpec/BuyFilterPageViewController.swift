//
//  BuyFilterPageViewController.swift
//  AeroSpec
//
//  Created by Colin Martin on 7/29/16.
//  Copyright © 2016 nrg. All rights reserved.
//

import UIKit
import Foundation

class BuyFilterPageViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var filterNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.filterNumber.delegate = self
    }
    func textFieldShouldReturn(passwordTextField: UITextField!) -> Bool {
        passwordTextField.resignFirstResponder()
        return true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
