import 'package:bookly/Core/assets/images.dart';
import 'package:flutter/material.dart';

class Logoimage extends StatelessWidget {
  const Logoimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Pictures.logo),
    );
  }
}
