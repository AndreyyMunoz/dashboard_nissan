import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_liftruck/header.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_liftruck/row1.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_liftruck/row2.dart';
import 'package:dashboard_dpxd/ui/screen/dashboard_liftruck/row3.dart';
import 'package:dashboard_dpxd/ui/screen/side_main.dart';
import 'package:flutter/material.dart';

class LiftTruckScreen extends StatefulWidget {
  const LiftTruckScreen({super.key});

  @override
  State<LiftTruckScreen> createState() => _LiftTruckScreenState();
}

class _LiftTruckScreenState extends State<LiftTruckScreen> {

  @override
  void initState() {
    super.initState();
  }

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