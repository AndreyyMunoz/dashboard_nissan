import 'package:dashboard_dpxd/ui/screen/side_main.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        const Expanded(child: SingleChildScrollView(child: SideMain())),
        Expanded(child: child),
      ],
    ));
  }
}
