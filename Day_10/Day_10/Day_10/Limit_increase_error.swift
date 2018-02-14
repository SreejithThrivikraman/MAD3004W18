//
//  Limit_increase_error.swift
//  Day_10
//
//  Created by Sreejith Thrivikraman on 2018-02-09.
//  Copyright © 2018 Sreejith Thrivikraman. All rights reserved.
//

import Foundation

enum limitIncreaseError : Error               // the error is enumerated in the list.
{
    case insufficientBalance(balanceNeeded: Double)
    case noSavingAccount
    case ineligible
    case on_process
}

struct requestsFromAccount
{
    var type: String
    var balance: Double
    var recStatus: String
}




