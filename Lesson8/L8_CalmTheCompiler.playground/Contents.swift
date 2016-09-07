//: ### Calm the compiler
// Problem 1
protocol DirtyDeeds {
    func cheat()
    func steal()
}

class Minion: DirtyDeeds, Souschef {
    var name: String
    
    init(name:String) {
        self.name =  name
    }
    
    func cheat () {
        print("I am cheating")
    }
    
    func steal () {
        print("I am stealing")
    }
    
    func chop(vegetable: String) -> String {
        return "I am chopping \(vegetable)"
    }
    
    func rinse(vegetable: String) -> String {
        return "I am rinsing \(vegetable) or something"
    }

}

// Problem 2
class DinnerCrew {
    var members: [Souschef]
    
    init(members: [Souschef]) {
        self.members = members
    }
}

protocol Souschef {
    func chop(vegetable: String) -> String
    func rinse(vegetable:String) -> String
}

var deviousDinnerCrew = DinnerCrew(members: [Minion]())

// Problem 3
protocol DogWalker {
    func throwBall(numberOfTimes:Int) -> Int
    func rubBelly()
}

class Neighbor: DogWalker {
    
    func throwBall(numberOfTimes:Int) -> Int {
        var count = 0
        while count < numberOfTimes {
            print("Go get it!")
            count += 1
        }
        return count
    }
    
    func rubBelly() {
        print("Rub rub")
    }
}
