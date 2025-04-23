import 'package:bookly/Features/Search/Presentation/Views/SearchView.dart';
import 'package:bookly/Features/Splash/Presentation/Views/Splash_View.dart';
import 'package:bookly/Features/home/Presentation/Views/BookDetailedView.dart';
import 'package:bookly/Features/home/Presentation/Views/homeView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',//    / for start of app (SplashView)
        builder: (context, state) => Splash_View(),
      ), //    / for start of app (SplashView)
      GoRoute(path: '/HomeView', builder: (context, state) => Homeview()),
      GoRoute(
        path: '/BookDetailedView',
        builder: (context, state) => Bookdetailedview(),
      ),
      GoRoute(path: '/SearchView', builder: (context, state) => Searchview()),
    ],
  );
}
