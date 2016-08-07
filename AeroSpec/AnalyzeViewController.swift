//
//  AnalyzeViewController.swift
//  AeroSpec
//
//  Created by Zach Feingold on 8/7/16.
//  Copyright © 2016 nrg. All rights reserved.
//

import UIKit
import AVFoundation
import Dispatch

class AnalyzeViewController: UIViewController {
   
   @IBOutlet weak var previewView: UIView!
   @IBOutlet weak var calibrateButton: UIButton!
   
   var captureSession: AVCaptureSession?
   var stillImageOutput: AVCaptureStillImageOutput?
   var previewLayer: AVCaptureVideoPreviewLayer?
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }
   
   override func viewWillAppear(animated: Bool) {
      super.viewWillAppear(animated)
      
      captureSession = AVCaptureSession()
      captureSession!.sessionPreset = AVCaptureSessionPresetPhoto
      
      let backCamera = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
      
      var error: NSError?
      var input: AVCaptureDeviceInput!
      do {
         input = try AVCaptureDeviceInput(device: backCamera)
      } catch let error1 as NSError {
         error = error1
         input = nil
      }
      
      if error == nil && captureSession!.canAddInput(input) {
         captureSession!.addInput(input)
         
         stillImageOutput = AVCaptureStillImageOutput()
         stillImageOutput!.outputSettings = [AVVideoCodecKey: AVVideoCodecJPEG]
         if captureSession!.canAddOutput(stillImageOutput) {
            captureSession!.addOutput(stillImageOutput)
            
            previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            previewLayer!.videoGravity = AVLayerVideoGravityResizeAspect
            previewLayer!.connection?.videoOrientation = AVCaptureVideoOrientation.Portrait
            previewView.layer.addSublayer(previewLayer!)
            
            captureSession!.startRunning()
         }
      }
      
   }
   
   override func viewDidAppear(animated: Bool) {
      super.viewDidAppear(animated)
      if (previewLayer != nil) {
         previewLayer!.frame = previewView.bounds
      }
   }
   
   @IBAction func calibrateButtonPressed(sender: AnyObject) {
      let seconds = 3.0
      let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
      let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
      let borderWidth: CGFloat = 2.0
      
      dispatch_after(dispatchTime, dispatch_get_main_queue(), {
         
         self.previewView.layer.borderColor = UIColor.greenColor().CGColor
         self.previewView.layer.borderWidth = borderWidth
      })
   }
}

