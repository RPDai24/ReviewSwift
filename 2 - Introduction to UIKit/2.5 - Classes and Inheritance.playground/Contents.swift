import UIKit
import Darwin

class Person {
    let name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello there!")
    }
}

let person = Person("Ana")
person.sayHello()

// Inheritance
// Defining a base class
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        "Traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        
    }
}
let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

// Creat a Subclass
class Bicycle: Vehicle {
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")

// Override methods and properties
class Train: Vehicle {
    override func makeNoise() {
        print("Choo! Choo!")
    }
}
let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 30.0
car.gear = 3
print("Car: \(car.description)")

// Overide initializer
class Student: Person {
    var favouriteSubject: String
    init(name: String, favouriteSubject: String) {
        self.favouriteSubject = favouriteSubject
        super.init(name)
    }
}

// References
class Person2 {
    let name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var jack = Person2(name: "Jack", age: 24)
var myFriend = jack
jack.age += 1

print(jack.age)
print(myFriend.age)

struct Person_t {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var jack_t = Person_t(name: "Jack", age: 24)
var myFrient_t = jack_t
jack_t.age += 1
print(jack_t.age)
print(myFrient_t.age)

// Stable identity
