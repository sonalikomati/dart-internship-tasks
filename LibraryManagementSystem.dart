class Book {
  String title;
  String author;
  bool isIssued;

  Book(this.title, this.author) : isIssued = false;
}

class Library {
  List<Book> books = [];

  void addBook(String title, String author) {
    books.add(Book(title, author));
    print("Book added: $title by $author");
  }

  void issueBook(String title) {
    for (var book in books) {
      if (book.title == title && !book.isIssued) {
        book.isIssued = true;
        print("Book issued: $title");
        return;
      }
    }
    print("Book not available.");
  }

  void returnBook(String title) {
    for (var book in books) {
      if (book.title == title && book.isIssued) {
        book.isIssued = false;
        print("Book returned: $title");
        return;
      }
    }
    print("Invalid return.");
  }

  void displayBooks() {
    print("\nLibrary Books:");
    for (var book in books) {
      print(
        "${book.title} by ${book.author} - ${book.isIssued ? "Issued" : "Available"}",
      );
    }
  }
}

void main() {
  Library lib = Library();

  lib.addBook("Flutter Basics", "Abhi");
  lib.addBook("Dart Programming", "Saanvi");

  lib.issueBook("Flutter Basics");
  lib.displayBooks();

  lib.returnBook("Flutter Basics");
  lib.displayBooks();
}
