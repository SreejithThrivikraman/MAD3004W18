//
//  main.swift
//  Day11AccessControl
//
//  Created by Sreejith Thrivikraman on 2018-02-12.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

//var objStud = Student()
//objStud.display()

//var objFullTime = FullTime()
//objFullTime.display()


//Can be extended as Internal to the module
var p1 = PartTime()

//Not possible as fileprivate
//p1.setStudentName("Patel")

class T: ExtendPartTime
{
    override init()
    {
        super.init()
        print("Display T")
    }
}

var t1 = T()


//Not possible as file private
//var s1 = Student()
//var f1 = FullTime()
