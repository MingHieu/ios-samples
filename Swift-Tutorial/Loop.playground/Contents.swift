import UIKit

// Loops
let numbers = [1, 2, 3, 4, 5, 6, 7, 8]
for i in 0...numbers.count - 1 {
    print(numbers[i], terminator: " ")
}

for x in numbers {
    print(x, terminator: " ")
}

var i = 0
while i < numbers.count {
    print(numbers[i], terminator: " ")
    i += 1
}

