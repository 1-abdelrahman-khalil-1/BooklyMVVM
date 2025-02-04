import 'package:dio/dio.dart';

class Failure {
  String errormessage;
  Failure(this.errormessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errormessage);

  factory ServerFailure.fromDioexception(DioException dio) {
    switch (dio.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send request Timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Send request Timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure("Ops BadCertificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dio.response!.statusCode, dio.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("ConnectionError");
      case DioExceptionType.unknown:
        return ServerFailure("Unexpected error Please try again");
    }
  }

  factory ServerFailure.fromResponse(int? status , response)
  {
    if( status == 400 || status == 401 ) {
      return ServerFailure(response["error"]["message"]);
    } else {
      return ServerFailure("Bad response");
    }
  }
  
}
