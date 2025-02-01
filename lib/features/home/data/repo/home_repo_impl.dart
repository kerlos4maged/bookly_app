import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/util/api_services.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl({required this.apiServices});

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBook() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerError.fromDio(dioException: e),
        );
      } else {
        return left(
          ServerError(message: "message"),
        );
      }
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> featuresBooks() async {
    try {
      final response = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in response['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDio(dioException: e));
      } else {
        return left(ServerError(message: e.toString()));
      }
    }
  }
}
