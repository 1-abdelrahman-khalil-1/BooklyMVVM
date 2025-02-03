import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:bookly/Core/Utils/widgets/MYImagewidget.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailscubit.dart';
import 'package:bookly/Features/Home/Data/Model/book.dart';
import 'package:bookly/Features/Home/presentation/view/widgets/detailsforeverybestfree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Bestfreebooks extends StatelessWidget {
  const Bestfreebooks({super.key, required this.booklist, required this.id});
  final Book booklist;
  final int id ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
           BlocProvider.of<Detailscubit>(context).getDetailsForBook(title:booklist.volumeInfo!.title!);
           BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(title: booklist.volumeInfo!.title!) ;
           context.push( AppRouter.detailsforbook );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 130.h,
         
          child: Row(
            children: [
             MYImagewidget(imageurl:  booklist.volumeInfo?.imageLinks!.thumbnail ,width:  80 ,height:  130) ,
             Detailsforeverybestfree(booklist: booklist),
        
            ],
          ),
        ),
      ),
    );
  }
}
