import Foundation

protocol Jumping {
    func jump()
}

class Cat: Jumping {
    func jump() {
        print("Pounces")
    }
}


// MARK: ADAPTEE
class Frog {
    func leap() {
        print("Leaps")
    }
}

// MARK: ADAPTER
class FrogAdapter: Jumping {
    private let frog = Frog()
    func jump() {
        frog.leap()
    }
}

let cat = Cat()
let frog = FrogAdapter()
var animals: [Jumping] = [cat, frog]

for animal in animals {
    animal.jump()
}

