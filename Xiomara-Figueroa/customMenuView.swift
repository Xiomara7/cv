//
//  customMenu.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 5/6/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class customMenuView: UIView {
   
    var aboutButton: UIButton!
    var workButton: UIButton!
    var projectsButton: UIButton!
    var extraButton: UIButton!
    
    var workTitle: UILabel!
    var projectsTitle: UILabel!
    var extraTitle: UILabel!
    var aboutTitle: UILabel!
    
    var topLeft: UIImageView!
    var bottomRigth: UIImageView!
    var topRight: UIImageView!
    var bottomLeft: UIImageView!
    
    
    var shouldSetupConstraints = true
    
    init() {
        super.init(frame: CGRectZero)
        
        self.backgroundColor = UIColor.whiteColor()
        
        let imageWidth = UIScreen.mainScreen().bounds.width / 2
        let imageHeight = UIScreen.mainScreen().bounds.height / 2
        
        topLeft = UIImageView(frame: CGRectMake(0.0,
                                                0.0,
                                                imageWidth,
                                                imageHeight))
        
        bottomRigth = UIImageView(frame: CGRectMake(imageWidth,
                                                    imageHeight,
                                                    imageWidth,
                                                    imageHeight))
        
        topRight = UIImageView(frame: CGRectMake(imageWidth,
                                                 0.0,
                                                 imageWidth,
                                                 imageHeight))
        
        bottomLeft = UIImageView(frame: CGRectMake(0.0,
                                                   imageHeight,
                                                   imageWidth,
                                                   imageHeight))
        
        aboutButton = button(imageName:"button_About")
        workButton = button(imageName: "button_Work")
        projectsButton = button(imageName: "button_Projects")
        extraButton = button(imageName:"button_Extra")
        
        workTitle = label(title:"WORK")
        extraTitle = label(title:"OUTREACH")
        projectsTitle = label(title:"PROJECTS")
        aboutTitle = label(title:"ABOUT")

        self.addSubview(aboutButton)
        self.addSubview(workButton)
        self.addSubview(projectsButton)
        self.addSubview(extraButton)
        
        self.addSubview(topLeft)
        self.addSubview(topRight)
        self.addSubview(bottomRigth)
        self.addSubview(bottomLeft)
        
        self.addSubview(workTitle)
        self.addSubview(aboutTitle)
        self.addSubview(projectsTitle)
        self.addSubview(extraTitle)
        
        aboutButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        updateConstraints()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    class label: UILabel {
        init(title: String) {
            super.init(frame: CGRectZero)
            self.font = UIFont.boldSystemFontOfSize(20.0)
            self.textColor = UIColor.grayColor()
            self.text = title
        }

        required init(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }

    class button: UIButton {
        init(imageName: String) {
            super.init(frame: CGRectZero)
            self.setImage(UIImage(named: imageName), forState: .Normal)
            self.backgroundColor = UIColor.whiteColor()
            self.sizeToFit()
        }
        
        required init(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    override func updateConstraints() {
        super.updateConstraints()
        
        if shouldSetupConstraints {
        // AutoLayout
        
            workButton.autoAlignAxis(.Horizontal, toSameAxisOfView: topLeft)
            workButton.autoAlignAxis(.Vertical, toSameAxisOfView: topLeft)
            
            workTitle.autoPinEdge(.Top, toEdge: .Bottom, ofView: workButton, withOffset: 20.0)
            workTitle.autoAlignAxis(.Vertical, toSameAxisOfView: workButton)
            
            
            aboutButton.autoAlignAxis(.Horizontal, toSameAxisOfView: bottomRigth)
            aboutButton.autoAlignAxis(.Vertical, toSameAxisOfView: bottomRigth)
            
            aboutTitle.autoPinEdge(.Bottom, toEdge: .Top, ofView: aboutButton, withOffset: -20.0)
            aboutTitle.autoAlignAxis(.Vertical, toSameAxisOfView: aboutButton)
            
            extraButton.autoAlignAxis(.Horizontal, toSameAxisOfView: bottomLeft)
            extraButton.autoAlignAxis(.Vertical, toSameAxisOfView: bottomLeft)
            
            extraTitle.autoPinEdge(.Bottom, toEdge: .Top, ofView: extraButton, withOffset: -20.0)
            extraTitle.autoAlignAxis(.Vertical, toSameAxisOfView: extraButton)
            
            projectsButton.autoAlignAxis(.Horizontal, toSameAxisOfView: topRight)
            projectsButton.autoAlignAxis(.Vertical, toSameAxisOfView: topRight)
            
            projectsTitle.autoPinEdge(.Top, toEdge: .Bottom, ofView: projectsButton, withOffset: 20.0)
            projectsTitle.autoAlignAxis(.Vertical, toSameAxisOfView: projectsButton)
            
            shouldSetupConstraints = false
        }
    }
}


