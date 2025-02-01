import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';

class NewestBooksStates {}

class InitailNewestBooksState extends NewestBooksStates {}

class LoadingNewestBooks extends NewestBooksStates {}

class SuccessNewestBooks extends NewestBooksStates {
  final List<BookModel> books;
  SuccessNewestBooks({required this.books});
}

class ErrorNewestBookstate extends NewestBooksStates {
  final String message;
  ErrorNewestBookstate({required this.message});
}