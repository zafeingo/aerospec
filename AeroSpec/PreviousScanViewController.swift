//
//  PreviousScanViewController.swift
//  AeroSpec
//
//  Created by Colin Martin on 8/3/16.
//  Copyright © 2016 nrg. All rights reserved.
//

import UIKit

class PreviousScanViewController: UIViewController {
   @IBOutlet weak var button1: UIButton!
   @IBOutlet weak var button2: UIButton!
   @IBOutlet weak var button3: UIButton!
   @IBOutlet weak var button4: UIButton!
   @IBOutlet weak var button5: UIButton!
   @IBOutlet weak var DeleteButton: UIButton!
   @IBOutlet weak var backButton: UIButton!
   
   @IBOutlet weak var profile1: UIImageView!
   @IBOutlet weak var profile2: UIImageView!
   @IBOutlet weak var profile3: UIImageView!
   @IBOutlet weak var profile4: UIImageView!
   @IBOutlet weak var profile5: UIImageView!
   
   @IBOutlet weak var location1: UILabel!
   @IBOutlet weak var location2: UILabel!
   @IBOutlet weak var location3: UILabel!
   @IBOutlet weak var location4: UILabel!
   @IBOutlet weak var location5: UILabel!
   
   @IBOutlet weak var check1: UIImageView!
   @IBOutlet weak var check2: UIImageView!
   @IBOutlet weak var check3: UIImageView!
   @IBOutlet weak var check4: UIImageView!
   @IBOutlet weak var check5: UIImageView!
   
   @IBOutlet weak var deselect1: UIImageView!
   @IBOutlet weak var deselect2: UIImageView!
   @IBOutlet weak var deselect3: UIImageView!
   @IBOutlet weak var deselect4: UIImageView!
   @IBOutlet weak var deselect5: UIImageView!
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      check1.hidden = true;
      check2.hidden = true;
      check3.hidden = true;
      check4.hidden = true;
      check5.hidden = true;
      
      
      // Do any additional setup after loading the view.
   }
   
   @IBAction func backButtonPressed(sender: AnyObject) {
      dismissViewControllerAnimated(true, completion: nil)
   }
   
   @IBAction func hit1(sender: AnyObject) {
      check1.hidden = false;
      check2.hidden = true;
      check3.hidden = true;
      check4.hidden = true;
      check5.hidden = true;
   }
   @IBAction func hit2(sender: AnyObject) {
      check1.hidden = true;
      check2.hidden = false;
      check3.hidden = true;
      check4.hidden = true;
      check5.hidden = true;
   }
   @IBAction func hit3(sender: AnyObject) {
      check1.hidden = true;
      check2.hidden = true;
      check3.hidden = false;
      check4.hidden = true;
      check5.hidden = true;
   }
   @IBAction func hit4(sender: AnyObject) {
      check1.hidden = true;
      check2.hidden = true;
      check3.hidden = true;
      check4.hidden = false;
      check5.hidden = true;
   }
   @IBAction func hit5(sender: AnyObject) {
      check1.hidden = true;
      check2.hidden = true;
      check3.hidden = true;
      check4.hidden = true;
      check5.hidden = false;
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
   @IBAction func deleteButtonClicked(sender: AnyObject) {
      if (check1.hidden == false) {
         profile1.image = UIImage(named:"BlueProfileCircle.png")
         location1.text = "Gym"
         button5.hidden = true
         profile5.hidden = true
         check5.hidden = true
         deselect5.hidden = true
         location5.hidden = true
      } else if (check2.hidden == false) {
         profile2.image = UIImage(named:"BlueProfileCircle.png")
         location2.text = "Gym"
         button5.hidden = true
         profile5.hidden = true
         check5.hidden = true
         deselect5.hidden = true
         location5.hidden = true
      } else if (check3.hidden == false) {
         profile3.image = UIImage(named:"BlueProfileCircle.png")
         location3.text = "Gym"
         button5.hidden = true
         profile5.hidden = true
         check5.hidden = true
         deselect5.hidden = true
         location5.hidden = true
      } else if (check4.hidden == false) {
         profile4.image = UIImage(named:"BlueProfileCircle.png")
         location4.text = "Gym"
         button5.hidden = true
         profile5.hidden = true
         check5.hidden = true
         deselect5.hidden = true
         location5.hidden = true
      } else if (check5.hidden == false) {
         button5.hidden = true
         profile5.hidden = true
         check5.hidden = true
         deselect5.hidden = true
         location5.hidden = true
      }
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
