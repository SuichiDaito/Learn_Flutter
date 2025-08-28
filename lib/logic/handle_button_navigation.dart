import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HandleButtonNavigation {
  static void handleNavigation(int index, BuildContext context) {
    final routes = ['/home_screen', '/order_details', "/menu"];

    if (index < routes.length) {
      context.go(routes[index]);
    }
  }
}
