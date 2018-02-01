//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




//closures in swift   - these are the block of codes used in-line in a program.

//sorted closures
var months = [4,3,1,6,5,2]

print(months.sorted())    // sorted() is used to sort the array in an order

/* The  sorted() can be modified using user defined functions */

func reverse(_ s1: Int, _ s2: Int) -> Bool {                      // method :1 user defined function to reverse the order of the months. (the function is using a user-definned method to reverse the list of months)
    return s1 > s2
}

var reversedMonths = months.sorted(by: reverse)                  //
print("reversedMonths",reversedMonths)

func increasing (_ s1: Int, _ s2: Int)-> Bool {                  // user defined function to increase the order of the months.
    return s1 < s2
}

var increasingMonths = months.sorted(by: increasing)
print("increasing months : ",increasingMonths)


var reverseClosure = months.sorted(by :                         // method 2 :defining the closure function inside the sorted function
{
    (s1: Int, s2: Int) -> Bool in                              // necessary to use the keyword 'in' while defining a closure function inside the line.
    return s1 > s2
})
print("reverseClosure",reverseClosure)

//inferring parameter types from content
var inferTypes = months.sorted(by :{
    (s1,s2) in return s1 < s2
    //  (s1,s2) in s1 < s2            implicit returns
    
    
})

print("innferTypes",inferTypes)


// shorthand argumemnt names      - the arguments can be used to identify the position of the arguments
print("shorthand argument :",months.sorted(by: {$0 < $1}))     // $ symbol is used to identify the position of the element.

//operator methods
//print("operator methods",months.sorted(by: <)
//)

var three = [1,3,4,5,6,8,9,12,15]
print("three :",three)

var modthree = three.filter({ $0 % 3 == 0})    // used as a filter to filter-out the array.
print(modthree)

// nested functions closure

func makeincrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {                     // nested closure.
        runningTotal  += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeincrementer(forIncrement: 10)

print("first call :",incrementByTen())                // 10
print("seconnd call :", incrementByTen())             // 20
print("third call :", incrementByTen())               // 30

let incrementBySeven = makeincrementer(forIncrement: 7)
print("Increment by seven 1 :", incrementBySeven ())
print("Increment by seven 2 :",incrementBySeven())


print("fourth call",incrementByTen())               // 40

// calling again () functions for previous function.
let incrementBySevenAgain = incrementBySeven
print("Increment by seven 3: ", incrementBySevenAgain())

// autoclosures
/* The auto closures will delay the execution of a closure function.
 */
var errorList = [404,414,402,431,455,440]
print("Total Errors:",errorList.count)

let debugger = { errorList.remove(at: 0) }      // the constant 'debugger' is assigned to the closure function. So the remove() will execute only when the debugger() is called.
print("Total errors: ",errorList.count)         // closure function is not invoked here. Element at 0th position is not removed.

print("Now solving", debugger())                // here the closure function is invoked using the debugger().Element at 0th position is removed.
print("total errors:", errorList.count)
print("Error list:",errorList)



/* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> classes and structures <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< */

/* defining a structure */

struct project {
    var title = ""
    var hours = 0
    
    func display()
    {
        print("Print Title: ", title)
        print("Total work hours required :",hours)
        
    }
}

var LMSProject = project(title: "Moodle",hours :200)     // creating an object for the structure 'Project' ..... LMSProject.
print(">>>>>>>",LMSProject)
LMSProject.display()                    // calling the display function .

LMSProject.hours = 100
LMSProject.display()


// class

class Manager {
    var name : String = ""
    var productOwner : Bool = true
    var currentPojects = project()
    
}

// creating instance of class

let mgrCanada = Manager()
mgrCanada.name = "ST"
mgrCanada.productOwner = true
mgrCanada.currentPojects = project(title: "Pricing", hours: 300)

print("mgrCanada Name :", mgrCanada.name)
print("mgrCanada product Owner :", mgrCanada.productOwner)
print("mgrCanada current Project Title : ",mgrCanada.currentPojects.title)
print("mgrCanada current Project Hours :", mgrCanada.currentPojects.hours)


//calling function of structure project
mgrCanada.currentPojects.display()


// structure value types



var lambton = address()
print("Lambton :",lambton)

var cestar = lambton
//

struct address {
    var street = "265 yorkland blvd"
    var city = "North York"
    var postcode = "mij 3e8"
}

// classes are reference types

class Institure {
    var street = "265 Yorkland Blvd"
    var city  = "North York"
    var postalCode = "M1HY1"
}

var myLambton = Institure()
print("myLambton street: ", myLambton.street)
print("myLambton city:",myLambton.city)
print("myLambton postalcode: ",myLambton.postalCode)

var myCestar = myLambton
print("my ceastar street :",myCestar.street)

print("myCestar city :", myCestar.city)
print("myCestar postal code:",myCestar.postalCode)

myCestar.street = "271 Yorkland Blvd"
myCestar.postalCode = "M3H3Y3"
print("myCestar street:",myCestar.street)
print("myCestar postalcode:",myLambton.postalCode)

print("myLambton street:" ,myLambton.street)
print("myLambton postalCode:",myLambton.postalCode)

// identical to ===     'it is used for check whether the objects compared are from same instance.'

if myLambton === myCestar {
    print("lambton and cestar are same")
}
else {
    print("lambton and cestar are different")
}


var myClass = Institure()
if myClass === myCestar {
    print("myClass and cestar are same")
}
else {
    print("myClass and cestar are different")
}



// task : create a class for the person. Use functions for the manipulating the datas.

struct address_1 {
    var street = "265 yorkland blvd"
    var city = "North York"
    var postcode = "mij 3e8"
}

class Person {
    var First_name = "John"
    var Last_name = "Smith"
    var age = 30
    var total_amt = 2000
    var loc = address_1()                               // declaring instance for address class
    
    
}

var Person_object = Person()                          // declaring an object 'Person_object' for class 'Person'

print("First Name = " ,Person_object.First_name)
print("Last Name = " ,Person_object.Last_name)
print("Age = " ,Person_object.age)
print("Street name = " ,Person_object.loc.street)
print("City = " ,Person_object.loc.city)
print("postal code = " ,Person_object.loc.postcode)
print("Total amount = " ,Person_object.total_amt)
























