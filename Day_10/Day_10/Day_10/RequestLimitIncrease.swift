//
//  RequestLimitIncrease.swift
//  Day_10
//
//  Created by Sreejith Thrivikraman on 2018-02-09.
//  Copyright © 2018 Sreejith Thrivikraman. All rights reserved.
//

import Foundation

class RequestLimitIncrease
{
    var requestsReceived = [
        "S1100" : requestsFromAccount(type: "Saving",balance: 1234.09,recStatus: "In Process"),
        "S1200" : requestsFromAccount(type:"Saving",balance: 5000.09,recStatus: "In Process"),
        "S1300" : requestsFromAccount(type:"Chequing",balance: 5080.09,recStatus:"In Process"),
        "s1400" : requestsFromAccount(type:"Saving",balance: 5400.09,recStatus:"Approved")
    ]

    func testEligibility(accountNo acno: String) throws
    {
        guard let reqAcc = requestsReceived[acno]      // guard is same as a 'try' statemnet in java.
            else
            {
                throw limitIncreaseError.ineligible
            }
        
        guard reqAcc.type == "Saving"
            else
            {
                throw limitIncreaseError.noSavingAccount
            }
        
        guard reqAcc.balance >= 5000
            else
            {
                throw limitIncreaseError.insufficientBalance(balanceNeeded: 5000-reqAcc.balance)
            }
        
        guard reqAcc.recStatus == "Approved"
            else
            {
                throw limitIncreaseError.on_process
            }
        
        var approvedRequest = reqAcc
        approvedRequest.recStatus = "Approved"
        print("Your request is approved")
        
        }
}
    


