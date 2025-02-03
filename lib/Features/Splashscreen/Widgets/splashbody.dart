import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:bookly/Features/Splashscreen/Widgets/logoimage.dart';
import 'package:bookly/Features/Splashscreen/Widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splashbody extends StatefulWidget {
  const Splashbody({super.key});

  @override
  State<Splashbody> createState() => _SplashbodyState();
}

class _SplashbodyState extends State<Splashbody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animation;
  late AnimationController _animationController;
  @override
  initState() {
    super.initState();
    Trigeranimation();
    navigate();
  }

  void Trigeranimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animation = Tween<Offset>(begin: const Offset(0, -10), end: Offset.zero)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.bounceInOut));
    _animationController.forward();
  }

  navigate() {
    Future.delayed(const Duration(seconds: 7), () {
      (context).go(AppRouter.homekey);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SlideTransition(position: _animation, child: const Logoimage()),
        const TextunderLogo()
      ],
    ));
  }
}
