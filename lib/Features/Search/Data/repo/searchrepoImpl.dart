import 'package:bookly/Core/Utils/api_services.dart';
import 'package:bookly/Core/errors/failure.dart';
import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:bookly/Features/Search/Data/repo/searchrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Searchrepoimpl implements Searchrepo {
  final ApiServices api;

  Searchrepoimpl(this.api);
  @override
  Future<Either<String , List<Book>>>results({required String key}) async {
    try {
      var data = await api.getbooks(endpoint: "books/v1/volumes?q=$key");
      List<Book> book = [];
      for (var i in data["items"]) {
        book.add(Book.fromJson(i));
      }
      return Right(book);
    } catch (e) {
      if(e is DioException)
      {
        return Left(ServerFailure.fromDioexception(e).errormessage);
      }
      return Left(e.toString());
      
    }
  }
  
}