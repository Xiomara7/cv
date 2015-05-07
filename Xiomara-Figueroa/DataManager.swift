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
    var projectImagesInfo = AnyArray()
    var extraImages = AnyArray()
    var extraImagesInfo = AnyArray()
    var aboutImages = AnyArray()
    var workInfo = AnyArray()
    
    var about = String()
    
    init()
    {
        
        
        workImages = ["work_1",
                      "work_2",
                      "work_3"]
        
        projectImages = ["project_1",
                         "project_2",
                         "project_3",
                         "project_4"]
        
        projectImagesInfo = ["project_1_info",
                            "project_2_info",
                            "project_3_info",
                            "project_4_info"]
        
        extraImages = [ "extra_1",
                        "extra_2",
                        "extra_3",
                        "extra_4",
                        "extra_5",
                        "extra_6",
                        "extra_7"]
        
        extraImagesInfo = [ "extra_1_info",
                            "extra_2_info",
                            "extra_3_info",
                            "extra_4_info",
                            "extra_5_info",
                            "extra_6_info",
                            "extra_7_info"]
    
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
     
        about = "I'm an undergraduate studying Computer Science at the University of Puerto Rico, Rio Piedras. I transferred to CS from a different mayor bringing along a firm belief that what's most important is to create things to help people. This notion combined with my desire to know how things work fuel my passion to contribute meaningfully to poeple's lives. As a result, I'm drawn to participating in extracurricular activities which promote CS education and women in tech and started #include<girls>, a student driven non profit to promotes diversity in Puerto Rico"
        
    }
    
    class var shared: DataManager {
        struct Singleton {
            static let instance = DataManager()
        }
        return Singleton.instance
    }
    
}