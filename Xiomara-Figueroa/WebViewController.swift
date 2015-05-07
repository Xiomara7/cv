//
//  WebViewController.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/26/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController  {

    var webView: WKWebView?
    var myUrl: String!
    var request: NSURLRequest!
    
    init(url: String!) {
        super.init(nibName: nil, bundle: nil)
        myUrl = url
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        
        self.webView = WKWebView()
        self.view = self.webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.blackColor()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"cancel"),
                                                                style:.Done,
                                                                target:self,
                                                                action:Selector("dismissAction:"))
        
        var url = NSURL(string:myUrl)
        var req = NSURLRequest(URL:url!)
        self.webView!.loadRequest(req)
    }
    
    // Mark: - Selector Methods
    
    func dismissAction(sender: AnyObject?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}