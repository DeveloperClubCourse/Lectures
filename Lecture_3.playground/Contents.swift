//let roullete: () -> (String, Int) = {
//    (Bool.random() ? "Black" : "Red", Int.random(in: 1 ... 20))
//}
//
//var count = 1
//
//while roullete() != ("Red", 13) /* && blackjack() != 21 */ {
//    count += 1
//}
//
//print(count)

// Mark: - Collections

let aStudent = "A"
let bStudent = "B"
let cStudent = "C"

//let array: [String] = []
//let array: Array<String>()
//let array = ["A", "B", "C"]
//let array = [String]() // = []

//for elem in array {
//    print(elem, terminator: "-&&&-")
//}


var a = [1, 2, 3]
a.append(4)
a.insert(0, at: 0)
a.insert(5, at: 3)
a.remove(at: 3)
a

let b = [5, 6, 7, 8]

a.append(contentsOf: b)

a.removeFirst()
a.removeFirst(2)

a.removeLast()
a.removeLast(1)

a.removeAll()
for i in 0 ... 9 {
    a.append(Int.random(in: 0 ... 100))
}
a

for elem in a {
    if elem > 50 {
        print(elem)
    }
}

for i in 0 ..< a.count {
    if a[i] > 50 {
        print(i)
    }
}

for (i, elem) in a.enumerated() {
    if a[i] > 50 {
        print("a[\(i)] = \(elem)")
    }
}

for i in 0 ..< a.count {
    print(a[i] + 1)
}

a
print(a[3 ... 6])
[a[3], a[5], a[7]]

let array = [1, 2, 3, 4, 5]
array.isEmpty // Bool - true, if array == []
array.first // Element? - first element of array or nil if array is empty
array.last // Element? - last element of array or nil if array is empty
array.count // Int - number of elements in the array
array.enumerated // Array<(Int, Elemet)> - pairs of (index, element)
array.contains(2) // true, if 2 is in the array, otherwise false
array.reduce(0, +) // returns the sum of the elements
array.reduce(1, *) // returns the product of the elements
//array.map { <closure> }
//array.forEach { <closure> }

let arrayStrings = array.map {
    String($0)
}

array.forEach { number in
    for _ in 0 ..< number {
        print("a", terminator: "")
    }
    print()
}

array.forEach {
    for _ in 0 ..< $0 {
        print("a", terminator: "")
    }
    print()
}

// Sets

var s = Set([1, 2, 3])

var t = Set([3, 4, 5, 1, 2])

t.isSuperset(of: s)
s.isSubset(of: t)
t.isSubset(of: s)

t.symmetricDifference(s)

// Dictionary

var dict: Dictionary<String, Int> = [
    "apple": 0,
    "banana": 5,
    "keyboard": -4
]

dict["apple"]
dict["keyboard"]

dict.contains {
    $0.count < 7 && $1 > 0
}

dict.removeValue(forKey: "apple")

print(dict)

// MARK: - Enumerations

//enum CardSuit {
//    case hearts, diamonds
//    case clubs, spades
//}

enum Login {
    case email(String)
    case id(Int)
    case none
    case new
}
var email = Login.email("heartsker@gmail.com")
let id = Login.id(1703)

email = .new
email = .id(123123)

switch email {
case let .email(mail):
    print("email is \(mail)")
case let .id(idx):
    print("id is \(idx)")
default:
    print("no user registered")
}

enum CardSuit: String {
    case hearts = "♥️"
    case diamonds = "♦️"
    case spades = "♠️"
    case clubs = "♣️"
}

let card = CardSuit.spades
print(card.rawValue)

enum Days: String {
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}
// Days.Monday.rawValue == "Monday"
Days.Friday.rawValue

enum Numbers: Int {
    case one, two, three
}
// Numbers.two.rawValue == 1 (because .one is 0)

Numbers.two.rawValue

enum Digits: Int {
    case five = 5, six, seven
}
// Digits.seven.rawValue == 7 (because numbering continues after 5)
