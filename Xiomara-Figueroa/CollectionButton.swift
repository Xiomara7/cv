//
//  CollectionButton.swift
//  Xiomara Figueroa
//
//  Created by Xiomara on 4/17/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class CollectionButton : UIView, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    struct Config {
        static let topPadding: CGFloat = 20.0
        static let bottomPadding: CGFloat = 50.0
        static let leftPadding: CGFloat = 30.0
        static let rightPadding: CGFloat = 30.0
    }
    
    var collectionCell : UICollectionViewCell!
    var myCollectionView : UICollectionView!
    
    var name : UILabel!
    var button : UIButton!
    var info : UILabel!
    var imageView : UIImageView!
    var width: CGFloat!
    var height: CGFloat!
    
    init(imageName : String)
    {
        super.init(frame: CGRectZero)
        
        self.width = UIScreen.mainScreen().bounds.size.width
        self.height = UIScreen.mainScreen().bounds.size.height
        
        // Top View
        
        imageView = UIImageView(image: UIImage(named: imageName))
        
        self.addSubview(imageView)
        
        collectionCell = UICollectionViewCell(frame: CGRectMake(0.0, 0.0, self.width, self.width))
        collectionCell.backgroundColor = UIColor.redColor()
        
        self.addSubview(collectionCell)
        
        // Bottom View
        
        let cellLayout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        cellLayout.sectionInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        cellLayout.itemSize = CGSize(width: self.width, height: self.width)
        cellLayout.scrollDirection = .Horizontal
        
        myCollectionView = UICollectionView(frame: CGRectMake(0.0, self.width, self.width, self.width), collectionViewLayout: cellLayout)
        myCollectionView.backgroundColor = UIColor.greenColor()
        
        myCollectionView!.dataSource = self
        myCollectionView!.delegate = self
        
        myCollectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        myCollectionView?.pagingEnabled = true
        
        self.addSubview(myCollectionView!)
        
        //name = UILabel(frame: CGRectZero)
        //name.text = "Work/Tech Experience"
        //
        //self.addSubview(name)
        //
        //
        //button = UIButton(frame: CGRectZero)
        //
        //self.addSubview(button)
        //
        //info = UILabel(frame: CGRectZero)
        //
        //self.addSubview(info)
        
        updateConstraints()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func updateConstraints()
    {
        //collectionCell.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsZero, excludingEdge: .Bottom)
        //collectionView.autoPinEdge(.Top, toEdge: .Bottom, ofView: collectionCell)
        
        super.updateConstraints()
        
    }
    
    func collectionView(myCollectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSectionsInCollectionView(myCollectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(myCollectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = myCollectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell
        
        cell.frame = CGRectMake(0.0, 0.0, myCollectionView.frame.width / 2, myCollectionView.frame.height)
        cell.backgroundColor = UIColor.blueColor()
        
        return cell
    }
    
    func collectionView(myCollectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //self.presentViewController(ProjectsViewController(), animated: true, completion: nil)
        
    }
    
}
