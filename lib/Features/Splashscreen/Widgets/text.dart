import 'package:bookly/Core/assets/fonts.dart';
import 'package:flutter/material.dart';

class TextunderLogo extends StatelessWidget {
  const TextunderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text(
        "Read Free books",
        style: MyTextStyle.bookplusStyle18,
      ),
    );
  }
}
