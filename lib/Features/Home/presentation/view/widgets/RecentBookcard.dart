import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:bookly/Core/Utils/widgets/MYImagewidget.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailscubit.dart';
import 'package:bookly/Features/Home/Data/Model/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RecentBookcard extends StatelessWidget {
  const RecentBookcard({super.key, required this.bookitem, required this.id});
  final Book bookitem;
  final int id ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<Detailscubit>(context).getDetailsForBook(title: bookitem.volumeInfo!.title!);
        BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(title: bookitem.volumeInfo!.title!);
        context.push(AppRouter.detailsforbook);
      },
      
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: MYImagewidget(imageurl:  bookitem.volumeInfo?.imageLinks!.thumbnail ,width:  120 ,height:  224 ),
      ),
    );
  }
}
