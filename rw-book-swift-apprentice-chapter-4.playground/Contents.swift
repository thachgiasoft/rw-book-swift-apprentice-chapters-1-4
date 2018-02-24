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

// The constant lastName cannot be accessed outside the scope of the if-then statement.

// True, false, true, true

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



