import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:dartz/dartz.dart';

abstract class Searchrepo {
  Future<Either<String , List<Book>>>results({required String key});
}