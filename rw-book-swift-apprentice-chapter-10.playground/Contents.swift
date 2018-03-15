//: Playground - noun: a place where people can play

import UIKit

// Mini-exercises

// 1
let names = ["David", "Rosanna", "Trong", "Eric"]
let string = names
    .reduce("") { $0 + ", " + $1 }
    .dropFirst(2)
print(string)

// 2
let string2 = names
    .filter { $0.count > 4 }
    .reduce("") { $0 + ", " + $1 }
    .dropFirst(2)

print(string2)

// 3
let namesAndAges = ["Sara": 3, "John": 12, "Rick": 22, "Mary": 31]
let under18 = namesAndAges.filter { $0.value < 18 }
print(under18)

// 4
let over18 = namesAndAges.filter { $0.value > 18 }
print(over18)
let namesOver18 = over18.map { $0.key }
print(namesOver18)

// Challenges

// 1
func repeatTask(times: Int, task: () -> Void) {
    for _ in 1 ... times {
        task()
    }
}
repeatTask(times: 10, task: { print("Swift Apprentice is a great book!") })

// 2
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var result = 0
    for i in 1 ... length {
        result += series(i)
    }
    return result
}
mathSum(length: 10) { (number) -> Int in
    number * number
}

// 3
let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]
var averageRating: [String: Double] = [:]
appRatings.forEach {
    let total = $0.value.reduce(0, +)
    averageRating[$0.key] = Double(total) / Double($0.value.count)
}
print(averageRating)

let goodApps = averageRating
    .filter { $0.value > 3 }
    .map { $0.key }

print(goodApps)
