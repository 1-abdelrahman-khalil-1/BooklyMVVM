import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:bookly/Core/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Searchandlogo extends StatelessWidget {
  const Searchandlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 15.h, child: Image.asset(Pictures.logo)),
        IconButton(onPressed: () {
          context.push(AppRouter.searchkey);
        }, icon: const Icon(Icons.search))
      ],
    );
  }
}
