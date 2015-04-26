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
    
    var workTitle: UILabel!
    var projectsTitle: UILabel!
    var extraTitle: UILabel!
    var aboutTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(hex: 0x4DDBC8)
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
        
        aboutButton.backgroundColor = UIColor(hex: 0x4DDBC8)
        workButton.backgroundColor = UIColor(hex: 0x4DDBC8)
        projectsButton.backgroundColor = UIColor(hex: 0x4DDBC8)
        extraButton.backgroundColor = UIColor(hex: 0x4DDBC8)
        
        aboutButton.sizeToFit()
        workButton.sizeToFit()
        projectsButton.sizeToFit()
        extraButton.sizeToFit()
        
        workTitle = UILabel(frame: CGRectZero)
        extraTitle = UILabel(frame: CGRectZero)
        projectsTitle = UILabel(frame: CGRectZero)
        aboutTitle = UILabel(frame: CGRectZero)
        
        workTitle.text = "Work"
        workTitle.font = UIFont.boldSystemFontOfSize(16.0)
        
        projectsTitle.text = "Projects"
        projectsTitle.font = UIFont.boldSystemFontOfSize(16.0)
        
        extraTitle.text = "Extracurriculars"
        extraTitle.font = UIFont.boldSystemFontOfSize(16.0)
        
        aboutTitle.text = "About"
        aboutTitle.font = UIFont.boldSystemFontOfSize(16.0)
        
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
        workTitle.autoPinEdgeToSuperviewEdge(.Left, withInset: 54.0)
        
        aboutButton.autoAlignAxis(.Horizontal, toSameAxisOfView: bottomRigth)
        aboutButton.autoAlignAxis(.Vertical, toSameAxisOfView: bottomRigth)
        
        aboutTitle.autoPinEdge(.Bottom, toEdge: .Top, ofView: aboutButton, withOffset: -20.0)
        aboutTitle.autoPinEdgeToSuperviewEdge(.Right, withInset: 54.0)
        
        extraButton.autoAlignAxis(.Horizontal, toSameAxisOfView: bottomLeft)
        extraButton.autoAlignAxis(.Vertical, toSameAxisOfView: bottomLeft)
        
        extraTitle.autoPinEdge(.Bottom, toEdge: .Top, ofView: extraButton, withOffset: -20.0)
        extraTitle.autoPinEdgeToSuperviewEdge(.Left, withInset: 24.0)
        
        projectsButton.autoAlignAxis(.Horizontal, toSameAxisOfView: topRight)
        projectsButton.autoAlignAxis(.Vertical, toSameAxisOfView: topRight)
        
        projectsTitle.autoPinEdge(.Top, toEdge: .Bottom, ofView: projectsButton, withOffset: 20.0)
        projectsTitle.autoPinEdgeToSuperviewEdge(.Right, withInset: 44.0)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func aboutAction(sender: AnyObject?) {
        let about = AboutViewController()
        self.navigationController?.pushViewController(about, animated: true)
    }

    func workAction(sender: AnyObject?) {
        let work = WorkViewController()
        self.navigationController?.pushViewController(work, animated: true)
    }
    
    func projectsAction(sender: AnyObject?) {
        let projects = ProjectsViewController()
        self.navigationController?.pushViewController(projects, animated: true)
    }
    
    func extraAction(sender: AnyObject?) {
        let extra = ExtraViewController()
        self.navigationController?.pushViewController(extra, animated: true)
    }
}

