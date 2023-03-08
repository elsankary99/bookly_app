import 'package:dio/dio.dart';

abstract class Failuer {
  final String errMessage;

  Failuer(this.errMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errMessage);

  factory ServerFailuer.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailuer('Connection time out with aoi service');
      case DioErrorType.sendTimeout:
        return ServerFailuer('Send time out with aoi service');

      case DioErrorType.receiveTimeout:
        return ServerFailuer('Receive time out with aoi service');

      case DioErrorType.badCertificate:
        return ServerFailuer('Bad Certificate time out with aoi service');

      case DioErrorType.badResponse:
        return ServerFailuer.badResponse(
            statusCode: dioError.response!.statusCode!,
            response: dioError.response);
      case DioErrorType.cancel:
        return ServerFailuer('Request to api service was cancel ');

      case DioErrorType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailuer('No internet connection ');
        }
        return ServerFailuer('Unexpected error , please try again');

      case DioErrorType.unknown:
        return ServerFailuer('There was connection error ,please try later ');
      default:
        return ServerFailuer(' opps there was an error , please try againe  ');
    }
  }
  ////////////////////////////////
  /////////////////
  ///////////
  /////
  ////
  ///

  factory ServerFailuer.badResponse({int? statusCode, dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuer('Your request not found , please try later  ');
    } else if (statusCode == 500) {
      return ServerFailuer('Internal server error , please try later  ');
    } else {
      return ServerFailuer(' opps there was an error , please try againe  ');
    }
  }
}
