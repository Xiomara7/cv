//
//  WorkViewController.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/25/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class WorkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = UIColor.blackColor()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "cancel"),
                                                                style:.Done,
                                                                target:self,
                                                                action:Selector("dismissAction:"))
        
        
        tableView = UITableView(frame: CGRectZero, style: .Grouped)
        
        self.tableView.registerClass(customCell.self, forCellReuseIdentifier: "Cell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
        
        // AutoLayout
        
        tableView.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsMake(-40.0, 0.0, 0.0, 0.0))
        
        
    }
    
    // Mark: - Selector Methods
    
    func dismissAction(sender: AnyObject?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MAKR: - Table View Delegate Methods
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.shared.workInfo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = customCell(reuseIdentifier: "Cell")
        
        cell.descriptionLabel.numberOfLines = 0
        cell.descriptionLabel.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        
        let role = DataManager.shared.workInfo[indexPath.row].valueForKey("role") as! String
        
        cell.titleLabel.text = "Role: \(role)"
        cell.dateLabel.text = DataManager.shared.workInfo[indexPath.row].valueForKey("date") as? String
        cell.placeLabel.text = DataManager.shared.workInfo[indexPath.row].valueForKey("place") as? String
        cell.descriptionLabel.text = DataManager.shared.workInfo[indexPath.row].valueForKey("description") as? String
        
        return cell
    }
    
    // MARK: - UITableViewDelegate Methods
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 104.0
    }
    
}
