// MARK: - Structures

struct Book {
    let title: String
    let year: UInt
    
    var bookholder: String? = nil
}

var warAndPeace: Book = Book(title: "War and Peace", year: 1890)

warAndPeace.bookholder = "Peter"
warAndPeace.bookholder = nil
warAndPeace.bookholder = "Tom"

struct Library {
    private var books: [Book] = []
    
    func printInfo(str: String) {
        print(str)
        for book in books {
            print(book.title)
        }
    }
    
    mutating func add(book: Book) {
        if book.title == "" {
            return
        }
        books.append(book)
    }
}

var library = Library()

//library.printInfo(str: "Books:")

library.add(book: warAndPeace)

//library.printInfo(str: "Books:")


// MARK: - Classes

class Creator {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
//    init() {
//        name = "Tom"
//    }
}

class Note {
    var text: String
    var creator: Creator
    
    init(text: String, creator: Creator) {
        self.text = text
        self.creator = creator
    }
    
    func printNote() {
        print(text)
    }
}

var tom = Creator("Tom")

var note = Note(text: "Test", creator: tom)
note.printNote()

tom.name

note.creator.name = "Peter"

tom.name

class A {
    var value: Int = 5
    
    deinit {
        print("goodbye, \(value)!")
    }
}

for _ in 0 ... 5 {
    let _ = A()
    print("hello, a!")
}

let a = A()
a.value


class Tmp {
    
}

class Person: Tmp {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func hello() -> String {
        "Hello, I am \(name)."
    }
    
    func age() -> Int {
        Int.random(in: 10 ... 20)
    }
}

class Student: Person {
    var grade: Int
    
    init(in grade: Int) {
        self.grade = grade
        super.init("Student in \(grade)")
    }
    
    override func hello() -> String {
        super.hello() + " I am in \(grade) grade!"
    }
}

var student = Student(in: 5)

student.hello()

student.age()

// MARK: - Homework


