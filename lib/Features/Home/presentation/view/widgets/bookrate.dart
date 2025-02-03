import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookrate extends StatelessWidget {
  const Bookrate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          FontAwesomeIcons.solidStar ,
          size: 10.w,
          color: Colors.yellow,
        ) ,

        Text(" 4.8 " , style: TextStyle(fontSize: 15.sp)) ,
        
      const  Text(" (2390) " , style: TextStyle(color: Colors.white60) ) ,
     
      ],
    );
  }
}