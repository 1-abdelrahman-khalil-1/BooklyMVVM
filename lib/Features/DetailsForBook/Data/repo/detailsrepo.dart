import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:dartz/dartz.dart';
abstract class Detailsrepo {
Future<Either<String ,List<Book>>> similarbooks({required String title}); 
Future<Either<String ,Book>> Thebook({required String title});
}