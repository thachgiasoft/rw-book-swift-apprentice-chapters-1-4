//: Playground - noun: a place where people can play

import UIKit

// Mini-exercises

// 1
var myFavoriteSong: String?
myFavoriteSong = "Bagbak"

// 2
let parsedIn = Int("10")
// It's optional because swift doesn't know that what's inside of the parentheses is a valid integer in string form.

// 3
let parsedIn2 = Int("dog")
// parsedIn2 equals nil

// Mini-exercises

// 1
if let myFavoriteSong = myFavoriteSong {
    print("\(myFavoriteSong)")
} else {
    print("I don't have a favorite song.")
}

// 2
myFavoriteSong = nil

if let myFavoriteSong = myFavoriteSong {
    print("\(myFavoriteSong)")
} else {
    print("I don't have a favorite song.")
}

// Challenges

// 1
// var name: String? = "Ray"
// let distance: Float = 26.7
// var middleName: String? = nil

// 2
func divideIfWhole(_ value: Int, by divisor: Int) -> String {
    guard value % divisor == 0 else {
        return "Not divisible"
    }
    let answer = value / divisor
    return "Yep, it divides \(answer) times"
}

print(divideIfWhole(10, by: 2))
print(divideIfWhole(10, by: 3))

// 3
func divideIfWhole2(_ value: Int, by divisor: Int) -> String? {
    guard value % divisor == 0 else {
        return nil
    }
    let answer = value / divisor
    return "Yep, it divides \(answer) times"
}

let answer1 = divideIfWhole2(10, by: 2) ?? "0"
print(answer1)
let answer2 = divideIfWhole2(10, by: 3) ?? "0"
print(answer2)

// 4
let number: Int??? = 10
print(number!!!)
if let num1 = number {
    if let num2 = num1 {
        if let num3 = num2 {
            print(num3)
        }
    }
}
func printNumber(_ number: Int???) {
    guard let num1 = number, let num2 = num1, let num3 = num2 else { return }
    print(num3)
}
printNumber(number)




