////
////  AboutViewController.swift
////  Xiomara-Figueroa
////
////  Created by Xiomara on 4/23/15.
////  Copyright (c) 2015 UPRRP. All rights reserved.
////
////
//
//import UIKit
//
//class AboutViewController : UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
//    
//    var collectionView: UICollectionView?
//
//    var screenWidth: CGFloat!
//    var screenHeight: CGFloat!
//    
//    init()
//    {
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init(coder aDecoder: NSCoder)
//    {
//        super.init(coder: aDecoder)
//    }
//    
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//        
//        self.screenWidth  = UIScreen.mainScreen().bounds.width
//        self.screenHeight = UIScreen.mainScreen().bounds.height
//        
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0.5)
//        layout.itemSize = CGSize(width: screenWidth, height: screenHeight)
//        layout.scrollDirection = .Horizontal
//        
//        collectionView = UICollectionView(frame: CGRectMake(0.0, 0.0, screenWidth, screenHeight),
//            collectionViewLayout: layout)
//        
//        collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
//        collectionView?.pagingEnabled = true
//        collectionView?.backgroundColor = UIColor.blackColor()
//        
//        collectionView?.delegate = self
//        collectionView?.dataSource = self
//        
//        self.view.addSubview(collectionView!)
//    }
//    
//    //MARK: CollectionView data source
//    
//    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        
//        return 1
//    }
//    
//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//
//        return 1
//    }
//    
//    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//        
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell
//        
//        let imgView = ResumeViewController()
//        
//        cell.backgroundView = imgView.view
//        
//        return cell
//    }
//}
