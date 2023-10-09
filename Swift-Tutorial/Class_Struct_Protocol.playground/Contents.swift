import UIKit

// Class
class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func displayName() {
        print("Name: " + self.name)
    }
}

class Rabbit: Animal {
    var food: String

    init(name: String, food: String) {
        self.food = food
        super.init(name: name)
    }

    override func displayName() {
        super.displayName()
        print("Override")
    }
}

let rabbit = Rabbit(name: "Tommy", food: "Carrot")
rabbit.displayName()

// Struct
struct Car {
    var model: String

    init(model: String) {
        self.model = model
    }
}

let car = Car(model: "BMW")

// Class : extend, reference types
// Struct : can't extend, value types

// Protocol : like an interface in other language
protocol PeopleProtocol {
    var name: String { get }
    var age: Int { get set }
    func greeting()
}

class People: PeopleProtocol {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func greeting() {
        print("Hello " + self.name)
    }
}

var hieu: PeopleProtocol = People(name: "Hieu", age: 20)
hieu.name = "oK"
print(hieu.name)
