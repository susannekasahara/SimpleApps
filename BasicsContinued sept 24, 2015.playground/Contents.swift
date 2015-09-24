//: Playground - noun: a place where people can play

import UIKit

//////////
/////////  Struct - makes copy of first value and puts in new address. Name 1 and name 2 are pointing to 2 different memory point. NS=Next Step and will be working with a class. Jo is a swift string struct. Structs can not share


var str = "Hello, playground"

var name = "Jo"

unsafeAddressOf(name)

var name2 = name

unsafeAddressOf(name2)

name2.appendContentsOf("e")

name

//////////
////////// Class - NSString is a
//////////

//var name3: NSString = "Jo"

var name3: NSMutableString = "Jo"

unsafeAddressOf(name3)

var name4 = name3

unsafeAddressOf(name4)

name4.appendString("ey")
name3 = "jo2"
name4










