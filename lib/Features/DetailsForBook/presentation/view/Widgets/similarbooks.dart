import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailscubit.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailsstate.dart';
import 'package:bookly/Features/DetailsForBook/presentation/view/Widgets/similarbookbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Similarbooks extends StatelessWidget {
  const Similarbooks({super.key});
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit , Detailsstate>(builder: (context , state){
      if(state is SimilarBooksLoaded){
        return Similarbookbody(similarbooks:state.books);
      }else if(state is DetailsError){
        return Text(state.message);
      }else{
        return const CircularProgressIndicator();
      }
    });
  }
}