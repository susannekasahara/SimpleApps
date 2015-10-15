//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let b = 10

var a = 5

a = b

// a is now equal to 10 and shows the top to bottom progression of value

let (x, y) = (1,2)

// x is equal to 1, and y is equal to 2

if x = y {
    
    //this is not valid, because x = y does not return an value - a value can not equal another value.
}


1 + 2 // equals 3

5 - 3 // equals 2

2 * 3 // equals 6

10.0 / 2.5 // equals 4.0

//all arithmetic operations are true


"hello, " + "world" // equals "hello, world" string addition operator

//remainder's below

9 % 4 //equals 1

-9 % 4 // equals -1

8 % 2.5 // equals 0.5

var i = 0

++i // i equals 1 because it is the addition of character 0 + 1

var a = 0

let b = ++a

// a and b are now both equal 1

let c = a++

// a is now equal to 2, but c has been set to the pre-increment value of 1 (shows how characters count from 0)

let three = 3

let minusThree = -three // minusThree equals -3

let plusThree = -minusThree  //plusThree equals 3, or "minus minus three"

let minusSix = -6

/// highlighting the power of 0 "zero" in code

var a = 1

a += 2

// a is now equal to 3 is showing how one operator can perform 2 tasks

// comparison operators

1 == 1 // true, because 1 is equal to 1
2 != 1 // true, because 2 is not equal to 1

2 > 1 // true, because 2 is greater than 1

1 < 2 // true, because 1 is less than 2

1 >= 1 // true, because 1 is greater than or equal to 1

2 <= // false, because 2 is not less than or equal to 1

let name = "world"

if name == "world" {
    
    print("hello world")
    
} else {
    
    print("I'm sorry\(name), but I don't recognize you")
}

// shows difference between = and == one is setting a value and the other is checking the value

if question {
    
    answer1
    
} else {
    
    answer2
    
    // conditional operators showing what is true and reads the first if true and if not reads the second
}

let contentHeight = 40

let hasHeader = true

let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// rowHeight is equal to 90. Shows how operator chooses first value if true

let contentHeight = 40

let