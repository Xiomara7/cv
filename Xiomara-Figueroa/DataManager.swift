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
    
    var workImages = AnyArray()
    var projectImages = AnyArray()
    var extraImages = AnyArray()
    var aboutImages = AnyArray()
    
    init()
    {
        
        
        workImages = ["work_1",
                      "work_2",
                      "work_3"]
        
        projectImages = ["project_2",
                         "project_3"]
        
        extraImages = [ "extra_1",
                        "extra_2",
                        "extra_3",
                        "extra_4",
                        "extra_5",
                        "extra_6"]
    
        let aboutMe = "Xiomara is an undergraduate studying Computer Science at the University of Puerto Rico Río Piedras. She transferred to CS from a different major bringing along a firm belief that what’s most important is to create things to help people. This notion combined with her desire to know how things work fuel her interest in computing and her passion to contribute meaningfully to people’s lives. As a result, she is drawn to participating in extracurricular activities which promote CS education and women in tech and became a co-founder of #include<girls>, a student group which promotes diversity in computing in Puerto Rico."
        
    }
    
    class var shared: DataManager {
        struct Singleton {
            static let instance = DataManager()
        }
        return Singleton.instance
    }
    
}