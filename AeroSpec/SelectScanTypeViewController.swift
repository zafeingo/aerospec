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
   @IBOutlet weak var TimerLabel: UILabel!
   @IBOutlet weak var ScanButton: UIButton!
   @IBOutlet weak var ScanLabelText: UILabel!
   
   
//   var timerCounter:NSTimeInterval!
   var count = 180
   var minutes = 0
   var seconds = 0
   @IBAction func outdoorTap(sender: AnyObject) {
      if(outdoorButton.selected == false){
         outdoorButton.selected = true;
      } else {
         outdoorButton.selected = false;
      }
      
   }
   
   @IBAction func indoorTap(sender: AnyObject) {
      if(indoorButton.selected == false){
         indoorButton.selected = true;
      } else {
         indoorButton.selected = false;
      }
   }
   
   @IBAction func ScanButtonPressed(sender: AnyObject) {
      //if (indoorButton.selected == true || outdoorButton.selected == true) {
         var _ = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(SelectScanTypeViewController.update), userInfo: nil, repeats: true)
//      } else {
//         let alertController = UIAlertController(title: "Unable to Start Scan", message:
//            "Please specify whether this is an indoor and/or outdoor scan to proceed.", preferredStyle: UIAlertControllerStyle.Alert)
//         alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
//      }
      if (ScanLabelText.text == "START") {
         ScanLabelText.text = "PAUSE"
         //ScanButton.setBackgroundImage("Pause.png", forState: <#T##UIControlState#>)
         //Pause timer
      } else if (ScanLabelText.text == "PAUSE") {
         ScanLabelText.text = "START"
         //ScanButton.setBackgroundImage("Start.png", forState: <#T##UIControlState#>)
         //Resume timer
      }
   }

   func update() {
      if(count > 0) {
         count -= 1
         minutes = count / 60
         seconds = count - (minutes * 60)
         TimerLabel.text = NSString.localizedStringWithFormat("Time Remaining: %2d:%2d", minutes, seconds) as String
      }
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
