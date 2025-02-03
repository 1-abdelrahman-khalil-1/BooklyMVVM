import 'package:bookly/Core/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Searchandlogo extends StatelessWidget {
  const Searchandlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 15.h, child: Image.asset(Pictures.logo)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search))
      ],
    );
  }
}
