import 'package:bookly/Core/Utils/api_services.dart';
import 'package:bookly/Core/errors/failure.dart';
import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:bookly/Features/DetailsForBook/Data/repo/detailsrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Detailsrepoimplentation implements Detailsrepo {
  final ApiServices api;
  Detailsrepoimplentation(this.api);
  @override
  Future<Either<String, List<Book>>> similarbooks({required String title}) async {
    try {
      var data = await api.getbooks(endpoint: "books/v1/volumes?q=$title");
      List<Book> book = [];
      for (var i in data["items"]) {
        book.add(Book.fromJson(i));
      }
      return right(book);
    } catch (e) {
      if(e is DioException)
      {
        return left(ServerFailure.fromDioexception(e).errormessage);
      }
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, Book>> Thebook({required String title}) async {
    try{
       var data = await api.getbooks(endpoint: "books/v1/volumes?q=$title");
       Book book = Book.fromJson(data['items'][0]);
       return right(book);
    }catch(e){
      if( e is DioException )
      {
        return left(ServerFailure.fromDioexception(e).errormessage);
      }
        return left(e.toString());
    }
  }
  }