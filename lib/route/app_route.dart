import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:test1/presentation/pages/home_screen.dart';
import 'package:test1/presentation/pages/order_list.dart';
import 'package:test1/presentation/pages/order_list_screen.dart';

final class AppRoute {
  // root app
  static final GlobalKey<NavigatorState> rootNavigationKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> appBarNavigationKey =
      GlobalKey<NavigatorState>();

  // coordinator route app
  final GoRouter routes = GoRouter(
    navigatorKey: rootNavigationKey,
    initialLocation: '/home_screen',
    debugLogDiagnostics: true,
    routes: [
      // GoRoute(path: '/home_screen', builder: (context, state) => HomeScreen(child: ,)),
      ShellRoute(
        navigatorKey: appBarNavigationKey,
        builder: (context, state, child) => HomeScreen(child: child),
        routes: [
          GoRoute(
            path: '/order_details',
            builder: (context, state) => OrderListScreen(),
          ),
        ],
      ),
    ],
  );
}
