import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices(this.dio);
  String baseurl = "https://www.googleapis.com/";

  getbooks({required String endpoint}) async {
    Response response = await dio.get("$baseurl$endpoint");
    return response.data;
    //return bookoffline;
  }
}