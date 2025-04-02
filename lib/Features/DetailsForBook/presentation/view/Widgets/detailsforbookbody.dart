import 'package:bookly/Core/assets/fonts.dart';
import 'package:bookly/Features/DetailsForBook/presentation/view/Widgets/detailsandpreview.dart';
import 'package:bookly/Features/DetailsForBook/presentation/view/Widgets/similarbooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailsforbookbody extends StatelessWidget {
  const Detailsforbookbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SingleChildScrollView(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
            const Detailsandpreview(),
            SizedBox(height: 20.h),
            Align(alignment: Alignment.topLeft,child: Text("You can also like" , style: MyTextStyle.style18bold.copyWith(fontWeight: FontWeight.normal ,color: Colors.white),)) , 
            SizedBox(height: 10.h),
            const Similarbooks()
          ],
        ),
      ),
    );
  }
}
