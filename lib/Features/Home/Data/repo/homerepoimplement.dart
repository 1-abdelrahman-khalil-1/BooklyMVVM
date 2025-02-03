import 'package:bookly/Core/Utils/api_services.dart';
import 'package:bookly/Core/errors/failure.dart';
import 'package:bookly/Features/Home/Data/Model/book.dart';
import 'package:bookly/Features/Home/Data/repo/homerepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Homerepoimplement implements Homerepo {
  final ApiServices api;
  Homerepoimplement(this.api);
  @override
  Future<Either<String, List<Book>>> popularbooks() async {
    try {
      var data = await api.getbooks(endpoint: "books/v1/volumes?q=Juvenile-Fiction");
      List<Book> book = [];
      for (var i in data["items"]) {
        book.add(Book.fromJson(i));
      }
      return right(book);
    } catch (e) {
      if( e is DioException )
      {
        return left(ServerFailure.fromDioexception(e).errormessage);
      }
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Book>>> recentbooks() async {
    try {
      var data = await api.getbooks(
          endpoint: "books/v1/volumes?q=programming");
      List<Book> book = [];
      for (var i in data["items"]) {
        book.add(Book.fromJson(i));
      }
      return right(book);
    } catch (e) {
       if( e is DioException )
      {
        return left(ServerFailure.fromDioexception(e).errormessage);
      }
      return left(e.toString());
    }
  }
}
