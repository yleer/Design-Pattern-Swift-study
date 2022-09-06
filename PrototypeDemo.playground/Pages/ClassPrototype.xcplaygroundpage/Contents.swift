import Foundation

class Contact: NSCopying {
    
    func clone() -> Contact {
        return self.copy() as! Contact
    }

    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Contact(firstName: self.firstName, lastName: self.lastName)
    }
}


extension Contact: CustomStringConvertible {
    public var description: String {
        return "Contact(firstName: \(firstName), lastName: \(lastName))"
    }
        
}



var john = Contact(firstName: "John", lastName: "Appleseed")
var bob = john.clone()

print(john)
print(bob)

bob.firstName = "bob"
bob.lastName = "burger"
print(john.description)
print(bob)
