import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';

abstract class Detailsstate {}
class DetailsInitial extends Detailsstate {}
class DetailsLoading extends Detailsstate {}
class DetailsLoaded extends Detailsstate {
  final Book details;
  DetailsLoaded(this.details);
}
class SimilarBooksLoaded extends Detailsstate {
  final List<Book> books;
  SimilarBooksLoaded(this.books);
}
class DetailsError extends Detailsstate {
  final String message;
  DetailsError({required this.message});
}