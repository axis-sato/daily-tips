protocol Human {
    var name: String { get set }
    func run()
    func eat()
    func sleep()
}

class Soldier: Human {
    var name: String

    init(name: String) {
        self.name = name
    }

    func run() {
        print("running soldier \(name)")
    }
    
    func eat() {
        print("eating soldier \(name)")
    }
    
    func sleep() {
        print("sleeping soldier \(name)")
    }
}

class Civilian: Human {
    var name: String

    init(name: String) {
        self.name = name
    }

    func run() {
        print("running civilian \(name)")
    }
    
    func eat() {
        print("eating civilian \(name)")
    }
    
    func sleep() {
        print("sleeping civilian \(name)")
    }
}

enum HumanType {
    case soldier, civilian
}

class HumanFactory {
    static let shared = HumanFactory()
    
    func getFuman(type: HumanType, name: String) -> Human {
        switch type {
        case .soldier:
            return Soldier(name: name)
        default:
            return Civilian(name: name)
        }
    }
}

let soldier = HumanFactory.shared.getFuman(type: .soldier, name: "Jay")
soldier.sleep()
let civilian = HumanFactory.shared.getFuman(type: .civilian, name: "Saman")
soldier.run()
