  // Handlers
import 'package:dashboard_dpxd/dashboard_page.dart';
import 'package:dashboard_dpxd/ui/screen/lift_truck_screen.dart';
import 'package:dashboard_dpxd/ui/screen/login_screen.dart';
import 'package:dashboard_dpxd/ui/screen/main_screen.dart';
import 'package:dashboard_dpxd/ui/screen/notices_screen.dart';
import 'package:dashboard_dpxd/ui/screen/produtivity_screen.dart';
import 'package:dashboard_dpxd/ui/screen/settings_screen.dart';
import 'package:dashboard_dpxd/ui/screen/tractor_screen.dart';
import 'package:fluro/fluro.dart';

final Handler loginHandler =
      Handler(handlerFunc: (context, params) {
    return const LoginScreen();
  });

final Handler mainDashboardProviderHandler =
      Handler(handlerFunc: (context, params) {
    return const DashboardMain(child: MainScreen(),);
  });

final Handler mainProviderHandler =
      Handler(handlerFunc: (context, params) {
    return const MainScreen();
  });

final Handler liftTruckProviderHandler =
      Handler(handlerFunc: (context, params) {
    return const LiftTruckScreen();
  });

final Handler tractorProviderHandler =
      Handler(handlerFunc: (context, params) {
    return const TractorScreen();
  });

final Handler productivityProviderHandler =
      Handler(handlerFunc: (context, params) {
    return const ProductivityScreen();
  });

final Handler noticesProviderHandler =
      Handler(handlerFunc: (context, params) {
    return const NoticesScreen();
  });

final Handler settingsUserHandler =
      Handler(handlerFunc: (context, params) {
    return const SettingsScreen();
  });

final Handler pageNotFound =
      Handler(handlerFunc: (_, __) => const LoginScreen());