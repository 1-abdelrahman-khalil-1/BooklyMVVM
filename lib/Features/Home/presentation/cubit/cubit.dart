import 'package:bookly/Features/Home/presentation/cubit/states.dart';
import 'package:bookly/Features/Home/Data/repo/homerepoimplement.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentHomeCubit extends Cubit<HomeState> {
  final Homerepoimplement repo;
  RecentHomeCubit(this.repo) : super(InitialState());
  getrecentbooks() async {
    emit(Loading());
    var response = await repo.recentbooks();
    response.fold((error) {
      emit(Error(error: error));
    }, (booklist) {
      emit(Succesful(booklist));
    });
  }
}

class PopularHomeCubit extends Cubit<HomeState> {
  final Homerepoimplement repo;
  PopularHomeCubit(this.repo) : super(InitialState());
  getpopularbooks() async {
    emit(Loading());
    var response = await repo.popularbooks();
    response.fold((error) {
      emit(Error(error: error));
    }, (booklist) {
      emit(Succesful(booklist));
    });
  }

}