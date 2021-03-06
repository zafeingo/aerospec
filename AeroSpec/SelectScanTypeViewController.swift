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
   @IBOutlet weak var header: UILabel!
   @IBOutlet weak var ProgressLabel: UIProgressView!
    
    var timerCounter:NSTimeInterval!
    var count = 0;
    var increment = 0.0;
    var pressed = false;
    var paused = false;
    var started = false;
    
   @IBAction func outdoorTap(sender: AnyObject) {
      if(outdoorButton.selected == false){
         outdoorButton.selected = true;
        count += 180;
        calcTime();
      } else {
         outdoorButton.selected = false;
        count -= 180;
        calcTime();
      }
   }
 
   
   @IBAction func indoorTap(sender: AnyObject) {
      if(indoorButton.selected == false){
         indoorButton.selected = true;
        count += 90;
        calcTime();
      } else {
         indoorButton.selected = false;
        count -= 90;
        calcTime();
      }
    }
   
   @IBAction func ScanButtonPressed(sender: AnyObject) {
    outdoorButton.hidden = true;
    indoorButton.hidden = true;
    header.text = "SCANNING";
    header.textAlignment = NSTextAlignment.Center;
    ProgressLabel.hidden = false;
    if(pressed == false) {
        increment = 1.0 / Double(count);
        pressed = true;
    }
    
         var _ = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(SelectScanTypeViewController.update), userInfo: nil, repeats: true)
    
    if (paused == false && started == true) {
        ScanLabelText.text = "PAUSED"
        ScanButton.selected = true;
        paused = true;
    } else if (paused == true && started == true) {
        ScanLabelText.text = "START"
        ScanButton.selected = false;
        paused = false;
      }
    
    started = true;
    if(paused == false) {
        ScanLabelText.text = "SCANNING";
    }
   }

   func update() {
      if(count > 0 && paused == false) {
         count -= 1

        calcTime();
        
        let floatIncrement = Float(increment);
        ProgressLabel.progress += floatIncrement;
      }
   }
    func calcTime()  {
        let min = count / 60;
        
        let minutesZ = UInt8(count / 60);
        let secondsZ = UInt8(count - (min * 60));
        
        let strMinutes = String(format: "%2d", minutesZ);
        let strSeconds = String(format: "%02d", secondsZ);
        
        TimerLabel.text = "Time Remaining: \(strMinutes):\(strSeconds)";
    }
   
   override func viewDidLoad() {
      super.viewDidLoad()
      ProgressLabel.hidden = true;
      ProgressLabel.setProgress(0, animated: true);
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
