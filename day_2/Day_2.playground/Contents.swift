//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Array declaration
var a = [10,30,40,50]
print("sreejith", a[1])
print(a)      // printing the entire array.

// Assigning default value to the array

var num1 = [Int](repeating: 5,count:3)
print(num1)

//*******************************************************
//Merging two arrays
var num2 = [Int](repeating: 5,count:3)    // array 1
print(num2)

var num3 = [Int](repeating: 7,count:3)   //  array 2
print(num3)

var merged_array = num3
    + num2
print(merged_array)

//*******************************************************

//*******************************************************
// Declaring a new array that accepts any data type
var num4 =  [Any]()
num4.append(1000)
print(num4)

num4.append("Sreejith")
print(num4)
//*******************************************************

//*******************************************************
//using an array of contents

var x = a[1...3]       //   a[1...3] is used to pick data from 1 to 3

for t in x {
    print("x :",t)
}

//*******************************************************
// enumerate key for arrays.
// String array and for-each with (key,value)
//var Shoppinglist : [String] = ["Milk","Cheese"]
//for(index,value) in Shoppinglist.enumerated()
//print(""")
//*******************************************************

//*******************************************************
// using sets

var grades : Set<Character> = []
grades.insert("s")   // inserting values in set.
grades.insert("a")
print("set = ",grades)
grades.insert("m")
print("set = ",grades)

print("No.of elements in array",grades.count)  // getting the count of the arrays.


//*******************************************************
var  favouriteGenere: Set<String> = ["rock","classical","pop"]
print(favouriteGenere)

print("I have ",favouriteGenere,"in my collection")

if favouriteGenere.isEmpty
{
    print("Set is empty")
}
else {
    print("the set is not empty")
}

print(favouriteGenere.count)  // displaying the count of the set.

favouriteGenere.insert("hip-hop")    //adding a new element to the list
print(favouriteGenere)

//*******************************************************
// set operations
let od: Set = [1,3,5,7,9]
let ed: Set = [0,2,4,6,8]
let sdpn: Set = [2,3,5,7]

print(od.union(ed).sorted())
print(od.intersection(ed).sorted())
print(od.subtracting(sdpn).sorted())
print(od.symmetricDifference(sdpn).sorted())












