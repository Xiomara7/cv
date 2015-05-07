//
//  ResumeViewController.swift
//
//  Created by Xiomara on 4/25/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class ResumeViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = true

        let menu = customMenuView()
        
        menu.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        menu.aboutButton.addTarget(self, action: Selector("aboutAction:"), forControlEvents: .AllTouchEvents)
        menu.workButton.addTarget(self, action: Selector("workAction:"), forControlEvents: .AllTouchEvents)
        menu.projectsButton.addTarget(self, action: Selector("projectsAction:"), forControlEvents: .AllTouchEvents)
        menu.extraButton.addTarget(self, action: Selector("extraAction:"), forControlEvents: .AllTouchEvents)
        
        self.view.addSubview(menu)
        
        // AutoLayout
    
        menu.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsZero)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func aboutAction(sender: AnyObject?) {
        let about = AboutViewController()
        let aboutNav = UINavigationController(rootViewController: about)
        self.presentViewController(aboutNav, animated: true, completion: nil)
    }

    func workAction(sender: AnyObject?) {
        let work = WorkViewController()
        let workNav = UINavigationController(rootViewController: work)
        self.presentViewController(workNav, animated: true, completion: nil)
    }
    
    func projectsAction(sender: AnyObject?) {
        let projects = ProjectsViewController()
        let projectsNav = UINavigationController(rootViewController: projects)
        self.presentViewController(projectsNav, animated: true, completion: nil)
    }
    
    func extraAction(sender: AnyObject?) {
        let extra = ExtraViewController()
        let extraNav = UINavigationController(rootViewController: extra)
        self.presentViewController(extraNav, animated: true, completion: nil)
    }
}

