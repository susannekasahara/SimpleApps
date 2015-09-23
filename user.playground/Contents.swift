//: Playground - noun: a place where people can play

import UIKit

var string = "Hello, playground"


    

enum favoriteColor: String {
    
    case Red =  "red"
    case Blue = "blue"
    case green = "green"
    
}

class register {
    
    var name: String = ""
    
    var password: String = ""
    
    var email: String = ""
    
    func signUp(name:String, password: String, email: String, favoritecolor: favoriteColor?) {
        
    }
    
    func logIn(name: String, password: String) {
        
    }

}



// optionals

var color: String?

color = "red"

print(color == nil)

if color != nil {
    
    print(color)
}

if let c = color {
    
    print ("the color is " + c)
    
    
    //Joe's way
    
    
}

enum FavoriteColor : String {
    
    case Black
    case Magenta
    case Blue
    case Red
    case Yellow
    
}

class User {
    
    var name: String!
    var email: String!
    var password: String!
    var favoriteColor: FavoriteColor?
    
    func sayHelloto (name: String) {
    
        print("\(self.name) say hi to \(name)")
    }
    func register(name: String, email: String, password: String)
    {
        
    }
        self.name = name
        self.email = email
        self.password = password
}




