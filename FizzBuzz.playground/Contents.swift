//: Playground - noun: a place where people can play

import UIKit

for itemnumber in 1...100 {
    
    if (itemnumber % 3 == 0) && (itemnumber % 5 == 0) {
    
    print("FIZZBUZZ")
        
    } else if (itemnumber % 3 == 0) {
        
        print("fizz")
        
    } else if (itemnumber % 5 == 0) {
        
        print("Buzz")
        
    } else {
        
        print(itemnumber)
    }
    }

    

