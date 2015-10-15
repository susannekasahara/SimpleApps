//
//  StartViewController.swift
//  Break2
//
//  Created by Susanne Burnham on 10/10/15.
//  Copyright © 2015 Susanne Kasahara. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBAction func Play(sender: AnyObject) {
        
        let gameVC = GameViewController()
        
        navigationController?.viewControllers = [gameVC]
    }
    
    
    
}