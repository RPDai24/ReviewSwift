import UIKit
// if else statement
var finishPosition = 2
if finishPosition == 1 {
    print("Congratulations, you won the gold metal!")
} else if finishPosition == 2 {
    print(("You came in second place, you won the silver metal!"))
} else {
    print("You did not win a metal or silver metal!")
}

var isPlugedIn = false
var hasBatteryPower = true
if isPlugedIn || hasBatteryPower {
    print("You can use your laptop")
} else {
    print("😱")
}

// Switch statement
let numberOfWheels = 9
switch numberOfWheels {
case 0:
    print("Missing something?")
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
case 3:
    print("Tricycle")
case 4:
    print("Quadcycle")
default:
    print("That's a lot of wheels")
}

let character = "a"
switch character {
case "a", "e", "i", "o", "u":
    print("This character is a vowel.")
default:
    print("This character is a consonant.")
}

let distance = 99
switch distance {
case 0...9:
    print("Your destination is close.")
case 10...99:
    print("Your destination is a medium distance from here.")
case 100...999:
    print("Your destination is far from here.")
default:
    print("Are you sure you want to travel this far?")
}

// Ternary conditional operator
var largest: Int
let a = 15
let b = 10
largest = a > b ? a : b


max(a, b)

