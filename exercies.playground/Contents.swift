import UIKit

// classes in swift
//class Person {
//    var name: String
//    var secondName: String
//    var age: Int
//    var location: String
//    var job: Bool
//    init(name: String, secondName: String, age: Int, location: String, job: Bool) {
//        self.name = name
//        self.secondName = secondName
//        self.age = age
//        self.location = location
//        self.job = job
//    }
//}
//
//class citizens {
//    var citizenName: String
//    var citizenSurname:String
//    var citizenId: Int
//    var citizenJob: Bool
//    var citizenIsMarried: Bool
//    var citizenHasChilderen: Bool
//    init(citizenName: String, citizenSurname: String, citizenId: Int, citizenJob: Bool, citizenIsMarried: Bool, citizenHasChilderen: Bool) {
//        self.citizenName = citizenName
//        self.citizenSurname = citizenSurname
//        self.citizenId = citizenId
//        self.citizenJob = citizenJob
//        self.citizenIsMarried = citizenIsMarried
//        self.citizenHasChilderen = citizenHasChilderen
//    }
//}
//


//A class can inherit methods, properties, and other characteristics from another class.
//class Vehicle {
//    var currentSpeed = 0.0
//    var description: String {
//        return "traveling at \(currentSpeed) miles per hour"
//    }
//    func makeNoise() {
//        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
//    }
//}

//print("Vehicle: \(someVehicle.description)")
// Vehicle: traveling at 0.0 miles per hour

//Subclassing
//class SomeSubclass: SomeSuperclass {
    // subclass definition goes here
//}
//class Bicycle: Vehicle {
//    var hasBasket = false
//}

//let info = Person(name: "Safar", secondName: "Safarov", age: 18, location: "China", job: true)
//print(info)
//
//struct Human {
//  var name: String
//    var secondName: String
//    var age: Int
//    var location: String
//    var job: Bool
//    init(name: String, secondName: String, age: Int, location: String, job: Bool) {
//        self.name = name
//        self.secondName = secondName
//        self.age = age
//        self.location = location
//        self.job = job
//    }
//}
//
//let info2 = Human(name: "Safar", secondName: "Safarov", age: 19, location: "China", job: true)
//print(info2)
//

// Optional Chaining

//*Optional chaining* is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil. Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil.
//
//> Optional chaining in Swift is similar to messaging nil in Objective-C, but in a way that works for any type, and that can be checked for success or failure.


// Optional Chaining as an Alternative to Forced Unwrapping

//You specify optional chaining by placing a question mark (?) after optional value on which you wish to call a property, method or subscript if the optional is non-nil. This is very similar to placing an exclamation point(!) after an optional value to force the unwrapping of its value. The main difference is that optional chaining fails gracefully when the optional is nil, whereas forced unwrapping triggers a runtime error when the optional is nil.
//
//To reflect the fact that optional chaining can be called on a nil value, the result of an optional chaining call is always an optional value, even if the property, method, or subscript you are querying returns a non-optional value. You can use this optional return value to check whether the optional chaining call was successful (the returned optional contains a value), or did not succeed due to a nil value in the chain (the returned optional value is nil).
//
//Specifically, the result of an optional chaining call is of the same type as the expected return value, but wrapped in an optional. A property that normally returns an Int will return an Int? when accessed through optional chaining.
//
//The next several code snippets demonstrate how optional chaining differs from forced unwrapping and enables you to check for success.
class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIndentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}

let john = Person()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) rooms(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
// Print "Unable to retrieve the number of rooms.

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress

func createAddress() -> Address {
    print("Function was called.")
    let someAddress = Address()
    someAddress.buildingNumber = "29"
    someAddress.street = "Acacia Road"
    
    return someAddress
}
john.residence?.address = createAddress()
