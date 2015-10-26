//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
    
}

print(sayHello("Anna"))

//prints "Hello, Anna"

print(sayHello("Brian"))

func sayHelloAgain(personName: String) ->String {
    
    return "Hello again," + personName + "!"
 }

 print(sayHelloAgain("Anna"))

func sayHelloWorld() -> String {
    
    return "hello, world"
    
}

    print(sayHelloWorld())

// prints "hello, world"

func sayHello(personName: String, alreadyGreeted: Bool) -> String {
    
    if alreadyGreeted {
        
        return sayHelloAgain(personName)
        
    } else {
        
        return sayHello(personName)
    }
    }

    print(sayHello("Tim", alreadyGreeted: true))

// prints "Hello again, Tim!"

func sayGoodbye(personName: String) {
    
    print("Goodbye, \(personName)!")
    
}

    sayGoodbye("Dave")

// prints "Goodbye, Dave!"

func printAndCount(stringToPrint: String) -> Int {
    
    print(stringToPrint)
    
    return stringToPrint.characters.count
}

func printWithoutCounting(stringToPrint: String) {
    
    printAndCount(stringToPrint)
}

    printAndCount("hello, world")

// prints "hello, world" and returns a value of 12

printWithoutCounting("hello, world")

// prints, "hello, world" but does not return a value

// minMax - Functions multiple return values which are called tuples

func minMax(array: [Int]) -> (min: Int, max: Int) {
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        
        if value < currentMin {
            
            currentMin = value
            
        } else if value > currentMax {
            
            currentMax = value
        }
        
    }

    return (currentMin, currentMax)
    
}
    
    let bounds = minMax([8, -6, 2, 109, 3, 71])
    
    print("min is \(bounds.min) and max is \(bounds.max)")
    
// prints "min is -6 ans max is 109"

    func minMax(array: [Int]) -> (min: Int, max: Int)? {
        
        if array.isEmpty { return nil }
        
        var currentMin = array[0]
        
        var currentMax = array[0]
        
        for value in array[1..<array.count] {
        
        if value < currentMin {
        
        currentMin = value
        
        } else if value > currentMax {
        
            currentMax = value
        }
        }
        

        return (currentMin, currentMax)

}

    if let bounds = minMax([8, -6, 2, 109, 3, 71]) {
        
        print("min is \(bounds.min) and max is \(bounds.max)")
    
}

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    
}

        someFunction(1, secondParameterName: 2)
        
func someFunction(externalParameterName
            localParameterName: Int) {
                
}

        func sayHello(to person: String, and anotherPerson: String) ->String {
            
            return "Hello \(person) and \(anotherPerson)!"
            
}

       print(sayHello(to: "Bill", and: "Ted"))

