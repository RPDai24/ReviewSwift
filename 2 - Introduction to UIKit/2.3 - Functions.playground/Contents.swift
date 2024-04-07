import UIKit
/*
 Defining a function
 func functionName(parameter) -> ReturnType {
     
 }
 */
func displayPi() {
    print("3.1415926")
}
displayPi()

// Parameters
func triple(value: Int) {
    let result = value * 3
    print("If you multiply by \(value), you will get the result \(result)")
}
triple(value: 10)

func multiply(firstNumber: Int, secondNumber: Int) {
    let result = firstNumber * secondNumber
    print("The result is \(result)")
}

// Argument Labels
func sayHello(to person: String, and anotherPerson: String) {
    print("Hello \(person) and \(anotherPerson)")
}
sayHello(to: "Miles", and: "Riley")

func add(_ firstNumber: Int, to secondNumber: Int) -> Int{
    return firstNumber + secondNumber
}
add(10, to: 16)

// Default Parameter Values
func display(teamName: String, score: Int = 0) {
    print("\(teamName): \(score)")
}
display(teamName: "Lake", score: 100)
display(teamName: "Lake")

func displayTeam(_ teamName: String, _ homeTown: String, teamCaptain: String = "TBA", score: Int = 0) {
    //
}
displayTeam("Dogger", "LA")
