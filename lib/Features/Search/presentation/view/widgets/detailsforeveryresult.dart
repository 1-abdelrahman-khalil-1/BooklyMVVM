import 'package:bookly/Core/assets/fonts.dart';
import 'package:bookly/Core/Utils/widgets/bookrate.dart';
import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailsforeveryresult extends StatelessWidget {
  const Detailsforeveryresult({super.key, required this.bookresult});
 final Book bookresult;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${bookresult.volumeInfo?.title}" ,style: MyTextStyle.meriendaStyle18.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
    
             Text("${bookresult.volumeInfo!.authors?.join(" , ")}" , style:TextStyle(color: Colors.white70),
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
