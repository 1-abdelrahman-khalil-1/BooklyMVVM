import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:bookly/Core/Utils/widgets/MYImagewidget.dart';
import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailscubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Similarbookbody extends StatefulWidget {
  const Similarbookbody({super.key, required this.similarbooks});
 final List<Book> similarbooks;

  @override
  State<Similarbookbody> createState() => _SimilarbookbodyState();
}

class _SimilarbookbodyState extends State<Similarbookbody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.similarbooks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {               
                BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(title: widget.similarbooks[index].volumeInfo!.title!);
                BlocProvider.of<Detailscubit>(context).getDetailsForBook(title: widget.similarbooks[index].volumeInfo!.title!);
                context.push(AppRouter.detailsforbook);
                 },
              child: MYImagewidget(imageurl:  widget.similarbooks[index].volumeInfo?.imageLinks?.thumbnail ,width:  90,height:  145)),
          );
        },
      ),
    );
  }
}
