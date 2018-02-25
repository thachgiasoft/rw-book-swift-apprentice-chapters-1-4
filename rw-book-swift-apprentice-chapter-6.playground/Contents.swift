//: Playground - noun: a place where people can play

import UIKit

// Mini-exercises

// 1
func printFullName(firstName: String, lastName: String) {
    print(firstName + " " + lastName)
}
printFullName(firstName: "David", lastName: "Littlefield")

// 2
func printFullName2(_ firstName: String, _ lastName: String) {
    print(firstName + " " + lastName)
}
printFullName2("David", "Littlefield")

// 3
func calculateFullName(firstName: String, lastName: String) -> String {
    return firstName + " " + lastName
}
let myName = calculateFullName(firstName: "David", lastName: "Littlefield")
print(myName)

// 4
func calculateFullName2(firstName: String, lastName: String) -> (fullName: String, count: Int) {
    let fullName = firstName + " " + lastName
    return (fullName, fullName.count - 1)
}
let myNameInfo = calculateFullName2(firstName: "David", lastName: "Littlefield")
print("My full name is \(myNameInfo.fullName), it has \(myNameInfo.count) letters.")

// Challenges

// 1
// The from:to stride goes up to but not including the to arguement
// The from:through stride goes up to and includes the to arguement
for index in stride(from: 10.0, through: 9.0, by: -0.1) {
    print(index)
}

// 2
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    if number < 0 {
        return false
    }
    if number <= 3 {
        return true
    }
    let root = Int(sqrt(Double(number)))
    for divisor in 2 ... root {
        if isNumberDivisible(number, by: divisor) {
            return false
        }
    }
    return true
}
isPrime(6)
isPrime(13)
isPrime(8893)

// 3
func fibonacci(_ number: Int) -> Int {
    if number <= 0 {
        return 0
    }
    if number == 1 || number == 2 {
        return 1
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}
print(fibonacci(1))
print(fibonacci(2))
print(fibonacci(3))
print(fibonacci(4))
print(fibonacci(5))
print(fibonacci(6))
print(fibonacci(10))
