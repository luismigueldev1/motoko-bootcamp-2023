import Book "book";
import List "mo:base/List";

actor {

    // 6 -In main.mo import the type List from the Base Library and create a list that stores books.
    var books_list = List.nil<Book.Book>();


    // 7 - In main.mo create a function called add_book that takes a book as parameter and returns nothing this function should add this book to your list. Then create a second function called get_books that takes no parameter but returns an Array that contains all books stored in the list.
    public func add_book(book: Book.Book) : async () {
       books_list := List.push(book, books_list);
    };

    public query func get_books() : async [Book.Book] {
        return List.toArray<Book.Book>(books_list);
    }

};

