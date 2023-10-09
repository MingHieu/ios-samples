import UIKit

// Types
var x = 3 // int
var y = 3.5 // float, double
var name = "Joe" // string
type(of: name) // check type of variable

var lastName: String = "last" // declare type

let age: Int = 22

let price: Double = 1.99

var isComplete: Bool = false

var arr: Array = [1, 2, 3, 4, 5, 6, 7, 8]
print(arr[0])

var dict: Dictionary<AnyHashable, Any> = [
    "1": 10,
    "2": "OK",
    3: "T"
]
print(dict[3]!)
print(dict["2"]!)
