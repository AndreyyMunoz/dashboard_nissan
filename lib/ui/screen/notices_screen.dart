import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_notices/header.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_notices/row1.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_notices/row2.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_notices/row3.dart';
import 'package:dashboard_dpxd/ui/screen/side_main.dart';
import 'package:flutter/material.dart';

class NoticesScreen extends StatefulWidget {
  const NoticesScreen({super.key});

  @override
  State<NoticesScreen> createState() => _NoticesScreenState();
}

class _NoticesScreenState extends State<NoticesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        const Expanded(child: SingleChildScrollView(child: SideMain())),
        Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                child: const Column(
                  children: [
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Header(),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Row1(),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Row2(),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Row3(),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                  ],
                ),
              ),
            )),
      ]),
    );
  }
}