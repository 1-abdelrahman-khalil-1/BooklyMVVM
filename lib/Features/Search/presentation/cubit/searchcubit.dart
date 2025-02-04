import 'package:bookly/Features/Search/Data/repo/searchrepoImpl.dart';
import 'package:bookly/Features/Search/presentation/cubit/searchcubitstates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Searchcubit extends Cubit<Searchcubitstates> {
Searchrepoimpl searchrepoimpl;
  Searchcubit(this.searchrepoimpl) : super(Searchinitial());

 getresults({required String key}) async {
  emit(Searchloading());
  var response = await searchrepoimpl.results(key: key);
  response.fold((e){
    emit(Searcherror(message:e.toString()));
  }, (results){
    emit(Searchloaded(books: results));
  });
 }
}