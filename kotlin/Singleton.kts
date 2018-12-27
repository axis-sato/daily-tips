object NetwordManager {
    var counter = 0

    fun increment() {
        counter++
    }
}

val manager = NetwordManager
println(manager.counter) // 0
manager.increment()
val manager2 = NetwordManager
println(manager2.counter) // 1
