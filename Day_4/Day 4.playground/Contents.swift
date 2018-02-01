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
//print("operator methods",months.sorted(by: <)
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























