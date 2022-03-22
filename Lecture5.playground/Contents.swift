// MARK: - Properties

class Man {
    private var friends: [String] = []
    
//    var count: Int = ..
    
//    func count() -> Int {
//        friends.count
//    }
    
    var count: Int {
        friends.count
    }
}

let man = Man()
print(man.count)


import Foundation
import Darwin

class Circle {
    var radius: Double = 5

    var area: Double {
        get {
            Double.pi * radius * radius
        }
        set {
            radius = sqrt(newValue / Double.pi)
        }
    }
}

let circ = Circle()
print(circ.radius)
print(circ.area)
circ.radius = 10
print(circ.radius)
print(circ.area)
circ.area = 78.53981633974483
print(circ.radius)
print(circ.area)

class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
            print(self.totalSteps)
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
            lastAdded = totalSteps - oldValue
        }
    }
    
    var lastAdded: Int = 0
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 5
stepCounter.totalSteps = 11

class Human {
    static var maxAge: Int = 120
    
    static func changeMaxAge(_ new: Int) {
        Human.maxAge = new
    }
}

Human.maxAge
Human.changeMaxAge(250)
Human.maxAge

class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}

class DataManager {
    lazy var importer: String = "abc"
    var data: [String] = []
    // the DataManager class would provide data management functionality here
    
    func foo() {
        importer = "cde"
    }
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property hasn't yet been created
manager.importer
manager.foo()
manager.importer

class A {
    // big
    
    init() {
        // biggggg
    }
}

class B {
    lazy var aClass: A = A()
    var name: String = "abc"
}

let b = B()

b.name

print(b.aClass)

@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}

// or longer version
struct SmallRectangle {
    private var _height = TwelveOrLess()
    private var _width = TwelveOrLess()
    var height: Int {
        get { return _height.wrappedValue }
        set { _height.wrappedValue = newValue }
    }
    var width: Int {
        get { return _width.wrappedValue }
        set { _width.wrappedValue = newValue }
    }
}

//// to use wrapped value:
//struct SmallRectangle {
//    @TwelveOrLess var height: Int
//    @TwelveOrLess var width: Int
//}
//
//var number = TwelveOrLess()
//number.wrappedValue = 13
//
//let width = number
//number.wrappedValue = 11
//let height = number
//
//let rect = SmallRectangle(height: height, width: width)
//
//rect.height
//rect.width

// MARK: - Protocols

protocol HumanBeing {
    var fullName: String { get }
    
    func say() -> String
    
    init(name: String)
}

struct Person: HumanBeing {
    func say() -> String {
        "Hello"
    }
    
    var fullName: String
    
    init(name: String) {
        fullName = name
    }
    
    var age: Int = 10
    
}

class Kid: HumanBeing {
    var fullName: String
    
    func say() -> String {
        "Minecraft!!"
    }
    
    required init(name: String) {
        fullName = name
    }
}

let john = Person(name: "John Appleseed")
let kid = Kid(name: "Tom")

kid.say()

let family: [HumanBeing] = [john, kid]

//(family[0] as! Person).age

//protocol SomeProtocol {
//    init()
//}

//class SomeSuperClass {
//    init() {
//        // initializer implementation goes here
//    }
//}

//class SomeSubClass: SomeSuperClass, SomeProtocol, CustomStringConvertible {
//    // "required" from SomeProtocol conformance; "override" from SomeSuperClass
//    required override init() {
//        // initializer implementation goes here
//    }
//
//}

protocol SomeProtocol {
    func doo()
}

struct SomeStruct {
    var doer: SomeProtocol
    func doSomething() {
        doer.doo()
    }
}

struct Doer: SomeProtocol {
    func doo() {
        print("I am doing it!")
    }
}

struct Doer2: SomeProtocol {
    func doo() {
        print("I am not doing it!")
    }
}

let someStruct = SomeStruct(doer: Doer2())

someStruct.doSomething()


class Dice {
    let sides: Int
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return 1
    }
}

protocol DiceGame {
    var dice: Dice { get }
    func play()
}
protocol DiceGameDelegate: AnyObject {
    func gameDidStart(_ game: DiceGame)
    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
    func gameDidEnd(_ game: DiceGame)
}
