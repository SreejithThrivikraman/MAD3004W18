//: Playground - noun: a place where people can play

import UIKit


// 'self' is the keyword similar to the 'this' operator.

class Employee
{
    var empID : Int?
    var empName: String?
    var basicPay: Double?
    
    deinit {
    
    }
  
    
    
    init()                                                    // initializers  (similar to constructors)   - used to initialise the values for the class.This initializer is uninitialised.
    {
        self.empID = 0
        self.empName = ""
        self.basicPay = 0
    }
    
    init(ID: Int, nm: String, Bp: Double)                       // This initializer is parameterised. It will hold a parameter.
    {
        self.empID =  ID
        self.empName = nm
        self.basicPay = Bp
    }
    
    func display()
    {
        print("Employee ID: ", self.empID!)
        print("Employee Name :", self.empName!)
        print("Basic Pay : ", self.basicPay!)
        
    }
}

//class permanent_employee is inherited from Employee

class permanent_employee : Employee {
    var vacationWeeks : Int?

    // parameterized initializer in sub-class.
    
    init(eID: Int, enm: String, eBp: Double,weeks : Int)        // This initializer is parameterised. It will hold a parameter.
    {
       super.init(ID: eID, nm: enm, Bp: eBp)

    }
    
    override init()
    {
        super.init()
        self.vacationWeeks = 0
    }
    override func display()                                 // when tboth  the parent and child class have function with same name, overriding must be specified for the child classs.
    {
        
        super.display()                                    //  super keyword is used to invoke the display of the super class.
        print ("Vacation weeks :", vacationWeeks!)

    }

}



var emp1 = Employee()
emp1.empID = 101
emp1.empName = "Sreejith"
emp1.basicPay = 2000

var obj2 = permanent_employee()
obj2.vacationWeeks = 4
obj2.empID = 102
obj2.empName = "John"
obj2.basicPay = 3000

obj2.display()
emp1.display()

var emp2 = Employee(ID: 12,nm : "Varun", Bp: 2000)
emp2.display()


var obj3 = permanent_employee()
obj3.vacationWeeks = 4
obj3.display()



/**************************************************************/
 
//class Payroll :  permanent_employee {
//    var netPay : Double {
//
//    get {
//    var vw = self.vacationWeeks!
//    if vw > 5 {
//    return self.basicPay! - 100
//    }
//    else
//    {  return self.basicPay!
//
//    }
//        }
//
//
//    override init()
//    {  // self.netPay = 0.0
//        super.init()
//        self.netpay()
//    }
//
//
//
//   override init(eID: Int, enm: String, eBp: Double,weeks : Int)        // This initializer is parameterised. It will hold a parameter.
//    {
//        //      super.init(ID: eID, nm: enm, Bp: eBp)
//
//    }
//
//
//    override func display()
//    {
//
//    }
//
//    func netpay()
//    {
//
//    }
//
////    func check_vacation_weeks(weeks: Int)
////    {
////        if weeks > 5
////        {
////            self.netPay! = self.basicPay! - 100
////        }
////        else {
////            self.netPay! = self.basicPay!
////        }
////    }
////
////}
////
////
////var obj_7 = Payroll (eID: 107, eNM: "Ranjith", ePay : 2566.32, weeks: 6)
////obj_7.display()
//
//}


class PayRoll: permanent_employee {
    var finalPay: Double
    
    override init() {
        self.finalPay = 0
        super.init()
    }
    
    override init(ID: Int, NM: String, Pay: Double) {
        self.finalPay = 0
        super.init(eID: ID, enm: NM, eBp: Pay, weeks: NWV)
    }
    //init(eID: Int, enm: String, eBp: Double,weeks : Int)
    func calculateFinalPay() {
        if vacationWeeks! > 5 {
            finalPay = basicPay! - 100
            print(finalPay)
        }
    }
}

print("\nFinding the final pay of the employee \n")
var payRoll1 = PayRoll(ID: 20, NM: "abc", Pay: 1000000, NWV: 10)
payRoll1.calculateFinalPay()











