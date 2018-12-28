protocol Fly {
    func fly()
}

class Bird: Fly {
    func fly() {
        print("Spread Wings")
    }
}

class Plane: Fly {
    func fly() {
        print("We are Turkish Airlines, We are Globally Yours")
    }
}

let flyableObject: Fly = Plane()
flyableObject.fly()
