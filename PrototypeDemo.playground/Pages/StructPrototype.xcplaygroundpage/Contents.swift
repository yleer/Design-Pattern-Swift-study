import Foundation


struct Contact {
    var firstName: String
    var lastName: String
}

var john = Contact(firstName: "John", lastName: "Appleseed")
var bob = john


print("\(john), \n\(bob)")
print("")


bob.firstName = "bob"
bob.lastName = "burger"

print("\(john), \n\(bob)")
