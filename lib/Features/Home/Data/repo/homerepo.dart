import 'package:bookly/Features/Home/Data/Model/book.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
Future<Either<String ,List<Book>>> popularbooks(); 
Future<Either<String ,List<Book>>> recentbooks();
}