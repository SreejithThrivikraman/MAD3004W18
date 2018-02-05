//: Playground - noun: a place where people can play

import Cocoa

var number : Int = 6
var factorial : Int



func func_factorial(N1:Int) -> Int
{   if (N1 >= 1)
    {
        return N1 * func_factorial(N1: N1 - 1);
    }
    else
    {
    return 1;
    }
}

factorial = func_factorial(N1: number)
print("Factorial of ",number,"is :",factorial)
