import UIKit

// if else
let x = 10
if x % 2 == 0 {
    print("X is even")
} else {
    print("X is odd")
}

// guard else
func checkEven (num: Int) {
    guard num % 2 == 0 else {
        print("Number is odd")
        return
    }
    print("Number is even")
}
checkEven(num: 9)

func login(username: String?, password: String?) {
    guard let usernameValue = username, usernameValue.count > 6 else {
        print("Username is not valid")
        return
    }
    guard let passwordValue = password else {
        print("Password is not valid")
        return
    }
    print("Username: " + usernameValue)
    print("Password: " + passwordValue)

}
login(username: "hieubeo0612", password: "123456")
