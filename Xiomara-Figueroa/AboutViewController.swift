//
//  AboutViewController.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/25/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "About"
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        let width = UIScreen.mainScreen().bounds.width
        let height = UIScreen.mainScreen().bounds.height
        
        self.navigationController?.navigationBar.translucent = true
        self.navigationController?.navigationBar.tintColor = UIColor.blackColor()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"cancel"),
                                                                style:.Done,
                                                                target:self,
                                                                action:Selector("dismissAction:"))
        
        let topView = UIImageView(frame: CGRectMake(0.0, 0.0, width, height / 2))
        let bottomView = UIImageView(frame: CGRectMake(0.0, width, width, height / 2))
        let imageViewSize = UIImageView(frame: CGRectMake(0.0, 0.0, width, height / 2))
        
        let aboutMe = UILabel(frame: CGRectZero)
        aboutMe.text = DataManager.shared.about
        aboutMe.font = UIFont.systemFontOfSize(12.0)
        aboutMe.tintColor = UIColor.grayColor()
        aboutMe.numberOfLines = 0
        aboutMe.lineBreakMode = .ByTruncatingTail
        aboutMe.preferredMaxLayoutWidth = width - 20.0
        aboutMe.textAlignment = .Center
        aboutMe.sizeToFit()
        
        let profileImage = UIImageView(image: UIImage(named:"button_About"))
        profileImage.sizeToFit()
        profileImage.backgroundColor = UIColor.whiteColor()
        
        let twitterLogo = customLogo(imageName: "twitter")
        twitterLogo.addTarget(self, action: Selector("twitterAction:"), forControlEvents: .AllTouchEvents)
        
        let githubLogo = customLogo(imageName: "github")
        githubLogo.addTarget(self, action: Selector("githubAction:"), forControlEvents: .AllTouchEvents)
        
        let mediumLogo = customLogo(imageName: "medium")
        mediumLogo.addTarget(self, action: Selector("mediumAction:"), forControlEvents: .AllTouchEvents)
        
        self.view.addSubview(profileImage)
        self.view.addSubview(imageViewSize)
        
        self.view.addSubview(twitterLogo)
        self.view.addSubview(githubLogo)
        self.view.addSubview(mediumLogo)
        
        self.view.addSubview(aboutMe)
        
        self.view.addSubview(topView)
        self.view.addSubview(bottomView)
        
        // AutoLayout 
        
        profileImage.autoAlignAxis(.Horizontal, toSameAxisOfView: topView)
        profileImage.autoAlignAxis(.Vertical, toSameAxisOfView: topView)
        
        profileImage.autoAlignAxis(.Horizontal, toSameAxisOfView: imageViewSize)
        profileImage.autoAlignAxis(.Vertical, toSameAxisOfView: imageViewSize)
        
        twitterLogo.autoPinEdge(.Top, toEdge: .Bottom, ofView: profileImage, withOffset: 20.0)
        twitterLogo.autoPinEdgeToSuperviewEdge(.Left, withInset: 44.0)
        
        mediumLogo.autoPinEdge(.Top, toEdge: .Bottom, ofView: profileImage, withOffset: 20.0)
        mediumLogo.autoPinEdge(.Left, toEdge: .Right, ofView: twitterLogo, withOffset: 10.0)
        mediumLogo.autoAlignAxis(.Vertical, toSameAxisOfView: profileImage)
        
        githubLogo.autoPinEdge(.Top, toEdge: .Bottom, ofView: profileImage, withOffset: 20.0)
        githubLogo.autoPinEdge(.Left, toEdge: .Right, ofView: mediumLogo, withOffset: 20.0)
        
        aboutMe.autoPinEdge(.Top, toEdge: .Bottom, ofView: twitterLogo, withOffset: 20.0)
        aboutMe.autoAlignAxis(.Vertical, toSameAxisOfView: bottomView)
        
    }
    
    class customLogo: UIButton {

        init(imageName: String) {
            super.init(frame:CGRectZero)
            self.layer.cornerRadius = 5.0
            self.layer.masksToBounds = true
            self.setImage(UIImage(named: imageName), forState: .Normal)
            self.backgroundColor = UIColor.whiteColor()
            self.sizeToFit()
        }

        required init(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
    func dismissAction(sender: AnyObject?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func twitterAction(sender: AnyObject?) {
        let page = WebViewController(url: "https://twitter.com/@_xiomara7")
        let pageNav = UINavigationController(rootViewController: page)
        self.presentViewController(pageNav, animated: true, completion: nil)
    }
    
    func mediumAction(sender: AnyObject?) {
        let page = WebViewController(url: "https://medium.com/@figueroa_xio")
        let pageNav = UINavigationController(rootViewController: page)
        self.presentViewController(pageNav, animated: true, completion: nil)
    }
    
    func githubAction(sender: AnyObject?) {
        let page = WebViewController(url: "https://github.com/xiomara7")
        let pageNav = UINavigationController(rootViewController: page)
        self.presentViewController(pageNav, animated: true, completion: nil)
    }
}