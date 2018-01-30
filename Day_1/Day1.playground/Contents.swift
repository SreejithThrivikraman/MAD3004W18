//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



print(str)
print("Hello world! \(str)")

// seperator is used for seperating multiple prompts.

//single line comments :P
/* multipleline comments :P
 */

print("1","2","3","4","5",separator: "..")
print("1","2","3","4","5",separator: "\n")




print("number :" ,n1,"seperation done")

var n1=10
var n2=20

var sum = n1 + n2
print("Sum is :",sum)


var a:Int = 10
print("A =",a);
//--------------------------------
var msg_1 = "Good"
var msg_2 = " Morning"

var msg_3 = msg_1 + msg_2

print(msg_3)

//-----------------------------------------------

var greet :String = "Good"
var emoji = " 😂"
var message = greet + emoji
print(message)
//-----------------------------------------------
print("Next>>>>>>>>>>>>>>>>>>>>>")
let pi = 3.14
print(pi)

if pi != nil {
    print("The number is not null","Number = ",pi)
}
else {
    print("The number is null")
}

//-----------------------------------------------

 print("type casting")


let integet_type = "123"

let converted_number: Int?
converted_number = Int(integet_type)
print("Number is " ,converted_number!)   // the '!' mark is used to unpack the variable.

//-----------------------------------------------

print("type casting")


let integet_type_string = "hello"

let converted_string:Int?
converted_string = Int(integet_type_string)
  // the '!' mark is used to unpack the variable.

if converted_string != nil {
    print("The number is not null","Number = ",converted_string!)
}
else {
    print("The number is null")
}

//-----------------------------------------------

print("looping")

for i in 1..<5 {
print("i=",i)
}

//-----------------------------------------------

let languages:[String]
languages = ["English", "French", "Spanish"]   //defining values for array "language" .. use square braces.

for lang_loop in languages {
    print("language :",lang_loop)
}

//-----------------------------------------------


let addition:[Int]
addition = [1, 2, 3]
var sum_1 = 0
for temp_i in addition {
    sum_1 = sum_1 + temp_i
    print(sum_1)
}

//-----------------------------------------------

print("Intervalssss")
// stride is an inbuilt function to denote the starting and ending of a for loop

var Interval:Int = 50
for i in stride(from: 0, to: Interval, by: 10) {
    print(i)
}

print("hello")




































