import 'package:bookly/Core/Utils/router/go_router.dart';
import 'package:bookly/Core/Utils/setupservicelocator.dart';
import 'package:bookly/Features/DetailsForBook/Data/repo/detailsrepoImplentation.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailscubit.dart';
import 'package:bookly/Features/Home/presentation/cubit/cubit.dart';
import 'package:bookly/Features/Home/Data/repo/homerepoimplement.dart';
import 'package:bookly/Features/Search/Data/repo/searchrepoImpl.dart';
import 'package:bookly/Features/Search/presentation/cubit/searchcubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  Setupservicelocator();
runApp( 
  DevicePreview(
    enabled: !kReleaseMode ,
    builder: (context) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
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
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                  scaffoldBackgroundColor: const Color.fromRGBO(16, 11, 32, 1)),
              routerConfig: AppRouter.router,
            ),
          );
        });
  }
}
