//
//  ViewController.swift
//  RememberMe
//
//  Created by Susanne Burnham on 10/12/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var name: String? {
     
        get {
            
            return NSUserDefaults.standardUserDefaults().objectForKey("name") as? String
        
        }
        
        set {
        
            NSUserDefaults.standardUserDefaults().setObject(name, forKey: "name")

        }
        
    }

    @IBOutlet weak var myField: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func hitButton(sender: AnyObject) {
        
        name = myField.text
        
        if let name = myField.text {
        
        myLabel.text = "Hi \(name)"
    
    
    }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = "Bob"
        
        if let name = name {
        
            myLabel.text = "Welcome Back \(name)"
        }
        
    }
    
        
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

