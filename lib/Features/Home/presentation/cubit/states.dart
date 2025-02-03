import 'package:bookly/Features/Home/Data/Model/book.dart';

abstract class HomeState {}

class InitialState extends HomeState {}

class Succesful extends HomeState {
  final List<Book> bookList;
  Succesful(this.bookList);
}
class Loading extends HomeState {}

class Error extends HomeState {
  final String error;

  Error({required this.error});
}
