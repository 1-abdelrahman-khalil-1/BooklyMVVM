import 'package:bookly/Core/assets/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Preview extends StatelessWidget {
  const Preview({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50.h,
          width: 130.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r) , bottomLeft: Radius.circular(20.r)),
          ),
          child:  Center(child: Text("Free" , style: MyTextStyle.style18bold, )),
        ),
         InkWell(
          onTap: () => _launch(Uri.parse(url)),
           child: Container(
            height: 50.h,
            width: 130.w,
            decoration: BoxDecoration(
              color: const Color(0xffEF8262),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20.r) , bottomRight: Radius.circular(20.r)),
            ),
            child:  Center(child: Text("Preview" , style: MyTextStyle.style18bold.copyWith(color: Colors.white), )),
                   ),
         ),
      ],
    );
  }
}
_launch(Uri u) async{
  if (!await launchUrl(u ,mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $u');
  }
}
