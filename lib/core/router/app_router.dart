import 'package:flutter_go_router_demo/features/auth/view/login_page.dart';
import 'package:flutter_go_router_demo/features/home/view/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: "/",
    initialExtra: {"dummyCallback": () {}, "username": "Chintan K"},
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          print(state.extra);
          return LoginPage(
            dummyCallback: (state.extra as Map)["dummyCallback"],
            username: (state.extra as Map)["username"],
          );
        },
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) {
          print(state.extra);

          return HomePage(
            userData: (state.extra as Map)["userData"],
            phoneNo: (state.extra as Map)["phoneNo"],
          );
        },
      ),
    ],
  );
}
