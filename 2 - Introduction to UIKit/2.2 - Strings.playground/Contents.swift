import UIKit
import Darwin

//let greeting = "Hello"
var otherGreeting = "Salutations"
let joke = """
    Q: Why did the chicken cross the road?
    A: To get to other side!
"""
print(joke)
// align with “”“.  the closing and opening quotations
let greeting = """
    It is a tranditional to print "Hello Word"
    """
print(greeting)
// escape character: the backslash \
let greeting2 = "\tIt is a tranditional to print \"Hello World!\""
print(greeting2)
/*
 Double quote: \"
 Single quote: \'
 Backslash: \\
 Tab: \t
 Newline: \n
 */
var myString = ""
if myString.isEmpty {
    print("The string is empty.")
}
// let a = "a" // String
// let b: Character = "b" // Character

// Concatenation and Interpolation
let string1 = "Hello"
let string2 = ", World!"
myString = string1 + string2
myString += " Hello!"
// parentheses
let name = "Risk"
let age = 30
print("\(name) is \(age) years old.")

// the expressions will always be evaluated first
let a = 4
let b = 5
print("if a is \(a) and b is \(b), then a + b equals \(a + b)")

let listName = "Shopping"
var items = 14
let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
myLabel.text = "There are \(items) items on you \(listName) list"
func setLabel(_ label: UILabel, _ text: String) {
    label.text = text
}
setLabel(myLabel, "There are \(items) items on you \(listName) list")

// String equality and comparison
let month = "January"
let otherMonth = "January"
let lowercaseMonth = "january"
if month == otherMonth {
    print("They are the same.")
}
if month != lowercaseMonth {
    print("They are not the same.")
}

let name2 = "Johnny Appleseed"
if name2.lowercased() == "johnny aPPleseed".lowercased() {
    print("The two names are equal.")
}

let greeting3 = "Hello world!"
print(greeting3.hasPrefix("Hello"))
print(greeting3.hasSuffix("World!"))
print(greeting3.hasSuffix("world!"))

let greeting4 = "Hi Rick, my name is Amy."
if greeting4.contains("my name is") {
    print("Making an introduction")
}

let name3 = "Ryan Mears"
let count = name3.count
let newPassword = "1234"
if newPassword.count < 8 {
    print("This password is too short. Passwords should have at least eight characters")
}

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel.")
default:
    print("\(someCharacter) is not a vowel.")
}


