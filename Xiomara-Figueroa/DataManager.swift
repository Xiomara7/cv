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
    var workInfo = AnyArray()
    
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
    
        workInfo = [["role": "iOS Developer",
                        "date": "March 2015 - present",
                        "place": "Polsense, San Juan PR",
                        "description": "Converting an iOS app in a Universal iOS app to run in both iPhone and iPad"],
        
                        ["role":"iOS Developer",
                         "date": "August 2014 - February 1015",
                         "place":"University of Puerto Rico",
                            "description": "Developed an iOS app to make and receive security alerts at the campus"],
        
                        ["role":"Intern",
                         "date": "June 2014 - August 2014",
                         "place": "Palo Alto, CA",
                         "description": "Designed and developed an iOS app for a virtual storage platform"],
            
                        ["role":"Research Assistant",
                        "date": "2013 - 2014",
                        "place": "University of Puerto Rico",
                            "description": "Prototyped a platform for people with disabilities to programming by voice"],
        
                        ["role":"Programming Tutor",
                        "date": "2013 - 2014",
                        "place": "University of Puerto Rico",
                        "description": "Helped students to understand concepts of programming (python, c++)"]]
        
    }
    
    class var shared: DataManager {
        struct Singleton {
            static let instance = DataManager()
        }
        return Singleton.instance
    }
    
}