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

struct DeliveryArea {
    var range: Double
    let center: Location
    
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
