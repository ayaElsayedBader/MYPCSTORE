import 'dart:convert';

import 'package:dio/dio.dart';

import '../api/status_codes.dart';
import 'failure.dart';

class ServerFailure extends Failure {
  ServerFailure({String? errorMessage}) : super(errorMessage: errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    try {
      switch (dioException.type) {
        case DioExceptionType.connectionTimeout:
          return ServerFailure(
              errorMessage: 'Connection Timeout With ApiServer');
        case DioExceptionType.sendTimeout:
          return ServerFailure(errorMessage: 'Send Timeout With ApiServer');
        case DioExceptionType.receiveTimeout:
          return ServerFailure(errorMessage: 'Receive Timeout With ApiServer');
        case DioExceptionType.badCertificate:
          return ServerFailure(
              errorMessage: 'Your request not found, please try again later!');
        case DioExceptionType.badResponse:
          if (dioException.response != null) {
            return ServerFailure.fromResponse(
              dioException.response!.statusCode!,
              dioException.response!.data,
            );
          } else {
            return ServerFailure(errorMessage: 'Bad response from server');
          }
        case DioExceptionType.cancel:
          return ServerFailure(
              errorMessage: 'Request to ApiServer was canceled');
        case DioExceptionType.connectionError:
          return ServerFailure(errorMessage: 'No Internet Connection');
        case DioExceptionType.unknown:
          return ServerFailure(
              errorMessage: 'Unexpected Error, please try again!');
        default:
          return ServerFailure(
              errorMessage:
                  'Oops something went wrong, please try again later!');
      }
    } catch (e) {
      return ServerFailure(errorMessage: 'Failed to handle DioException: $e');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    try {
      final parsedResponse = jsonDecode(response);

      if (statusCode == StatusCodes.badRequest ||
          statusCode == StatusCodes.unAuthorized ||
          statusCode == StatusCodes.forbidden) {
        return ServerFailure(errorMessage: parsedResponse['message']);
      } else if (statusCode == StatusCodes.internalServerError) {
        return ServerFailure(errorMessage: parsedResponse['error']);
      }
      return ServerFailure(errorMessage: "opps");
    } catch (e) {
      return ServerFailure(errorMessage: 'Failed to parse server response: $e');
    }
  }
}
