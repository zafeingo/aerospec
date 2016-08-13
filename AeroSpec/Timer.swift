//
//  Timer.swift
//  AeroSpec
//
//  Created by Zach Feingold on 8/11/16.
//  Copyright © 2016 nrg. All rights reserved.
//

import UIKit
//Currently not being used to create timer, but here is the code for one.
/*
class Timer {
   var timerCounter:NSTimeInterval!
   
   func stringFromTimeInterval(interval: NSTimeInterval) -> String {
      let interval = Int(interval)
      let seconds = interval % 60
      let minutes = (interval / 60) % 60
      let hours = (interval / 3600)
      return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
   }
   
   func startTimer(hour:Int) {
      timerCounter = NSTimeInterval(hour * 60 * 60)
      NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onTimer:", userInfo: nil, repeats: true)
   }
   
   func onTimer(timer:NSTimer!) {
      // Here is the string containing the timer
      // Update your label here
      print(stringFromTimeInterval(timerCounter))
      timerCounter = timerCounter - 1
   }
}
*/