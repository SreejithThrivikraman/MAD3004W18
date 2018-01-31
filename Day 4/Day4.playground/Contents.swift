//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//dictionaries

var namesOfIntegers = [Int: String]()// namesOfIntegers is an empty [Int: string] dictionary
namesOfIntegers[15] = "priya" //namesofintegers now contains 1 key-value pair
print("namesOfIntegers : \(namesOfIntegers)")

namesOfIntegers[28] = "Twenty Eight"
print("dictionary contains \(namesOfIntegers.count) elements")
print("dictionary: ",namesOfIntegers)

namesOfIntegers = [:] //namesOfIntegers is once again an empty dictionary of type [Int: string]
print("dictionary contains \(namesOfIntegers.count) elements")
print("namesOfIntegers : ",namesOfIntegers)

if namesOfIntegers.isEmpty {
    print("Dictionary is empty")
}
else{
    print(namesOfIntegers)
}

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("airports : \(airports)")
print("the airports dictionary contains \(airports.count) items.")//prints "the airports dictionary contaims 2 items."

airports["LHR"] = "London Heathrow" //the value for "LHR" has been changed to "LondonHeathrow"

airports["YYZ"] = "TP International"
airports["AMD"] = "SVP International"
print("airports : ",airports)

let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")

print("The old Value for DUB was \(oldValue).")
//prints "the old value for DUB was dublin."
print(">>>>>>>>>>>>>>>>>",airports)

if let airportName = airports["AMD"]{
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airport dictionary")
}

airports["mars"] = "Range Rover" //Apple International is not the real airport for APL,so delete it
print(airports)
airports["mars"] = nil // APL has now been removed from the dictionary
print("airports : \(airports)")

if let removedValue = airports.removeValue(forKey: "DUB"){
    print("The removed airport's name is \(removedValue).")
}else{
    print("The airports dictionary does not contain a value for DUB.")
} //prints "the removed airport's name is Dublin Airport"

for (airportCode, airportName) in airports {
    print(airportCode, airportName)
}

for airportCode in airports.keys{
    print("airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys) // airportCodes is ["YYZ", "LHR"]
print("airportCodes: \(airportCodes)")

let airportNames = [String](airports.values) //airportnames is ["toronto pearson", "london heathrow"
print("airportNames: \(airportNames)")


//<KEY, VALUE> pairs
var d1 : Dictionary<String, String> = ["India":"Hindi","Canada":"English"]
print (d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
print(d1["USA"])
d1["china"] = "Mandarin"
for (k,v) in d1{
    print("\(k) -> \(v)")
}

//Dictionary with any values type
var d3 = [String: AnyObject]()
d3["firstname"] = "priya" as AnyObject
d3["lastname"] = "nair" as AnyObject
d3["age"] = Int(23) as AnyObject
d3["salary"] = nil
print("d3",d3)

//Getting as a key, value pair
for (k,v) in d3{
    print("\(k) -> \(v)")
}

//Getting as a single object
for (k,v) in d3{
    print("\(k) -> \(v)")
}

//Declaring tuples
var x = (10, 20, "nair")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "notfound")
print(http404Error)

let (statusCode, statusMessage) = http404Error
print("statusCode:",statusCode)
print("statusmessage:",statusMessage)

let (codeOnly, _) = http404Error
print("codeonly:",codeOnly)

let errorDescription = (code: 404, Message: "notfound")
print(errorDescription.code,errorDescription.Message)



// >>>>>>>>>>>>>>>>>>>>>>>usage of functions in swift<<<<<<<<<<<<<<<<<<<<<<<<<<<

func add()
{
    print("Hello ..... I am an add function ")
}

add()      // calling the function in code



var param_1 : Int = 8                // function param 1
var param_2 :String = "Sreejith"     // function param 2

func add(n1:Int,n2:String)          // function definition
{
    print("Hello ..... I am an add function and my param value is ",n1," " ,n2)
}

add(n1:param_1,n2:param_2)          // function call with argumemts


//>>>>>>>>>>>>>>>>>>>>>>>>>> functions without argument labels. <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

var A : Int = 8                // function param 1
var B :String = "Sreejith"     // function param 2

func add(n1:Int,_ n2:String)          // function definition  -- use an '_' for the before second variable.
{
    print("Hello ..... I am an add function and my param value is ",n1," " ,n2)
}

add(n1:param_1,param_2)      // mentioning the label of second variable is optional.

//>>>>>>>>>>>>>>>>>>>>>>>>>> functions without argument labels. <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



//>>>>>>>>>>>>>>>>>>>>>>>>>> functions with single return values . <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


var a : Int,b :Int,c : Int

a = 10
b = 20

func addition(n1:Int,n2:Int) -> Int
{
    var temp : Int = n1 + n2
    return temp
}

c = addition(n1:a,n2:b)
print("value returned is = ",c)

//>>>>>>>>>>>>>>>>>>>>>>>>>> functions with single return values . <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



//>>>>>>>>>>>>>>>>>>>>>>>>>> swipe numbers using functions. <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

var num_1: Int = 10, num_2 = 20
print ("value of a = ", num_1,"value of b = ",num_2)
func swap (n1:Int,n2:Int) -> (Int,Int)
{
    
    return (n2,n1)
}

(num_1,num_2) = swap(n1 : num_1,n2 : num_2)
print ("value of a = ", num_1,"value of b = ",num_2)
//>>>>>>>>>>>>>>>>>>>>>>>>>> swipe numbers using functions. <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


//>>>>>>>>>>>>>>>>>>>>>>>>>> inout concept  (using reference variables in functions) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


func swipe (n1: inout Int,n2: inout Int) -> (Int,Int)
{
    let temp : Int
    temp  = n1
    n1 = n2
    n2 = temp
    return (n1,n2)
}

var input_1 : Int = 10, input_2 :Int = 20
print("Before swipe",input_1, " " ,input_2)

(input_1,input_2) = swipe(n1: &input_1, n2: &input_2)
print("After swipe>>>>>",input_1," ", input_2)

//>>>>>>>>>>>>>>>>>>>>>>>>>> inout concept  (using reference variables in functions) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

//>>>>>>>>>>>>>>>>>>>>>>>>>> Default parameter concept  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
func Simple_Interest (n1 : Double = 100, n2 : Double = 10, n3 : Double)  -> Double


{
    let SI  = (n1 * n2 * n3 )/100
    return SI
    
}

let interest = Simple_Interest(n3: 3)
print("interest is ", interest)
//>>>>>>>>>>>>>>>>>>>>>>>>>> Default parameter concept  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


//>>>>>>>>>>>>>>>>>>>>>>>>>> variadic parameter  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

func display(n:Int...)
{
    for i in n {
        print(i)
    }
}

display(n: 1,2,3,4)
display(n: 9,8)

//>>>>>>>>>>>>>>>>>>>>>>>>>> variadic parameter  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


//>>>>>>>>>>>>>>>>>>>>>>>>>> passing an array as a parameter  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

func func_array (numberValues :Int, parameters :[Int]...)
{
    print("Number of values : ", numberValues)
    
    for i in parameters
    {
        print(i)
    }
    
    
}

var arr : [Int] = [1,2,3,4]
func_array(numberValues: 2, parameters: arr,arr)

//>>>>>>>>>>>>>>>>>>>>>>>>>> passing an array as a parameter  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<










































