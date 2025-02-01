import 'package:bookly_app/features/books/presentation/view/book_details_screen.dart';
import 'package:bookly_app/features/home/presentation/view/home_page.dart';
import 'package:bookly_app/features/search/view/search.dart';
import 'package:bookly_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const homeviewPath = '/homeview';
  static const bookDetailsScreenPath = '/bestSeller';
  static const searchScreenPath = '/searchScreen';
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: homeviewPath,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: bookDetailsScreenPath,
        builder: (context, state) => const BookDetailsScreen(),
      ),
      GoRoute(
        path: searchScreenPath,
        builder: (context, state) => const SearchScreen(),
      )
    ],
  );
}
