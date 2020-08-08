import UIKit

class Person {
    var name: String
    var secondName: String
    var age: Int
    var location: String
    var job: Bool
    init(name: String, secondName: String, age: Int, location: String, job: Bool) {
        self.name = name
        self.secondName = secondName
        self.age = age
        self.location = location
        self.job = job
    }
}

let info = Person(name: "Safar", secondName: "Safarov", age: 18, location: "China", job: true)
print(info)

struct Human {
  var name: String
    var secondName: String
    var age: Int
    var location: String
    var job: Bool
    init(name: String, secondName: String, age: Int, location: String, job: Bool) {
        self.name = name
        self.secondName = secondName
        self.age = age
        self.location = location
        self.job = job
    }
}

let info2 = Human(name: "Safar", secondName: "Safarov", age: 19, location: "China", job: true)
print(info2)

class citizens {
    var citizenName: String
    var citizenSurname:String
    var citizenId: Int
    var citizenJob: Bool
    var citizenIsMarried: Bool
    var citizenHasChilderen: Bool
    init(citizenName: String, citizenSurname: String, citizenId: Int, citizenJob: Bool, citizenIsMarried: Bool, citizenHasChilderen: Bool) {
        self.citizenName = citizenName
        self.citizenSurname = citizenSurname
        self.citizenId = citizenId
        self.citizenJob = citizenJob
        self.citizenIsMarried = citizenIsMarried
        self.citizenHasChilderen = citizenHasChilderen
    }
}
