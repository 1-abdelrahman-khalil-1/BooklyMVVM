import 'package:bookly/Core/Utils/widgets/MYImagewidget.dart';
import 'package:bookly/Core/assets/fonts.dart';
import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:bookly/Features/DetailsForBook/presentation/view/Widgets/preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailsandpreviewbody extends StatelessWidget {
  const Detailsandpreviewbody({super.key, required this.details});
  final Book details;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        MYImagewidget(
           imageurl: details.volumeInfo?.imageLinks?.thumbnail,width:  150,height:  230),

        Text("\n${details.volumeInfo?.title}" ,style: MyTextStyle.bookplusStyle18.copyWith(fontSize: 16.sp),textAlign: TextAlign.center),
        Text("\n${details.volumeInfo?.authors?.join(", ")}\n" ,style: MyTextStyle.meriendaStyle18.copyWith(color: Colors.white70) ,textAlign: TextAlign.center),
        Preview(url: details.volumeInfo!.previewLink!),
      ],
    );
  }
}