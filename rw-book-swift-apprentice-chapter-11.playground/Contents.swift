//: Playground - noun: a place where people can play

import UIKit

// Mini-exercises

// 1
struct PizzaOrder {
    var toppings: [String]
    var size: String
    var glutenFree: Bool
    var dairyFree: Bool
    var vegan: Bool
}

let RosannaAndDavid = PizzaOrder(
    toppings: ["soy-sausage", "soy-pork", "bell-pepper", "olives", "cherry-tomatoes", "vegan-cheese"],
    size: "XL",
    glutenFree: true,
    dairyFree: true,
    vegan: true)

// 2

struct Location {
    let x: Int
    let y: Int
}

let storeLocation = Location(x: 2, y: 4)

func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return sqrt(distanceX * distanceX + distanceY * distanceY)
}

struct DeliveryArea: CustomStringConvertible {
    var range: Double
    let center: Location
    
    var description: String {
        return "Area with range: \(range), location: x: \(center.x) - y: \(center.y)"
    }
    
    func contains(_ location: Location) -> Bool {
        let distanceFromCenter =
            distance(from: center,
            to: location)
        
        return distanceFromCenter < range
    }
    
    func overlaps(with area: DeliveryArea) -> Bool {
        return distance(from: center, to: area.center) >= (range + area.range)
    }
}

var storeArea = DeliveryArea(range: 4, center: storeLocation)

let areas = [
    DeliveryArea(range: 2.5, center: Location(x: 2, y: 4)),
    DeliveryArea(range: 4.5, center: Location(x: 9, y: 7))
]

func isInDeliveryRange(_ location: Location) -> Bool {
    for area in areas {
        let distanceToStore =
        distance(from: (area.center), to: location)
        
        if distanceToStore < area.range {
            return true
        }
    }
    return false
}

let customerLocation1 = Location(x: 8, y: 1)
let customerLocation2 = Location(x: 5, y: 5)

print(isInDeliveryRange(customerLocation1))
print(isInDeliveryRange(customerLocation2))

let area1 = DeliveryArea(range: 2.5, center: Location(x: 2, y: 4))
let area2 = DeliveryArea(range: 2.5, center: Location(x: 2, y: 9))

area1.overlaps(with: area2)
print(area1)
print(area2)

// Challenges

// 1

typealias BoardPiece = String
let X: BoardPiece = "X"
let O: BoardPiece = "O"

struct Game {
    
    // The game is a 3x3 grid of BoardPieces. Nil means it's an empty position
    var board: [BoardPiece?] = [nil, nil, nil,
                                nil, nil, nil,
                                nil, nil, nil]
    
    // Start with a current player, either O or X
    var currentPlayer = O
    
    // Compute and return the winner of the game. If there is no winner, return nil.
    var winner: BoardPiece? {
        
        let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8], [2, 4, 6], [0, 3, 6], [1, 4, 7],  [2, 5, 8]]
        
        for combination in winningCombinations {
            let result = combination.map { board[$0] }
            if result.filter({$0 == X}).count == 3 {
                return X
            }
            if result.filter({$0 == O}).count == 3 {
                return O
            }
        }
        return nil
    }
    
    // Return true if all the board positions are filled and there is a winner
    var isFinished: Bool {
        return winner != nil || !board.contains { $0 == nil }
    }
    
    // Set the position to the current players board piece. If the position
    // is invalid there is already a piece at the position, return without doing
    // anything. Toggle the current player.
    mutating func processSelection(position: Int) {
        if position < 0 || position > board.count {
            return
        }
        if board[position] != nil {
            return
        }
        board[position] = currentPlayer
        currentPlayer = currentPlayer == X ? O : X
    }
    
    // Print an ASCII representation of the board.
    func printBoard() {
        print()
        print(" \(board[0] ?? " ") | \(board[1] ?? " ") | \(board[2] ?? " ") ")
        print("-----------")
        print(" \(board[3] ?? " ") | \(board[4] ?? " ") | \(board[5] ?? " ") ")
        print("-----------")
        print(" \(board[6] ?? " ") | \(board[7] ?? " ") | \(board[8] ?? " ") ")
        print()
    }
}

// Play a game

var game = Game()

print("Welcome to Tic-Tac-Toe!")
game.printBoard()

game.processSelection(position: 4)
game.processSelection(position: 3)
game.processSelection(position: 5)
game.processSelection(position: 2)
game.processSelection(position: 8)
game.processSelection(position: 1)
game.processSelection(position: 0)
game.processSelection(position: 6)
game.printBoard()

print("Game over!")
if let winner = game.winner {
    print("The winner is player \(winner). Congradulations!")
} else {
    print("The game is tied. Try again!")
}

// 2

typealias Size = String
let Small: Size = "Small"
let Medium: Size = "Medium"
let Large: Size = "Large"
let XLarge: Size = "XLarge"

typealias Material = String
let Cotton: Material = "Cotton"
let Polyester: Material = "Polyester"
let Wool: Material = "Wool"

typealias Color = String

struct TShirt {
    var size: Size
    var color: Color
    var material: Material
    
    func calculateCost() -> Double {
        let base = 10.0
        
        var sizeMultiplier: Double
        switch size {
        case Small, Medium:
            sizeMultiplier = 1.0
        case Large, XLarge:
            sizeMultiplier = 1.1
        default:
            // Special Order
            sizeMultiplier = 1.2
        }
        
        var materialMultiplier: Double
        switch material {
        case Cotton:
            materialMultiplier = 1.0
        case Polyester:
            materialMultiplier = 1.1
        case Wool:
            materialMultiplier = 1.5
        default:
            // Special Order
            materialMultiplier = 2.0
        }
        
        return base * sizeMultiplier * materialMultiplier
    }
}

print(TShirt(size: Medium, color: "Green", material: Cotton).calculateCost())
print(TShirt(size: XLarge, color: "Grey", material: Wool).calculateCost())

// 3


