import UIKit
import Foundation

// For loops
for index in 1...5 {
    /*
     1...5 : the closed range operator 1,2..4,5
     1..<5 : the half-open range operator 1,2..4
     */
    print("This is number \(index)")
}

for _ in 1...3 {
    print("Hello!")
}

let names = ["Joseph", "Cathy", "Winston"]
for name in names {
    print("Hello \(name)")
}

for letter in "abcd" {
    print("The letter is \(letter)")
}

for (index, letter) in "abcd".enumerated() {
    print("\(index): \(letter)")
}

let animals = ["Lion", "Tiger", "Bear"]
for index in 0..<animals.count {
    print("\(index): \(animals[index])")
}

let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for (vehicleName, wheelCount) in vehicles {
    print("a \(vehicleName) has \(wheelCount) wheels")
}

// While Loops
var numberOfLives = 3
var stillAlive = true
while stillAlive {
    numberOfLives -= 1
    if numberOfLives == 0 {
        stillAlive = false
    }
}

// Repeat-While Loops
var steps = 0
let wall = 2
repeat {
    print("step")
    steps += 1
    if steps == wall {
        print("You have hit a wall!")
        break
    }
} while steps < 10

// Control Transfer Statements
for counter in -3...3 {
    print(counter)
    if counter == 0 {
        break
    }
}

//for person in people {
//    if person.age < 18 {
//        continue
//    }
//    sendEmail(to: person)
//}
