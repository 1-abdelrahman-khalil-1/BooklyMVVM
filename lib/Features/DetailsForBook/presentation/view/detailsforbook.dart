import 'package:bookly/Features/DetailsForBook/presentation/view/Widgets/detailsforbookbody.dart';
import 'package:flutter/material.dart';

class Detailsforbook extends StatelessWidget {
  const Detailsforbook({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Detailsforbookbody(),
      ),
    );
  }
}