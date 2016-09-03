//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: The compiler is complaining because the class Animal has no initializers. Write an init method for the Animal class and quiet this error. Include a mechanism to initialize the length of the Animal's tail using the Tail struct provided.
struct Tail {
    let lengthInCm: Double
}

class Animal {
    var species: String = ""
    let tail: Tail
    
    init (species : String, tailLength : Double) {
        self.species = species
        self.tail = Tail.init(lengthInCm: tailLength)
    }
}
//: __1b.__
//: Instantiate and initialize a few different Animals.
let animal = Animal.init(species: "Lion", tailLength: 25)
print(animal)
//: __Problem 2__
//:
//: Below are the beginnings of the Peach class.
class Peach {
    let variety: String
    
    // Softness is rated on a scale from 1 to 5, with 5 being the softest
    var softness: Int
    static let varieties = ["Peach 1", "Peach 2"]
    
    init(variety: String, softness: Int) {
        self.variety = variety
        self.softness = softness
    }
    
    func ripen () -> String {
        if self.softness < 5 {
            self.softness += 1
        }
        if self.softness == 5 {
            return "This peach is as ripe as it can be!"
        } else {
            return "This peach is still not ripe"
        }
    }
}
//: __2a.__
//: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
//:
//: __2b.__
//: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
//:
//: __2c.__
//: Create an instance of the Peach class and call the method ripen().
let peach = Peach.init(variety: "Some", softness: 4)
print(peach.ripen())
//: __Problem 3__
//:
//: __3a.__
//:Add the computed property, "cuddlability", to the class, FluffyDog. Cuddlability should be computed based on the values of the stored properties, fluffiness and droolFactor.
//var theFluffiestDog = UIImage(named:"fluffyDog")!
class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    var cuddlability : Float {
        get {
            let value = Float(fluffiness) / Float(droolFactor)
            return value
        }
    }
    init(name: String, fluffiness: Int, droolFactor: Int) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
    }
    
    func chase(wheeledVehicle: String)-> String {
        return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
    }
}
//: __3b.__
//: Instantiate and initialize an instance of the class, FluffyDog. Use it to call the method, chase().
let doggy = FluffyDog.init(name: "Pluto", fluffiness: 10, droolFactor: 3)
print(doggy.cuddlability)
print(doggy.chase("Toyota"))
//: __Problem 4__
//:
//: __4a.__
//: Write an instance method, bark(), that returns a different string based on the value of the stored property, size.
enum Size: Int {
    case Small
    case Medium
    case Large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
    
    func bark() -> String {
        if self.size == .Small {
            return "woof!"
        } else if self.size == .Medium {
            return "woof woof!"
        } else {
            return "WOOF WOOF!"
        }
    }
    
    class func speak (size: Size) -> String {
        if size == .Small {
            return "woof!"
        } else if size == .Medium {
            return "woof woof!"
        } else {
            return "WOOF WOOF!"
        }
    }
}
//: __4b.__
//: Create an instance of ChattyDog and use it to call the method, bark().
let doggydog = ChattyDog.init(name: "Triunfo", breed: "Golden", size: .Medium)
print(doggydog.bark())
//: __4c.__
//: Rewrite the method, bark(), as a type method and rename it speak(). Call your type method to test it out.
print(ChattyDog.speak(.Large))
//: __Problem 5__
//:
//:__5a.__
//: Write an initialization method for the House class below.
enum Quality {
    case Poor, Fair, Good, Excellent
}

enum NaturalDisaster {
    case Earthquake
    case Wildfire
    case Hurricane
}

class House {
    var numberOfBedrooms: Int = 0
    let location: Quality
    
    init (location : Quality) {
        self.location = location
    }
 
    var worthyOfAnOffer : Bool {
        get {
            if (self.location == .Good || self.location == .Excellent) && numberOfBedrooms > 2 {
                return true
            } else {
                return false
            }
        }
    }
    
    func willStayStanding(naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .Earthquake:
            return true
        case .Wildfire:
            return true
        case .Hurricane:
            return false
        }
    }
}

//: __5b.__
//: Create an instance of the House class and use it to call the method, willStayStanding().  This method takes in a parameter of type NaturalDisaster and return a Bool indicating whether the house will stay standing in a given natural disaster.
let house = House.init(location: .Good)
print(house.worthyOfAnOffer)
//: __5c.__
//: Add a computed property called, "worthyOfAnOffer". This property should be a Bool, whose return value is dependent upon some combination of the stored properties, numberOfBedrooms and location.






