//
//  DataManager.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/23/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import Foundation

typealias AnyArray = [AnyObject]

class DataManager {
    
    var sectionImages = AnyArray()
    var hacksImages = AnyArray()
    var workImages = AnyArray()
    var awardsImages = AnyArray()
    var confImages = AnyArray()
    var extraImages = AnyArray()
    
    var sectionTitles = AnyArray()
    
    var sectioninfo : NSDictionary = NSDictionary()
    
    init()
    {
        sectionImages.append("code2040")
        sectionTitles.append("Work/Tech Experience")
        
    }
    
    class var shared: DataManager {
        struct Singleton {
            static let instance = DataManager()
        }
        return Singleton.instance
    }
    
}