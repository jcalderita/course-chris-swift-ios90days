import Foundation
// The Library Challenge
//
// Instructions:
// Complete the Library class definition so that you get the expected output in the console (specified below the class definitions). See TODOs.
//

class Person {
    
    var name:String!
    
    init(_ fullName:String) {
        name = fullName
    }
}

class Book {
    
    var title:String!
    var author:String!
    
    init(_ bookTitle:String, _ bookAuthor:String) {
        title = bookTitle
        author = bookAuthor
    }
    
}

// --- Your code goes below this line ---

class Library {
    
    var catalogue = ["ORW":Book("1984", "George Orwell"),
                     "RAY":Book("Fahrenheit 451", "Ray Bradbury")]
    
    var checkedOutBooks = [String:Person]()
    
    func searchByTitle(_ title:String) -> String {
        
        if catalogue.values.contains(where: { Book in
            Book.title == title
        }) {
            let bookId = catalogue.filter({ item in
                item.value.title == title
            }).first!.key
            if checkedOutBooks.keys.contains(where: { key in
                key == bookId
            }) {
                return "Chekded out by \(checkedOutBooks[bookId]!.name!)"
            }
            return "Available"
        }
        
        return "Not in catalogue"
    }
    
    func checkOut(_ bookId:String, _ person:Person) -> String {
        
        if checkedOutBooks.keys.contains(where: { key in
            key == bookId
        }) {
            return "Error: Book already checked out"
        }
        
        if !catalogue.keys.contains(where: { key in
            key == bookId
        }) {
            return "Book doesn't exist"
        }
        
        checkedOutBooks.updateValue(person, forKey: bookId)
        return "Successfully checked out"
    }
    
    func checkIn(_ bookId:String) -> String {
        
        if !catalogue.keys.contains(where: { key in
            key == bookId
        }) {
            return "Book doesn't exist"
        }
 
        if !checkedOutBooks.keys.contains(where: { key in
            key == bookId
        }) {
            return "Error: Can't check in a book that hasn't been checked out"
        }
        
        checkedOutBooks.removeValue(forKey: bookId)
        return "Successfully checked in"
    }

}
// --- Your code goes above this line ---

// --- Don't edit or add anything below this line ---

let lib = Library()
let borrower1 = Person("Curious George")
let borrower2 = Person("Mark Twain")

print("1)")
// George searches for a book
// Expected Output in console:
// "Available"
print("Expected: Available")
let searchResult = lib.searchByTitle("1984")
print("Got:      \(searchResult) \n")


print("2)")
// George checks out the book
// Expected Output in console:
// "Successfully checked out"
print("Expected: Successfully checked out")
let borrowResult = lib.checkOut("ORW", borrower1)
print("Got:      \(borrowResult) \n")


print("3)")
// Mark searches for a book
// Expected Output in console:
// "Checked out by Curious George"
print("Expected: Checked out by Curious George")
let searchResult2 = lib.searchByTitle("1984")
print("Got:      \(searchResult2) \n")

print("4)")
// Mark tries to borrow a book that's already checked out
// Expected Output in console:
// "Error: Book already checked out"
print("Expected: Error: Book already checked out")
let borrowResult2 = lib.checkOut("ORW", borrower2)
print("Got:      \(borrowResult2) \n")



print("5)")
// A book is checked in
// Expected Output in console:
// "Error: Can't check in a book that hasn't been checked out"
print("Expected: Error: Can't check in a book that hasn't been checked out")
let checkInResult = lib.checkIn("RAY")
print("Got:      \(checkInResult) \n")


print("6)")
// George checks in his book
// Expected Output in console:
// "Successfully checked in"
print("Expected: Successfully checked in")
let checkInResult2 = lib.checkIn("ORW")
print("Got:      \(checkInResult2) \n")


print("7)")
// Mark attempts to borrow the book again
// Expected Output in console:
// "Successfully checked out"
print("Expected: Successfully checked out")
let borrowResult3 = lib.checkOut("ORW", borrower2)
print("Got:      \(borrowResult3) \n")


