//
//  collectionCell.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/23/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class collectionCell : UICollectionViewCell {
    
    var titleLabel:  UILabel!
    var bgImageView:  UIImageView!
    var bgImage: UIImage!
    
    var cellsView: UICollectionView?
    var sectionsView: UICollectionView?

    let profileButton: UIButton! = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        
    class var defaultHeight: CGFloat {
        return 150.0
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.opaque = true
        
        let screenWidth  = UIScreen.mainScreen().bounds.width
        let screenHeight = UIScreen.mainScreen().bounds.height
        
        titleLabel = UILabel(frame: CGRectZero)
        titleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        titleLabel.font = UIFont.systemFontOfSize(16.0)
        titleLabel.textAlignment = .Left
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.text = "Work/Tech"
        
        contentView.addSubview(titleLabel)
        
        bgImage = UIImage(named: "code2040")
        bgImageView = UIImageView(image: bgImage)
        
        contentView.addSubview(bgImageView)
        
        profileButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        contentView.addSubview(profileButton)
        
        let sectionLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        sectionLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0.5)
        sectionLayout.itemSize = CGSize(width: screenWidth, height: screenHeight / 2)
        sectionLayout.scrollDirection = .Horizontal
        
        sectionsView = UICollectionView(frame: CGRectMake(0.0, 0.0, screenWidth, screenHeight / 2),
            collectionViewLayout: sectionLayout)
        
        sectionsView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        sectionsView?.pagingEnabled = true
        sectionsView?.backgroundColor = UIColor.blueColor()
        
        self.contentView.addSubview(sectionsView!)
        self.contentView.bringSubviewToFront(sectionsView!)
        
    
        let cellsLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    
        cellsLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0.5)
        cellsLayout.itemSize = CGSize(width: screenWidth / 2, height: screenHeight / 2)
        cellsLayout.scrollDirection = .Horizontal
    
        cellsView = UICollectionView(frame: CGRectMake(0.0, screenHeight / 2, screenWidth, screenHeight / 2),
            collectionViewLayout: cellsLayout)
    
        cellsView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        cellsView?.pagingEnabled = true
        cellsView?.backgroundColor = UIColor.redColor()
    
        self.contentView.addSubview(cellsView!)
        self.contentView.bringSubviewToFront(cellsView!)

        println("layout\(sectionLayout)")
        println("layout\(cellsLayout)")
    }
    
    override func updateConstraints() {
        
        //titleLabel.autoPinEdgeToSuperviewEdge(.Top, withInset: 10.0)
        //titleLabel.autoPinEdgeToSuperviewEdge(.Left, withInset: 10.0)
        //
        //profileButton.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 15.0)
        //profileButton.autoPinEdgeToSuperviewEdge(.Left, withInset: self.bounds.width / 2 - 30.0)
        
        super.updateConstraints()
    }
}































