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
        
        dateLabel = UILabel.newAutoLayoutView()
        dateLabel.font = UIFont.systemFontOfSize(12.0)
        dateLabel.textColor = UIColor.grayColor()
        dateLabel.textAlignment = .Right
        
        titleLabel = UILabel.newAutoLayoutView()
        titleLabel.font = UIFont.systemFontOfSize(12.0)
        titleLabel.textColor = UIColor.grayColor()
        titleLabel.textAlignment = .Left
        
        titleLabel.autoSetDimension(.Height, toSize: 16.0)
        
        placeLabel = UILabel.newAutoLayoutView()
        placeLabel.font = UIFont.systemFontOfSize(14.0)
        placeLabel.textColor = UIColor.grayColor()
        placeLabel.textAlignment = .Right
        
        descriptionLabel = UILabel.newAutoLayoutView()
        descriptionLabel.font = UIFont.boldSystemFontOfSize(12.0)
        descriptionLabel.textColor = UIColor.grayColor()
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .ByTruncatingTail
        
        descriptionLabel.textAlignment = .Left
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

