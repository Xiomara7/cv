//
//  customCell.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/26/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {
    
    let paddingHorizontal: CGFloat = 15.0
    let paddingVertical: CGFloat = 30.0
    
    let screenWidth = UIScreen.mainScreen().bounds.width
    
    var dateLabel: UILabel!
    var titleLabel: UILabel!
    var placeLabel: UILabel!
    var descriptionLabel: UILabel!
    
    var shouldSetupConstraints = true
    
    init(reuseIdentifier: String?) {
        super.init(style: .Default, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .None
        self.accessoryType = .None
        
        dateLabel = label(fontSize: 12.0, align: .Right)

        titleLabel = label(fontSize: 12.0, align: .Left)
        titleLabel.autoSetDimension(.Height, toSize: 16.0)
        
        placeLabel = label(fontSize: 14.0, align: .Right)
        
        descriptionLabel = label(fontSize: 12.0, align: .Left)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .ByTruncatingTail
        descriptionLabel.preferredMaxLayoutWidth = screenWidth - paddingHorizontal
        descriptionLabel.sizeToFit()
        
        self.contentView.addSubview(dateLabel)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(placeLabel)
        self.contentView.addSubview(descriptionLabel)
    
        updateConstraints()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    class label: UILabel {
        init(fontSize: CGFloat, align: NSTextAlignment) {
            super.init(frame: CGRectZero)
            self.font = UIFont.boldSystemFontOfSize(fontSize)
            self.textColor = UIColor.grayColor()
            self.textAlignment = align
        }
        
        required init(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    override func updateConstraints() {

        placeLabel.autoPinEdgeToSuperviewEdge(.Top, withInset: 15.0)
        placeLabel.autoPinEdgeToSuperviewEdge(.Right, withInset: paddingHorizontal)
        
        titleLabel.autoPinEdgeToSuperviewEdge(.Top, withInset: 15.0)
        titleLabel.autoPinEdgeToSuperviewEdge(.Left, withInset: paddingHorizontal)
        
        dateLabel.autoPinEdgeToSuperviewEdge(.Right, withInset: paddingHorizontal)
        dateLabel.autoPinEdge(.Top, toEdge: .Bottom, ofView: placeLabel, withOffset: 5.0)
        
        descriptionLabel.autoPinEdge(.Top, toEdge: .Bottom, ofView: titleLabel, withOffset: paddingVertical)
        descriptionLabel.autoPinEdgeToSuperviewEdge(.Left, withInset: paddingHorizontal)
        
        super.updateConstraints()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

