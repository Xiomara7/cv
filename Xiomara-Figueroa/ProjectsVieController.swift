//
//  ProjectsViewController.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/25/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class ProjectsViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = UIColor.blackColor()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"cancel"),
                                                                style:.Done,
                                                                target:self,
                                                                action:Selector("dismissAction:"))
        
        screenWidth = UIScreen.mainScreen().bounds.width
        screenHeight = UIScreen.mainScreen().bounds.height
        
        let imgSize = UIImage(named: "extra_1")?.size
        let layout = UICollectionViewFlowLayout()
        
        layout.sectionInset = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)
        layout.itemSize = imgSize!
        
        layout.scrollDirection = .Horizontal
        
        collectionView = UICollectionView(frame: CGRectMake(0.0, 0.0, screenWidth, screenHeight),
            collectionViewLayout: layout)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView?.pagingEnabled = true
        collectionView?.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(collectionView!)
        
    }
    
    // Mark: - Selector Methods
    
    func dismissAction(sender: AnyObject?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // Mark: - Collection View DataSource Methods
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return DataManager.shared.projectImages.count
    }
    
    // Mark: - Collection View Delegate Methods
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell
        
        let imgView = UIImageView(frame:cell.bounds)
        imgView.image = UIImage(named:DataManager.shared.projectImages[indexPath.section] as! String)
        imgView.contentMode = .ScaleToFill
        
        cell.backgroundView = imgView
        
        return cell
    }
    
}