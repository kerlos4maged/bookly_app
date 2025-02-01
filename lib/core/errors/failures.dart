import 'package:dio/dio.dart';

abstract class Failures {
  final String message;
  Failures({required this.message});
}

class ServerError extends Failures {
  ServerError({required super.message});

  factory ServerError.fromDio({
    required DioException dioException,
  }) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerError(message: "Connection Error,please Try Again later");
      case DioExceptionType.sendTimeout:
        return ServerError(message: "Send Error, please Try Again later!");
      case DioExceptionType.receiveTimeout:
        return ServerError(
            message: "Receive Time out, please Try Again later!");
      case DioExceptionType.badCertificate:
        return ServerError(message: "try Again later");
      case DioExceptionType.badResponse:
        return ServerError.fromResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response,
        );
      case DioExceptionType.cancel:
        return ServerError(
            message: 'request is canceld, please Try Again later!');
      case DioExceptionType.connectionError:
        return ServerError(message: "Check Your Internet");
      case DioExceptionType.unknown:
        return ServerError(message: 'please try again later!');
    }
  }
  factory ServerError.fromResponse(
      {required int statusCode, required dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerError(message: response['error']['message']);
    } else {
      return ServerError(message: "please Try Again later");
    }
  }
}
