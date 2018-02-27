//: Playground - noun: a place where people can play

import UIKit

// Mini-exercise

var bobData = ["name": "Bob",
               "profession": "Card Player",
               "country": "USA"]
bobData.updateValue("CA", forKey: "state")
bobData["city"] = "San Francisco"

// 1
func getCityState(for player: [String: String]) {
    guard
        !player.isEmpty,
        let city = player["city"],
        let state = player["state"],
        let name = player["name"]
        else { return }
    print("\(name) is from \(city), \(state).")
}
getCityState(for: bobData)

// Challenges

// 1
// let dict2 = [:]
// let dict3: [Int: Int] = [:]
// dict4["One"]
// dict4["Zero"] = 0
// dict5["NY"]
// dict5["WA"] = "Washington"
// dict5["CA"] = nil

// 2
func swappingValuesForKeys(_ key1: String, _ key2: String,
                           in dictionary: [String: Int]) -> [String: Int] {
    var newDictionary = dictionary
    let value1 = dictionary[key1]
    let value2 = dictionary[key2]
    newDictionary[key1] = value2
    newDictionary[key2] = value1
    return newDictionary
}

// 3
let statesDict = ["NY": "New York", "CA": "California"]
func printStateName(for states: [String: String]) {
    guard !states.isEmpty else { return }
    for (stateCode, stateName) in states {
        if stateName.count > 8 {
            print(stateName)
        }
    }
}

// 4
func merging(_ dict1: [String: String], with dict2: [String: String]) ->
    [String: String] {
        var newDict: [String: String] = dict1
        for (key, value) in dict2 {
        newDict.updateValue(value, forKey: key)
        }
        return newDict
}

// 5
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var charDict = [Character: Int]()
    for character in text.lowercased() {
        if charDict[character] == nil {
            charDict.updateValue(1, forKey: character)
        } else {
            if let number = charDict[character] {
                charDict.updateValue(number + 1, forKey: character)
            }
        }
    }
    return charDict
}

// 6
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var isValuePresent: [Int: Bool] = [:]
    for (value) in dictionary.values {
        if isValuePresent[value] != nil {
            return false
        }
        isValuePresent[value] = true
    }
    return true
}

// 7
func invert(_ input: [String: Int]) -> [Int: String] {
    var output = [Int: String]()

    if isInvertible(input) {
        for (key, value) in input {
            output[value] = key
        }
    } else {
        print("This dictionary can't be inverted")
    }
    return output
}

// 8
func printSortedKeysAndValues(_ input: [String: Int16]) {
    var keyValueArray = [(String, Int16)]()
    for (key, value) in input {
        let keyValue = (key, value)
        keyValueArray.append(keyValue)
    }
    let sorted = keyValueArray.sorted { ($0 < $1) }
    for (key, value) in sorted {
        print("\(key), \(value)")
    }
}

// 9
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]
nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup.removeValue(forKey: "Ray")
print(nameTitleLookup)
