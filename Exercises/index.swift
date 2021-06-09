struct Book {
    var title: String
    var authorLastName: String
    var authorFirstName: String
    var readingAge: Int
    var pageCount: Int
}

// create several book instances

let book1 = Book.init(title: "Where the Wild Things Are", authorLastName: "Sandak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48),
let book2 = Book.init(title: "Where the Wild Things Are", authorLastName: "Sandak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48)
let book3 = Book.init(title: "Where the Wild Things Are", authorLastName: "Sandak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48),
let book4 = Book.init(title: "Where the Wild Things Are", authorLastName: "Sandak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48)

// create an array of book pathElements
let allBooks = [book1, book2, book3, book4, book5]

// ... now what?


