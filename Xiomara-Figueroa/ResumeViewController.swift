//
//  ViewController.swift
//  otro
//
//  Created by Xiomara on 4/25/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class ResumeViewController: UIViewController {
    
    var aboutButton: UIButton!
    var workButton: UIButton!
    var projectsButton: UIButton!
    var extraButton: UIButton!
    
    var workTitle: UIImageView!
    var projectsTitle: UIImageView!
    var extraTitle: UIImageView!
    var aboutTitle: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = true
        
        let imageWidth = UIScreen.mainScreen().bounds.width / 2
        let imageHeight = UIScreen.mainScreen().bounds.height / 2

        let topLeft = UIImageView(frame: CGRectMake(0.0,
                                                    0.0,
                                                    imageWidth,
                                                    imageHeight))
        
        let bottomRigth = UIImageView(frame: CGRectMake(imageWidth,
                                                        imageHeight,
                                                        imageWidth,
                                                        imageHeight))
        
        let topRight = UIImageView(frame: CGRectMake(imageWidth,
                                                     0.0,
                                                     imageWidth,
                                                     imageHeight))
        

        
        let bottomLeft = UIImageView(frame: CGRectMake(0.0,
                                                       imageHeight,
                                                       imageWidth,
                                                       imageHeight))
        
        aboutButton = UIButton(frame: CGRectZero)
        workButton = UIButton(frame: CGRectZero)
        extraButton = UIButton(frame: CGRectZero)
        projectsButton = UIButton(frame: CGRectZero)
        
        aboutButton.setImage(UIImage(named: "button_About"), forState: .Normal)
        workButton.setImage(UIImage(named: "button_Work"), forState: .Normal)
        projectsButton.setImage(UIImage(named: "button_Projects"), forState: .Normal)
        extraButton.setImage(UIImage(named:"button_Extra"), forState: .Normal)
        
        aboutButton.addTarget(self, action: Selector("aboutAction:"), forControlEvents: .AllTouchEvents)
        workButton.addTarget(self, action: Selector("workAction:"), forControlEvents: .AllTouchEvents)
        projectsButton.addTarget(self, action: Selector("projectsAction:"), forControlEvents: .AllTouchEvents)
        extraButton.addTarget(self, action: Selector("extraAction:"), forControlEvents: .AllTouchEvents)
        
        aboutButton.backgroundColor = UIColor.whiteColor()
        workButton.backgroundColor = UIColor.whiteColor()
        projectsButton.backgroundColor = UIColor.whiteColor()
        extraButton.backgroundColor = UIColor.whiteColor()
        
        aboutButton.sizeToFit()
        workButton.sizeToFit()
        projectsButton.sizeToFit()
        extraButton.sizeToFit()
        
        workTitle = UIImageView(frame: CGRectZero)
        extraTitle = UIImageView(frame: CGRectZero)
        projectsTitle = UIImageView(frame: CGRectZero)
        aboutTitle = UIImageView(frame: CGRectZero)
        
        workTitle.image = UIImage(named: "WORK")
        
        projectsTitle.image = UIImage(named: "PROJECTS")
        
        extraTitle.image = UIImage(named: "OUTREACH")
        
        aboutTitle.image = UIImage(named: "ABOUT")
        
        self.view.addSubview(aboutButton)
        self.view.addSubview(workButton)
        self.view.addSubview(projectsButton)
        self.view.addSubview(extraButton)
        
        self.view.addSubview(topLeft)
        self.view.addSubview(topRight)
        self.view.addSubview(bottomRigth)
        self.view.addSubview(bottomLeft)
        
        self.view.addSubview(workTitle)
        self.view.addSubview(aboutTitle)
        self.view.addSubview(projectsTitle)
        self.view.addSubview(extraTitle)
        
        aboutButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // AutoLayout
        
        workButton.autoAlignAxis(.Horizontal, toSameAxisOfView: topLeft)
        workButton.autoAlignAxis(.Vertical, toSameAxisOfView: topLeft)
        
        workTitle.autoPinEdge(.Top, toEdge: .Bottom, ofView: workButton, withOffset: 20.0)
        workTitle.autoPinEdgeToSuperviewEdge(.Left, withInset: 44.0)
        
        aboutButton.autoAlignAxis(.Horizontal, toSameAxisOfView: bottomRigth)
        aboutButton.autoAlignAxis(.Vertical, toSameAxisOfView: bottomRigth)
        
        aboutTitle.autoPinEdge(.Bottom, toEdge: .Top, ofView: aboutButton, withOffset: -20.0)
        aboutTitle.autoPinEdgeToSuperviewEdge(.Right, withInset: 44.0)
        
        extraButton.autoAlignAxis(.Horizontal, toSameAxisOfView: bottomLeft)
        extraButton.autoAlignAxis(.Vertical, toSameAxisOfView: bottomLeft)
        
        extraTitle.autoPinEdge(.Bottom, toEdge: .Top, ofView: extraButton, withOffset: -20.0)
        extraTitle.autoPinEdgeToSuperviewEdge(.Left, withInset: 24.0)
        
        projectsButton.autoAlignAxis(.Horizontal, toSameAxisOfView: topRight)
        projectsButton.autoAlignAxis(.Vertical, toSameAxisOfView: topRight)
        
        projectsTitle.autoPinEdge(.Top, toEdge: .Bottom, ofView: projectsButton, withOffset: 20.0)
        projectsTitle.autoPinEdgeToSuperviewEdge(.Right, withInset: 34.0)
        
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

