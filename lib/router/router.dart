import 'package:dashboard_dpxd/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/login',handler: loginHandler, transitionDuration: const Duration(milliseconds: 120), transitionType: TransitionType.fadeIn);
    router.define('/main',handler: mainDashboardProviderHandler, transitionDuration: const Duration(milliseconds: 120), transitionType: TransitionType.fadeIn);
    
    // Stateful Routes
    router.define('/dashboard',handler: mainProviderHandler, transitionDuration: const Duration(milliseconds: 120), transitionType: TransitionType.fadeIn);
    router.define('/liftTruck', handler: liftTruckProviderHandler, transitionDuration: const Duration(milliseconds: 120), transitionType: TransitionType.fadeIn);
    router.define('/tractor', handler: tractorProviderHandler, transitionDuration: const Duration(milliseconds: 120), transitionType: TransitionType.fadeIn);
    router.define('/productivity', handler: productivityProviderHandler, transitionDuration: const Duration(milliseconds: 120), transitionType: TransitionType.fadeIn);
    router.define('/notices', handler: noticesProviderHandler, transitionDuration: const Duration(milliseconds: 120), transitionType: TransitionType.fadeIn);
    router.define('/settings', handler: settingsUserHandler, transitionDuration: const Duration(milliseconds: 120), transitionType: TransitionType.fadeIn);

    // Error 404
    router.notFoundHandler = pageNotFound;
  }
}
