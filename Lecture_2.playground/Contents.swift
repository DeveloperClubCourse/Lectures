// MARK: - Functions

//      |-----|
//  x ->|  ?  | --> y
//      |-----|


func foo(x: Int) -> Int {
    x * x
}

func foo2(a: String, b: Int) -> String {
    a + String(b)
}

foo2(a: "hello", b: 13)

func foo3() -> Int {
    Int.random(in: 0 ... 100)
}

foo3()


func foo4(a: Int) {
    print(a + 1)
}

foo4(a: 10)

func increment(number t: Int) -> Int {
    t + 1
}

increment(number: 1)

func printTwo(_ a: Int, _ b: Int) {
    print(a)
    print(b)
}

printTwo(26, 13)


func printTwo2(a: Int, b: Int) {
    print(a)
    print(b)
}

let tmp = printTwo2

printTwo2(a: 26, b: 13)

func test() -> Void {
    print("test")
}

let varTestFunc: Void = test()
print(varTestFunc)

//varTestFunc()
test()

//(Int, Int) -> ()

// MARK: - Closures

//{ (<parameter1>, <parameter2>, ...) -> <return type> in
//    <code>
//    return <result>
//}

let closure = { (a: Int, b: Int) -> Int in
    a * b
}

closure(5, 4)

let closure1: (String, Int) -> Bool =
{ (s: String, number: Int) -> Bool in
    return s == String(number)
}

closure1("53", 54)
closure1("53", 53)

let closure2: (String, Int) -> Bool = {
    $0 == String($1)
}

func foo_closure2(_ a: String, _ b: Int) -> Bool {
    a == String(b)
}

closure2("53", 54)
closure2("53", 53)

let pr = { print($0) }

pr("hello")

// zero-index
//"hello worl"
// 0123456789

// escaping closures


var closures: [(Int)->Int] = []

func escape( _ closure: @escaping (Int) -> (Int)) {
    closures.append(closure)
}

var closure_escape: (Int) -> Int = {
    $0 + 1
}

escape(closure_escape)

print(closures)


// how to return nil?

func foo_nil() -> Int? {
    return nil
}
