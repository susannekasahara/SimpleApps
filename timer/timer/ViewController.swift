//
//  ViewController.swift
//  timer
//
//  Created by Susanne Burnham on 10/12/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

import UIKit

extension Int {
    
}

class ViewController: UIViewController {
    
    var timeDisplay: String = "0"
    
    var time = 0 {
        didSet {
            timeDisplay = "\(time)"
            timeLabel.text = timeDisplay
            
        }
    }
    
    var timer = NSTimer()
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBAction func startTimePressed(sender: UIBarButtonItem)
        
    @IBAction func startTimePressed(sender: UIBarButtonItem) {

    
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateTime", userInfo: nil, repeats: true)
        
        
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            
            timer = NSTimer.scheduledTimerWithTimeInterval(, invocation: <#T##NSInvocation#>, repeats: <#T##Bool#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

