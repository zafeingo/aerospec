//
//  SelectScanTypeViewController.swift
//  AeroSpec
//
//  Created by Colin Martin on 7/29/16.
//  Copyright © 2016 nrg. All rights reserved.
//

import UIKit

class SelectScanTypeViewController: UIViewController {

    @IBOutlet weak var outdoorButton: UIButton!
    @IBOutlet weak var indoorButton: UIButton!
    
    
    @IBAction func outdoorTap(sender: AnyObject) {
        indoorButton.selected = false
        outdoorButton.selected = true
    }
    
    @IBAction func indoorTap(sender: AnyObject) {
        outdoorButton.selected = false
        indoorButton.selected = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
