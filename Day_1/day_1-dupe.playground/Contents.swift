//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// repeat-while loop

var i = 0
repeat {
    print ("value = ",i)
    i = i+1
}while (i<5)


//--------------------------------------------//

var input_no_1 = 4


if input_no_1 > 5 {
    repeat
    {   print("value = 5 * ", i ," = " , 5 * i )
        i = i + 1
    } while i < 10
}

else {
    var j = 5
    var temp = 1
    print("factorial of 5 is :")
    repeat
    {   temp = temp * j
        j = j - 1
    } while j > 0
    
    print(temp)
}


var variable = 2
switch variable {
case  1:
    print("the value is 1")
case 2:
    print("the value is 2")
default:
    print("default value")
}

