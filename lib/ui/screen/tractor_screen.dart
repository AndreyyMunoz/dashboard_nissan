import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_tractor/header.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_tractor/row1.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_tractor/row2.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_tractor/row3.dart';
import 'package:dashboard_dpxd/ui/screen/side_main.dart';
import 'package:flutter/material.dart';

class TractorScreen extends StatefulWidget {
  const TractorScreen({super.key});

  @override
  State<TractorScreen> createState() => _TractorScreenState();
}

class _TractorScreenState extends State<TractorScreen> {
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