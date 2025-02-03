import 'package:bookly/Core/assets/images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MYImagewidget extends StatelessWidget {
  const MYImagewidget({
    super.key, required this.imageurl, required this.width, required this.height,
  });
  final double width;
  final double height;
  final String ?imageurl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        height: height.h,
        width: width.w,
        imageUrl: imageurl ?? Pictures.no_image,
        errorWidget: (context, url, error) =>const Icon(Icons.error),
        ),
    );
  }
}


