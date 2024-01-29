/* import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_application_1/ui/pages/pages_404.dart';
import 'package:flutter_application_1/ui/views/counter_provider_view.dart';
import 'package:flutter_application_1/ui/views/counter_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterView( base: '5' ), '/stateful');

      case '/provider':
        return _fadeRoute(CounterProviderView( base: '5' ), '/provider');

      default:
        return _fadeRoute(const Page404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: const Duration(milliseconds: 120),
        transitionsBuilder: (_, animation, __, ___) =>
        (kIsWeb)
        ? FadeTransition(
          opacity: animation,
          child: child,
        )
        : CupertinoPageTransition(
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: __,
          linearTransition: true,
          child: child
        )
      );
  }
}
 */