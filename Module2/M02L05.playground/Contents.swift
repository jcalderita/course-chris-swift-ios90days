import Foundation

let arrayHeroes = ["Superman", "Batman", "Aquaman", "Wonder woman"]

class Person {
    var name: String = ""
    
    func introduceMyself() {
        print("Hi, my name is \(name)")
    }
}

class Chef: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Chef")
    }
}

class Poet: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Poet")
    }
}

class Astronaut: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Astronaut")
    }
}


for _ in 1...10 {
    let whichClass = Int.random(in: 1...3)
    var person = Person()
    
    if whichClass == 1 {
        person = Chef()
    } else if whichClass == 2 {
        person = Poet()
    } else {
        person = Astronaut()
    }
    
    person.name = arrayHeroes[Int.random(in: 0...3)]
    person.introduceMyself()
    
}
