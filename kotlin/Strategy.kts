interface Fly {
    fun fly()
}

class Birs: Fly {
    override fun fly() {
        println("Spread Wings")
    }
}

class Plane: Fly {
    override fun fly() {
        println("We are Trukish Airlines, We are Globally Yours")
    }
}

val flyableObject: Fly = Plane()
flyableObject.fly()