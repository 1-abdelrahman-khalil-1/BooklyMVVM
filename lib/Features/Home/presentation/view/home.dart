import 'package:bookly/Core/Utils/widgets/MYnavigationbar.dart';
import 'package:bookly/Features/Home/presentation/view/widgets/homebody.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Homebody(),
            MYnavigationbar(),
        ],
        ),
      ),
    );
  }
}

