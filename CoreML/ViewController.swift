//
//  ViewController.swift
//  CoreML
//
//  Created by MattHew Phraxayavong on 9/17/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var observeButtonOutlet: UIButton!
    
    var captureSession: AVCaptureSession!
    var observing = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        captureSession = AVCaptureSession()
    }
    
    // Mark: IBActions
    @IBAction func observeButtonPressed(_ sender: Any) {
        observing = !observing
        if observing {
            observeButtonOutlet.setTitle("Stop", for: .normal)
        } else {
            observeButtonOutlet.setTitle("Observe", for: .normal)
        }
    }
    
}

