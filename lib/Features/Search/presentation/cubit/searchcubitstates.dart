import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';

abstract class Searchcubitstates {}
class Searchinitial extends Searchcubitstates {}
class Searchloading extends Searchcubitstates {}
class Searchloaded extends Searchcubitstates {
  final List<Book> books;
  Searchloaded({required this.books});
}
class Searcherror extends Searchcubitstates {
  final String message;
  Searcherror({required this.message});
}