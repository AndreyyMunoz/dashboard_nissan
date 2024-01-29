import 'package:flutter/material.dart';

class MainSide {
  final String title;
  final IconData icon;
  final int index;

  MainSide({
    required this.title,
    required this.icon,
    required this.index,
  });
}

List demoMainSide = [
  MainSide(
    icon: Icons.home,
    title: "Inicio",
    index: 0
  ),
  MainSide(
    icon: Icons.fire_truck_outlined,
    title: "Montacargas",
    index: 1
  ),
  MainSide(
    icon: Icons.car_crash_outlined,
    title: "Tractor",
    index: 2
  ),
  MainSide(
    icon: Icons.bar_chart_outlined,
    title: "Productividad",
    index: 3
  ),
  MainSide(
    icon: Icons.warning_outlined,
    title: "Avisos",
    index: 4
  ),
];