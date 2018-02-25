//: Playground - noun: a place where people can play

import UIKit

// Mini-exercises

let myAge = 30
let isTeenager = myAge >= 13 && myAge <= 19

let theirAge = 21
let bothTeenagers = theirAge >= 13 && theirAge <= 19 && isTeenager

let reader = "David Littlefield"
let author = "Matt Galloway"
let authorIsReader = reader == author

let readerBeforeAuthor = reader < author

// Mini-exercises

let myAge2 = 30
if myAge2 >= 13 && myAge2 <= 19 {
    print("Teenager")
} else {
    print("Not a teenager")
}

let answer = myAge2 >= 13 && myAge2 <= 19 ?
    print("Teenager")
    : print("Not a teenager")

// Mini-exercises

var counter = 0
while counter < 10 {
    print("Counter is \(counter)")
    counter += 1
}

var counter2 = 0
var roll = 0
repeat {
    roll = Int(arc4random_uniform(6))
    counter2 += 1
    if roll == 0 {
        print("After \(counter2) rolls, roll is \(roll)")
    }
} while roll != 0

// Challenges

// 1 The constant lastName cannot be accessed outside the scope of the if-then statement.

// 2 True, false, true, true

// 3
let row = 7
let column = 7
var nextRow = row
var nextColumn = column + 1
if nextColumn > 7 {
    nextColumn = 0
    nextRow += 1
}
if nextRow > 7 {
    nextRow = 0
}
print("The position after (\(row), \(column)) is (\(nextRow), \(nextColumn))")

// 4 - Could not figure out, moving on

// 5
let month = "february"
let year = 2016

if month == "january" || month == "march" || month == "may" || month == "july" || month == "september" || month == "october" || month == "december" {
    print("This month has 31 days.")
} else if month == "april" || month == "june" || month == "september" || month ==  "november" {
    print("This month has 30 days.")
} else if month == "february" && (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
    print("This month has 29 days.")
} else if month == "february" {
    print("This month has 28 days.")
} else {
    print("This is not a valid month.")
}

// 6
let number: Int = 2

var result = log2(Double(number))
while result.truncatingRemainder(dividingBy: 2) == 0 {
    result /= 2
}
if result == 1 {
    print("\(number) is a power of 2.")
} else {
    print("\(number) is not a power of 2.")
}

// 7
var exponent = 0
var power = 1
while exponent <= 10 {
    print("\(exponent)\t\(power)")
    exponent += 1
    power *= 2
}

// 8
let goal = 8 // The value of n

var current = 1
var previous = 1
var done = 2
while done < goal {
    let next = current + previous
    previous = current
    current = next
    done += 1
}
print("Fibonacci number \(goal) is \(current)")

// 9
let n = 5

var accumulator = 1
done = 1
while done < n {
    done += 1
    accumulator *= done
}
print("\(n)! is \(accumulator)")

// 10
let targetValue = 7
var combinationsFound = 0
var valueOnFirstDice = 1
while valueOnFirstDice <= 6 {
    var valueOnSecondDice = 1
    while valueOnSecondDice <= 6 {
        if valueOnFirstDice + valueOnSecondDice == targetValue {
            combinationsFound += 1
        }
        valueOnSecondDice += 1
    }
    valueOnFirstDice += 1
}
let percentage = Int(Double(combinationsFound) / 36 * 100)
print("The odds of rolling a \(targetValue) are \(combinationsFound) in 36 or \(percentage)%.")
