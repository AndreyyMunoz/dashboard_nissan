import 'package:dashboard_dpxd/locator.dart';
import 'package:dashboard_dpxd/login_main.dart';
import 'package:dashboard_dpxd/router/router.dart';
import 'package:dashboard_dpxd/services/navigaton_service.dart';
import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      title: 'Nissan Dashboard',

      initialRoute: '/login',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      home: const LoginMain(),
    );
  }
}

      // builder: (_, child) {
      //   return MainLayoutPage(
      //     child: child!,
      //   );
      // },