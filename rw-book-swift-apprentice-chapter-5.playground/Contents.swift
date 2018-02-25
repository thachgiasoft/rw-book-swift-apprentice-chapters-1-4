//: Playground - noun: a place where people can play

import UIKit

// Mini-exercises

// 1
var range = 1...10
for i in range {
    print(i * i)
}

// 2
for i in range {
    print(sqrt(Double(i)))
}

// 3
var sum = 0
for row in 0 ..< 8 where row % 2 != 0 {
    for column in 0..<8 {
        sum += row * column
    }
}
print(sum)

// Mini-exercises

// 1
let age = 30
switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle-aged")
case let age where age >= 61:
    print("Elderly")
default:
    print("Not an appropriate age")
}

// 2
let age2 = (name: "David", age: 30)
switch age2.age {
case 0...2:
    print("\(age2.name) is an Infant")
case 3...12:
    print("\(age2.name) is a Child")
case 13...19:
    print("\(age2.name) is a Teenager")
case 20...39:
    print("\(age2.name) is an Adult")
case 40...60:
    print("\(age2.name) is Middle-aged")
case let age where age >= 61:
    print("\(age2.name) is Elderly")
default:
    print("Not an appropriate age")
}

// Challenges

// 1
// 15, six times

// 2
// 10 a's

// 3
// "On the x/y plane", "x = y = z", "On the x/z plane", "Nothing special", "On the y/z plane"

// 4
// A closed range is explicitly creating inself, therefore it's it must exist.

// 5
let count = 10
for i in 0 ... count {
    print(count - i)
}

// 6
var numbers = ""
for i in 0 ... 10 {
    let number = Double(i) * 0.10
    numbers += "\(number)"
    if number < 1.0 {
        numbers += ", "
    } else {
        numbers += "."
    }
}
print(numbers)





