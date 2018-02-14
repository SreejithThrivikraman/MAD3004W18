//
//  main.swift
//  Day_10
//
//  Created by Sreejith Thrivikraman on 2018-02-09.
//  Copyright © 2018 Sreejith Thrivikraman. All rights reserved.
//

import Foundation



var processRequest = RequestLimitIncrease()

do {
    try processRequest.testEligibility(accountNo:"S1200")
    }
    catch limitIncreaseError.insufficientBalance
        {
            print("You don't have sufficient balance")
        }   catch limitIncreaseError.ineligible
            {
                print("You don't have account with us")
            }   catch limitIncreaseError.noSavingAccount
                {
                    print("Limit increase is only available to saving accounts")
                }  catch limitIncreaseError.on_process
                    {
                        print("Your request is on process")
                    }
                        catch
                        {
                            print("Unexpexted Error")
                        }
    

    





