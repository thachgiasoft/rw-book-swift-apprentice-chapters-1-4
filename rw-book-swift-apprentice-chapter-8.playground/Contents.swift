//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Mini-exercise

var players = ["Alice", "Bob", "Cindy", "Dan"]
players += ["Eli", "Gina"]
players.insert("Frank", at: 5)
var removedPlayer = players.removeLast()

// 1
let index = players.index(of: "Dan")
if let index = index {
    print(index)
}

// Mini-exercise

players = ["Anna", "Donna", "Craig", "Brian", "Dan", "Eli", "Franklin"]
players.sort()
let scores = [2, 2, 8, 6, 1, 2, 1]

// 1
for i in 0 ..< players.count {
    guard players.count == scores.count else { break }
    print("[Player: \(players[i]), Score: \(scores[i])]")
}

// Challenges

var array5 = [1, 2, 3]

// 1
// let array1 = [Int]()
// let array3: [String] = []
// print(array4[0])
// array4[1...2]
// array4[0] = 4
// array5[0] = array5[1]
// array5[0...1] = [4, 5]
// for item in array5 { print(item) }

// 2
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    guard let index = array.index(of: item) else { return array }
    var array = array
    array.remove(at: index)
    return array
}

// 3
func removingAll(_ item: Int, from array: [Int]) -> [Int] {
    var array = array
    for _ in 0 ..< array.count {
        guard let index = array.index(of: item) else { return array }
        array.remove(at: index)
    }
    return array
}

// 4
func reversed(_ array: [Int]) -> [Int] {
    var newArray = [Int]()
    for index in 1 ... array.count {
        newArray.append(array[array.count - index])
    }
    return newArray
}

// 5
func randomFromZero(to number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(_ array: [Int]) -> [Int] {
    var newArray = array
    for index in 0 ..< array.count {
        let randomIndex = randomFromZero(to: array.count)
        let value = newArray[randomIndex]
        newArray[randomIndex] = newArray[index]
        newArray[index] = value
    }
    return newArray
}

// 6

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    guard !numbers.isEmpty else { return nil }
    var min = numbers[0], max = numbers[0]
    
    for number in numbers {
        if number > max {
            max = number
        }
        if number < min {
            min = number
        }
    }
    return (min: min, max: max)
}

