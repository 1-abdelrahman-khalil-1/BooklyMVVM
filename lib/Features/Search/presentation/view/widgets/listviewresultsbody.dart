import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:bookly/Core/Utils/widgets/MYImagewidget.dart';
import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailscubit.dart';
import 'package:bookly/Features/Search/presentation/view/widgets/detailsforeveryresult.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Listviewresultsbody extends StatelessWidget {
  const Listviewresultsbody({super.key, required this.bookresult});
  final Book bookresult;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<Detailscubit>(context).getDetailsForBook(title: bookresult.volumeInfo!.title!);
          BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(title: bookresult.volumeInfo!.title!);
          context.push(AppRouter.detailsforbook);
        },
        child: SizedBox(
          height: 130.h,
          child: Row(
            children: [
              MYImagewidget(
                  imageurl: bookresult.volumeInfo?.imageLinks?.thumbnail,
                  width: 80.w,
                  height: 130.h),
              Detailsforeveryresult(
                bookresult: bookresult,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
