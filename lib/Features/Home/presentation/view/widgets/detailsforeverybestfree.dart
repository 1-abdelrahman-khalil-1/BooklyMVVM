import 'package:bookly/Core/assets/fonts.dart';
import 'package:bookly/Features/Home/Data/Model/book.dart';
import 'package:bookly/Core/Utils/widgets/bookrate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailsforeverybestfree extends StatelessWidget {
  const Detailsforeverybestfree({super.key, required this.booklist});
  final Book booklist;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${booklist.volumeInfo!.title}",style: MyTextStyle.meriendaStyle18.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
    
            Text("${(booklist.volumeInfo!.authors)?.join(',  ')}" , style:const TextStyle(color: Colors.white70),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
    
            const Bookrate()
          ],
        ),
      ),
    );
  }
}
