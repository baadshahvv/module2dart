class Book{
  String title;
  String author;
  int publicationYear;

  Book(this.title, this.author, this.publicationYear);

  void displayDetail(){
    print('Title: $title');
    print('Author: $author');
    print('Publication Year: $publicationYear');
  }

  bool isOverTenYearsOld(){
    int currentYear = DateTime.now().year;
    return(currentYear - publicationYear)>10;
  }
}

void main(){

  Book book1 = Book('1984', 'George Orwell', 1949);
  book1.displayDetail();

  if(book1.isOverTenYearsOld()){
    print('This book is 10 year old.');
  }else{
    print('This book is not 10 year old.');
  }
}