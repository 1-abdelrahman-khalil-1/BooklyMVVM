import 'package:bookly/Features/DetailsForBook/presentation/view/detailsforbook.dart';
import 'package:bookly/Features/Home/presentation/view/home.dart';
import 'package:bookly/Features/Splashscreen/splashscreen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homekey = '/home';
  static const String previewbookkey = '/book';
  static const String detailsforbook = '/detailsforbook';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const Splashscreen()),
    GoRoute(path: homekey, builder: (context, state) => const Home()) ,
    GoRoute(path: detailsforbook, builder: (context, state) =>  const Detailsforbook()),
  ]);
}