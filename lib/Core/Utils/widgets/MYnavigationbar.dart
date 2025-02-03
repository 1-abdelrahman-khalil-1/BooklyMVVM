import 'dart:ui';
import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MYnavigationbar extends StatelessWidget {
  const MYnavigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 150,
      right: 150,
      bottom: 30, 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              backgroundBlendMode: BlendMode.srcOver, // Transparent background
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){
                    context.go(AppRouter.homekey);
                  },
                 icon: Icon(Icons.home , size: 30.w, color: Colors.white,)),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.bookmark , size: 30.w,color: Colors.white,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
