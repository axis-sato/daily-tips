interface Human {
    val name: String
    fun run()
    fun eat()
    fun sleep()
}

class Soldier(override val name: String): Human {
    override fun run() = println("running soldier $name")
    override fun eat() = println("eating soldier $name")
    override fun sleep() = println("sleeping soldier $name")
}

class Civilian(override val name: String): Human {
    override fun run() = println("running soldier $name")
    override fun eat() = println("eating soldier $name")
    override fun sleep() = println("sleeping soldier $name")
}

enum class HumanType {
    Soldier, Civilian
}

object HumanFactory {
    fun getHuman(type: HumanType, name: String): Human = when (type) {
        HumanType.Soldier -> Soldier(name = name)
        HumanType.Civilian -> Civilian(name = name)
    }
}

val soldier = HumanFactory.getHuman(HumanType.Soldier, "Jay")
soldier.sleep()
val civilian = HumanFactory.getHuman(HumanType.Civilian, "Saman")
civilian.run()
