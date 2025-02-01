import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/util/app_route.dart';
import 'package:bookly_app/core/util/di.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/presentation/view_models/features_cubit/features_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_cubit/newest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  appDI();
  runApp(MyApp.instance());
}

class MyApp extends StatelessWidget {
  const MyApp._myApp();

  static const _myapp = MyApp._myApp();

  factory MyApp.instance() => _myapp;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: BooksCubit(di.get<HomeRepo>())..fetchHomeData(),
        ),
        BlocProvider.value(
          value: NewestFeaturesBooks(di.get<HomeRepo>())..newestBooks(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          appBarTheme: const AppBarTheme(
            elevation: 0,
          ),
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        routerConfig: AppRoute.route,
      ),
    );
  }
}
