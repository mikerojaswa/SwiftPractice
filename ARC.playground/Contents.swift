//Learning exercise about memory management in swift, taken from Apple's docs:
//https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID48

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

// MARK: Strong references between variables
var ref1: Person?
var ref2: Person?
var ref3: Person?

//New object, new Person instance is assigned to ref1. There is now a strong reference from ref1 to the new Person instance
ref1 = Person(name: "Michael Rojas")

//We now assign the same person instance to two more references. Two more strong references to the instance are now established.
ref2 = ref1
ref3 = ref1

ref1 = nil
ref2 = nil
// Person instance is not deinitialized until all references are broken! 🙀🙀🙀
ref3 = nil


// MARK: Strong references between Class Instances

class JediMaster {
    let name: String
    init(name: String) { self.name = name }
    var padawan: Padawan?
    deinit { print("JediMaster \(name) is being deinitialized") }
}

class Padawan{
    let name: String
    init(name: String) { self.name = name }
    var master: JediMaster?
    deinit { print("Padawan \(name) is being deinitialized") }
}

var obiWan: JediMaster?
var anakin: Padawan?

//Link the two instances together, by doing this strong references are created between the two instances.
obiWan = JediMaster(name: "Obi-Wan Kenobi")
anakin = Padawan(name: "Anakin Skywalker")

obiWan!.padawan = anakin
anakin!.master = obiWan

//Because both instances hold strong references to each other neither can be deinitialized. Notic how the deinit message is never printed.
obiWan = nil
anakin = nil




