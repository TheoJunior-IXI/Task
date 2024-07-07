class Book {
  // data members...
  String? bookTitle;
  String? aouther;
  int? noumOfPages;
  // constructor...
  Book(this.bookTitle, this.aouther, this.noumOfPages);
  // display method...
  void display() {
    print("Book Tittle : $bookTitle");
    print("Aouther : $aouther");
    print("Total pages is $noumOfPages");
  }
}

class Novel extends Book {
  // data members...
  String genre;
  // constructor...
  Novel(String bookTitle, String aouther, int noumOfPages, this.genre)
      : super(bookTitle, aouther, noumOfPages);
  // display method...
  @override
  void display() {
    super.display();
    print("Genre : $genre");
    print("------------------------------------------------");
  }
}

void main() {
  var firstNovel = Novel("Beginning after the end", "Little turtle", 470, "Adventure");
  firstNovel.display();

   var secNovel = Book("Game of thrones", "George RR martin", 1200);
  secNovel.display();
}