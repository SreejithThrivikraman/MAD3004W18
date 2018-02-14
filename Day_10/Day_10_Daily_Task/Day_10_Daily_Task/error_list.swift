//
//  error_list.swift
//  Day_10_Daily_Task
//
//  Created by Sreejith Thrivikraman on 2018-02-09.
//  Copyright © 2018 Sreejith Thrivikraman. All rights reserved.
//

import Foundation

enum error_list : Error               // the error is enumerated in the list.
{
    case speeding
    case red_light_brake
    case seat_belt
    case invalid_license
    
}

struct ticket_details
{
    var ticket_typ: String
    var speed: Double
    var is_passenger_inside: Bool    
    var license_issue_year : Int
    var fine_amount: Double
    
}

