//: Playground - noun: a place where people can play

import UIKit

// task : create a class for the entity person. Use functions for the manipulating the datas.

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


