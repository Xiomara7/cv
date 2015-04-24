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
    
    var sectionInfo : NSDictionary = NSDictionary()
    var hacksInfo : NSDictionary = NSDictionary()
    var workInfo : NSDictionary = NSDictionary()
    var confInfo : NSDictionary = NSDictionary()
    var extraInfo : NSDictionary = NSDictionary()
    
    init()
    {
        sectionImages = ["experience",
                         "hacks",
                         "extra",
                         "conferences"]
        
        hacksImages = ["hackMIT", "hackPR", "hack4Div", "tech_summit"]
        
        awardsImages = ["hackPR2", "Greylock", "code2040", "hackPR1"]
        
        workImages = ["polsense", "uprrp", "thinair", "tutorias"]
        
        confImages = ["yc", "ACM", "GHC", "CMU"]
        
        extraImages = ["include", "aecc", "workshop", "talk"]
        
        hacksInfo = ["hacks":hacksImages]
        workInfo = ["experience":workImages]
        confInfo = ["conferences":confImages]
        extraInfo = ["extra":extraImages]
        
    }
    
    class var shared: DataManager {
        struct Singleton {
            static let instance = DataManager()
        }
        return Singleton.instance
    }
    
}