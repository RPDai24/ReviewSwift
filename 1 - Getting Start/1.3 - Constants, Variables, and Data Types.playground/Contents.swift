import UIKit
var greeting = "Hello, playground"

// Constants
let name = "John"
print(name)
//name = "James"

// Variables
var age = 20
age = 30
print(age)

let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore
playerOneScore = 200
print(playerOneScore)


// Define your own type Person
struct Person {
    let firstName: String
    let secondName: String
    func sayHello() {
        print("Hello there! My name is \(firstName) \(secondName).")
    }
}
let personJohn = Person(firstName: "John", secondName: "Guo")
personJohn.sayHello()

// Type safety
let playerName = "Julian"
var playerScore = 1000
var gameOver = false
//playerScore = playerName
var wholeNumber = 20
var numberWithDecimals = 5.18
// wholeNumber = numberWithDecimals

var largeUglyNumber = 1000000000
var largePrettyNumber = 1_000_000_000

// Type inference
let cityName = "London"
let pi = 3.1415927

// type annotation
//let cityName: String = "London"
//let pi: Double = 3.1415927
let number: Double = 3
print(number)
// There are three common cases for using type annotation:
// 1. When you create a constant or variable but haven’t yet assigned it a value.
let firstName: String
firstName = "Jhon"
// 2. When you create a constant or variable that could be infered as more than one type
// "j" wouble be in infered as a 'String', but we want a 'Character'
let middleInitial: Character = "j"
var remainingDistance: Double = 30
// 3. When you write your own type definition.
struct Car {
    var make: String
    var model: String
    var year: Int
}

// Required values


