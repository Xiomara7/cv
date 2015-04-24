//
//  ResumeViewController.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/22/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class ResumeViewController : UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    var firstCollectionView: UICollectionView?
    var cellsView: UICollectionView?
    var sectionsView: UICollectionView?
    var pictures: NSArray!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    var sectionIdexPath: NSIndexPath!
    
    init()
    {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad()
    {

        super.viewDidLoad()
        
        screenWidth  = UIScreen.mainScreen().bounds.width
        screenHeight = UIScreen.mainScreen().bounds.height
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0.0)
        layout.itemSize = CGSize(width: screenWidth, height: screenHeight)
        layout.scrollDirection = .Horizontal
        
        firstCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        
        firstCollectionView!.registerClass(collectionCell.self, forCellWithReuseIdentifier: "custom")
        firstCollectionView?.pagingEnabled = true
        firstCollectionView?.backgroundColor = UIColor.whiteColor()
        
        firstCollectionView?.delegate = self
        firstCollectionView?.dataSource = self
        
        self.view.addSubview(firstCollectionView!)
        
    }
    
    //MARK: CollectionView data source
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        if collectionView == firstCollectionView {
            return DataManager.shared.sectionImages.count
        }
        
        if collectionView == sectionsView {
            return 1
        } else {
            return 4
        }
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if collectionView == firstCollectionView {
            let cell = firstCollectionView?.dequeueReusableCellWithReuseIdentifier("custom", forIndexPath: indexPath) as! collectionCell
            
            sectionsView = cell.sectionsView
            cellsView = cell.cellsView
            
            sectionsView?.dataSource = self
            cellsView?.dataSource = self
            
            sectionIdexPath = indexPath
            
            return cell
            
        }
        if collectionView == sectionsView {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell1", forIndexPath: indexPath) as! UICollectionViewCell
            
            let imgView = UIImageView(frame:cell.bounds)
                
            switch sectionIdexPath.section {
                case 0:
                    imgView.image = UIImage(named:"experience")
                case 1:
                    imgView.image = UIImage(named:"hacks")
                case 2:
                    imgView.image = UIImage(named:"extra")
                default:
                    imgView.image = UIImage(named:"conferences")
                
            }
            
            imgView.contentMode = .ScaleToFill
            
            cell.backgroundView = imgView
            
            return cell
            
        } else {
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell2", forIndexPath: indexPath) as! UICollectionViewCell
            
            let imgView = UIImageView(frame:cell.bounds)
            var images = []
            
            switch sectionIdexPath.section {
                case 0:
                    images = NSArray(array: DataManager.shared.workImages)
                case 1:
                    images = NSArray(array: DataManager.shared.hacksImages)
                case 2:
                    images = NSArray(array: DataManager.shared.extraImages)
                default:
                    images = NSArray(array: DataManager.shared.confImages)
                
            }

            imgView.image = UIImage(named:images[indexPath.section] as! String)
            imgView.contentMode = .ScaleToFill
            
            cell.backgroundView = imgView
            
            return cell
        }
    }
}
























