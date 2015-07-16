//
//  ViewController.swift
//  SwiftProgressBar
//
//  Created by Sridhar Sanapala on 7/16/15.
//  Copyright (c) 2015 everythingswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var progressBarView:UIProgressView!
    var progressBarTimer:NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.progressBarTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateProgressBar", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateProgressBar(){
        self.progressBarView.progress += 0.1
        if(self.progressBarView.progress == 1.0)
        {
            self.progressBarView.removeFromSuperview()
        }
        
    }
}

