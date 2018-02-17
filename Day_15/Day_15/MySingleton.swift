//
//  MySingleton.swift
//  Day_15
//
//  Created by Sreejith Thrivikraman on 2018-02-16.
//  Copyright © 2018 Sreejith Thrivikraman. All rights reserved.
//

import Foundation

class MySingleton
    
{
    private static var instant = MySingleton()
    
    private init()
    {
        
    }
    
    static func getInstant() -> MySingleton
    {
        if instant != nil
        {
            return instant
        }
        else
        {
            instant = MySingleton()
            return instant
            
        }
    }
    
    func getMyName() -> String
    {
        return "JK"
    }
    
}
