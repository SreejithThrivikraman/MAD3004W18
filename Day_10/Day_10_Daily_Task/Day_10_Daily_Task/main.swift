//
//  main.swift
//  Day_10_Daily_Task
//
//  Created by Sreejith Thrivikraman on 2018-02-09.
//  Copyright © 2018 Sreejith Thrivikraman. All rights reserved.
//

import Foundation

var processRequest = processing()

do {
    try processRequest.testPenality(ticket_no: "4")
}
catch error_list.speeding
{
    print("Your claim against speeding ticket is approved. The fine amount is decreased by 100")
}
    
catch error_list.red_light_brake
{
    print("Your claim against red_light_brake is approved. The fine amount is decreased by 100")
}

catch error_list.seat_belt
{
    print("Your claim against seat_belt is approved. The fine amount is decreased by 100")
}

catch error_list.invalid_license
{
    print("Your claim against seat_belt is NOT approved")
}
    
catch
{
    print("Unexpexted Error")
}



