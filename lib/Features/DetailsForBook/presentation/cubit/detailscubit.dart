import 'package:bookly/Features/DetailsForBook/Data/repo/detailsrepoImplentation.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailsstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Detailscubit extends Cubit<Detailsstate> {
  final Detailsrepoimplentation repo;
  Detailscubit(this.repo) : super(DetailsInitial());

   getDetailsForBook({required String title}) async {
    emit(DetailsLoading());
      final details = await repo.Thebook(title: title);
      details.fold((error) {
        emit(DetailsError(message: error));
      }, (book) {
        emit(DetailsLoaded(book));
      });
  }
}
class SimilarBooksCubit extends Cubit<Detailsstate> {
  final Detailsrepoimplentation repo;
  SimilarBooksCubit(this.repo) : super(DetailsInitial());

  getSimilarBooks({required String title}) async {
    emit(DetailsLoading());
    final similarBooks = await repo.similarbooks(title: title);
    similarBooks.fold((error) {
      emit(DetailsError(message: error));
    }, (books) {
      emit(SimilarBooksLoaded(books));
    });
  }
}