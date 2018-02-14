//
//  processing.swift
//  Day_10_Daily_Task
//
//  Created by Sreejith Thrivikraman on 2018-02-09.
//  Copyright © 2018 Sreejith Thrivikraman. All rights reserved.
//

import Foundation

class processing
{
    var speed_limit = 120.0
    
    
    var ticketAppealed =
   [
    "1" : ticket_details(ticket_typ:"speeding",speed:100.09,is_passenger_inside: true, license_issue_year: 2011,fine_amount: 2000),
    "2"  : ticket_details(ticket_typ:"Red Light Brake",speed:34.09,is_passenger_inside: true, license_issue_year: 2014,fine_amount: 2000),
    "3" : ticket_details(ticket_typ:"Seat Belt",speed:34.09,is_passenger_inside: true, license_issue_year: 2011,fine_amount: 2000),
    "4" :ticket_details(ticket_typ:"Invalid License",speed:34.09,is_passenger_inside: true, license_issue_year: 2011,fine_amount: 2000),
   ]
    
    func current_year () -> Int
    {
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        
        let year :Int =  components.year!
        
        return year
    }
    
    func testPenality(ticket_no: String) throws
    {
        var ticket = ticketAppealed[ticket_no]    // guard is same as a 'try' statemnet in java.
       
        print(">>>>>>",ticket?.ticket_typ)
        
      switch ticket?.ticket_typ
      {
            case "speeding":
            guard ((ticket?.speed)! > speed_limit + 50)
               
                else
                {
                    throw error_list.speeding
                }
        
      }
        
        
        
        guard ((ticket?.ticket_typ == "Red Light Brake")&&(ticket?.license_issue_year == current_year() - 3))
            else
        {
            throw error_list.red_light_brake
        }
        
        guard ((ticket?.ticket_typ == "Seat Belt") && (ticket?.is_passenger_inside == true))
            else
        {
            throw error_list.seat_belt
        }
        
        guard ticket?.ticket_typ == "Invalid License"
            else
        {
            throw error_list.invalid_license
        }
        
       
        
    }
    
    
}



