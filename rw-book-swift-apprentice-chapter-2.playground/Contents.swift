//: A UIKit based Playground for presenting user interface
  
import UIKit

// Mini-exercises

let myAge = 30

var averageAge = 30
averageAge = (myAge + 30) / 2

let testNumber = 11
let evenOdd = testNumber % 2

var answer = 0
answer += 1
answer += 10
answer *= 10
answer >> 3

// Challenge

let exercises = 11
var exercisesSolved = 0
exercisesSolved += 1

var age = 16
print(age)
age = 30
print(age)
exercisesSolved += 1

let a: Int = 46
let b: Int = 10
let answer1 = (a * 100) + b
let answer2 = (a * 100) + (b * 100)
let answer3 = (a * 100) + (b / 10)
exercisesSolved += 1

(5 * 3) - ((4 / 2) * 2)
exercisesSolved += 1

let a2 = 10.0
let b2 = 20.0
let average = (a2 + b2) / 2
exercisesSolved += 1

let fahrenheit = 100.0
let celcius = (fahrenheit - 32) / 1.8
exercisesSolved += 1

let position = 0
let row = (position / 8) + 1
let colum = (position % 8) + 1
exercisesSolved += 1

let dividend = 1_000.0
let divisor = 100.0
let quotient = dividend / divisor
let remainder = dividend.truncatingRemainder(dividingBy: divisor)
exercisesSolved += 1

let degrees = 11.0
let radians = degrees * (Double.pi / 180.0)
exercisesSolved += 1

let x1: Double = 0
let y1: Double = 0
let x2: Double = 0
let y2: Double = 0
let distance = sqrt((pow((x2 - x1), 2) + pow((y2 - y1), 2)))
exercisesSolved += 1

exercisesSolved += 1
let percentSolved = exercisesSolved / exercises
print(percentSolved)



