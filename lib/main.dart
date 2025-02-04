import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:bookly/Core/Utils/setupservicelocator.dart';
import 'package:bookly/Features/DetailsForBook/Data/repo/detailsrepoImplentation.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailscubit.dart';
import 'package:bookly/Features/Home/presentation/cubit/cubit.dart';
import 'package:bookly/Features/Home/Data/repo/homerepoimplement.dart';
import 'package:bookly/Features/Search/Data/repo/searchrepoImpl.dart';
import 'package:bookly/Features/Search/presentation/cubit/searchcubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Setupservicelocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<RecentHomeCubit>(
                create: (context) =>
                    RecentHomeCubit(get_it.get<Homerepoimplement>())
                      ..getrecentbooks(),
              ),
              BlocProvider<PopularHomeCubit>(
                create: (context) =>
                    PopularHomeCubit(get_it.get<Homerepoimplement>())
                      ..getpopularbooks(),
              ),
              BlocProvider<Detailscubit>(
                  create: (context) => Detailscubit(
                      get_it.get<Detailsrepoimplentation>())),
              BlocProvider<SimilarBooksCubit>(
                  create: (context) => SimilarBooksCubit(
                     get_it.get<Detailsrepoimplentation>())),

              BlocProvider<Searchcubit>(
                create: (context) => Searchcubit(get_it.get<Searchrepoimpl>()),
              )       
            ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                  scaffoldBackgroundColor: const Color.fromRGBO(16, 11, 32, 1)),
              routerConfig: AppRouter.router,
            ),
          );
        });
  }
}
