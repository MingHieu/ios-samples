import UIKit

// Function and Parameters
func sum(x: Int, y: Int) -> Int {
    return x + y
}
sum(x: 4, y: 5)

func isEven(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }
    return false
}
isEven(number: 99)

// Lambda Function
var lambdaSumFunc: (Int, Int) -> Int = { x, y in
    return x + y
}

print(lambdaSumFunc(6, 11))
