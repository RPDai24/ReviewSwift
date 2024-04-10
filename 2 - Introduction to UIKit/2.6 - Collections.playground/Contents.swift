import UIKit

// Arrays
var name = ["Anne", "Gary", "Keith", "d"]
var numbers: [Int8] = [1, -3, 50, 72, -95, 115]

let numbers2 = [2, 3, 4, 5]
if numbers2.contains(5) {
    print("There is a 5")
}

// Array types
var myArray: [Int] = [] // traditional type annotation
var myArray2: Array<Int> = [] // a special collection type annotation
var myArray3 = [Int]()

// Working with Arrays
var myArray100 = [Int](repeating: 0, count: 100)
let count = myArray100.count
if myArray100.isEmpty {}

var names = ["Amy"]
names.append("Joe")
names.append(contentsOf: ["Keith", "Jane"])
names += ["Keith2", "Jane2"]
names.insert("Bob", at: 0)

var names2 = ["Amy", "Brad", "Chelsea", "Dan"]
let chelsea = names2.remove(at: 2)
let dan = names2.removeLast()
let amy = names2.removeFirst()
names2.removeAll()

let array1 = [1, 2, 3]
let array2 = [4, 5, 6]
let myArray4 = array1 + array2
let containerArray = [array1, array2]
let firstArray = containerArray[0]
let firstElement = containerArray[0][0]

// Dictionary
var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]
let scoresCount = scores.count
let isScores = scores.isEmpty
var myDictionary = [String: Int]()
var myDictionary2 = Dictionary<String, Int>()
var myDictionary3: [String: Int] = [:]

// Add / Remove / Modify a dictionary
scores["Richard"] = 330 // no return oldValue
let oldValue = scores.updateValue(300, forKey: "Richard3") // prefer this way return oldValue
if let oldValue2 = scores.updateValue(340, forKey: "Richard") {
    print("Richard's old value was \(oldValue2)")
}

scores["Richard"] = nil
if let removedValue = scores.removeValue(forKey: "Luke") {
    print("Luke's score was \(removedValue) before he stopped playing")
}
print(scores)
scores.updateValue(500, forKey: "Richard")
scores.updateValue(400, forKey: "Luke")

let players = Array(scores.keys)
let points = Array(scores.values)
if let lucksScore = scores["Luke"] {
    print(lucksScore)
}
if let henrysScore = scores["Henry"] {
    print(henrysScore)
}


