//
//  AboutViewController.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/25/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false
    }
    
    func dismissAction(sender: AnyObject?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}