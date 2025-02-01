import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';

class BooksStates {}

class InitailBooksState extends BooksStates {}

class LoadingBooks extends BooksStates {}

class SuccessBooks extends BooksStates {
  final List<BookModel> books;
  SuccessBooks({required this.books});
}

class ErrorBookState extends BooksStates {
  final String message;
  ErrorBookState({required this.message});
}
