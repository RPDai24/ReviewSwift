import UIKit

struct Person {
    var name: String
    func sayHello() {
        print("Hello, there! My name is \(name).")
    }
}
let firstPerson = Person(name: "Ana")
print(firstPerson.name)
firstPerson.sayHello()

// Instances
struct Car {
    var make: String
    var model: String
    var year: Int
    var topSpeed: Int
    
    func startEngine() {
        print("The \(year) \(make) \(model) 's Engine has started.")
    }

    func drive() {
        print("The \(year) \(make) \(model) is moving.")
    }
    
    func park() {
        print("The \(year) \(make) \(model) is parked.")
    }
}

let firstCar = Car(make: "Hondo", model: "civi", year: 2010, topSpeed: 100)
let secondCar = Car(make: "Ford", model: "Fusion", year: 2013, topSpeed: 120)
firstCar.startEngine()
secondCar.drive()

// Default values
/*
struct Odometer {
    var count: Int = 0
}
//let odometer = Odometer()
let odometer = Odometer(count: 4700)
print(odometer.count)
 */

// Memberwise initializers
struct BankAccount {
    var accountNumber: Int
    var balance: Double = 0
}
var newAccount = BankAccount(accountNumber: 1234)
var transferedAccount = BankAccount(accountNumber: 5678, balance: 1200)

// Custom initializers
//struct Temperature {
//    var celsius: Double
//
//    init(celsius: Double) {
//        self.celsius = celsius
//    }
//
//    init(fahrenheit: Double) {
//        celsius = (fahrenheit - 32) / 1.8
//    }
//
//    init(kelvin: Double) {
//        celsius = kelvin - 273.15
//    }
//
//    init() {
//        celsius = 0
//    }
//}
//let currentTemperature = Temperature(celsius: 18.5)
//let boiling = Temperature(fahrenheit: 212.0)
//let absoluteZero = Temperature(kelvin: 0.0)
//let freezing = Temperature()
//print(currentTemperature.celsius)
//print(boiling.celsius)
//print(absoluteZero.celsius)
//print(freezing.celsius)

// Intance Methods
struct Size {
    var width: Double
    var height: Double
    func area() -> Double {
        width * height
    }
}

let someSize = Size(width: 10.0, height: 30.0)
someSize.area()

// Mutating Methods
struct Odometer {
    var count: Int = 0
    
    mutating func increment() {
        count += 1
    }
    
    mutating func increment(by amount: Int) {
        count += amount
    }
    
    mutating func inset() {
        count = 0
    }
}
var odometer = Odometer()
odometer.increment()
odometer.increment(by: 15)
odometer.inset()

// Computed Properties
//struct Temperature {
//    var celsius: Double
//    var fahrenheit: Double {
//        celsius * 1.8 + 32
//    }
//    var kelvin: Double {
//        celsius + 273.15
//    }
//}
//let currentTemperature = Temperature(celsius: 0.0)
//print(currentTemperature.fahrenheit)
//print(currentTemperature.kelvin)

// Property Observers
struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 40
stepCounter.totalSteps = 100


// Type properties and methods
struct Temperature {
    static var boilingPoint = 100
}
let boilingPoint = Temperature.boilingPoint
let smallerNumber = Double.minimum(100.0, 1000.0)


// Copying  “If you assign a structure to a variable or pass an instance as a parameter into a function, the values are copied.”
var someSize2 = Size(width: 100, height: 200)
var annotherSize = someSize2
someSize2.width = 500
print(someSize2.width)
print(annotherSize.width)

// self

// Variable Properties
