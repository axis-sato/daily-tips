interface Jumping {
    fun jump()
}

class Cat: Jumping {
    override fun jump() = println("Pounces")
}

// ADAPTEE
class Frog {
    fun leap() = println("Leaps")
}

// ADAPTER
class FrogAdapter(val frog: Frog = Frog()): Jumping {
    override fun jump() = frog.leap()
}

val cat = Cat()
val frog = FrogAdapter()
val animals = arrayOf(cat, frog)

for (animal in animals) {
    println(animal.jump())
}
