import 'package:dashboard_dpxd/models/chart_spline_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartSplineArea extends StatelessWidget {
  const ChartSplineArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBackgroundColor: Colors.transparent,
      margin: const EdgeInsets.all(0),
      borderWidth: 0,
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
          labelPlacement: LabelPlacement.onTicks,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          axisLine: const AxisLine(width: 0),
          majorGridLines: const MajorGridLines(width: 0),
          majorTickLines: const MajorTickLines(width: 0)),
      primaryYAxis: NumericAxis(axisLine: const AxisLine(width: 0)),
      series: <ChartSeries<ChartSplineData, String>>[
        SplineSeries(
            color: const Color(0xFF9644FF),
            width: 2,
            dataSource: chartData,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color(0xFFFF4444),
            width: 2,
            dataSource: chartData2,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color(0xFFF3FF44),
            width: 2,
            dataSource: chartData3,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color(0xFF44FF4A),
            width: 2,
            dataSource: chartData4,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color(0xFF444AFF),
            width: 2,
            dataSource: chartData5,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color.fromARGB(255, 190, 255, 68),
            width: 2,
            dataSource: chartData6,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color.fromARGB(255, 68, 255, 246),
            width: 2,
            dataSource: chartData7,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color.fromARGB(255, 158, 68, 255),
            width: 2,
            dataSource: chartData8,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color.fromARGB(255, 255, 140, 68),
            width: 2,
            dataSource: chartData9,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color.fromARGB(255, 68, 255, 190),
            width: 2,
            dataSource: chartData10,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color.fromARGB(255, 255, 68, 118),
            width: 2,
            dataSource: chartData11,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
        SplineSeries(
            color: const Color.fromARGB(255, 255, 96, 68),
            width: 2,
            dataSource: chartData12,
            xValueMapper: (ChartSplineData data, _) => data.month,
            yValueMapper: (ChartSplineData data, _) => data.amount),
      ],
    );
  }
}

final List<ChartSplineData> chartData = <ChartSplineData>[
  ChartSplineData('Mo', 2),
  ChartSplineData('Tu', 4),
  ChartSplineData('We', 1),
  ChartSplineData('Th', 7),
  ChartSplineData('Fr', 2),
  ChartSplineData('Sa', 8),
  ChartSplineData('Su', 1)
];

final List<ChartSplineData> chartData2 = <ChartSplineData>[
  ChartSplineData('Mo', 1),
  ChartSplineData('Tu', 2),
  ChartSplineData('We', 3),
  ChartSplineData('Th', 4),
  ChartSplineData('Fr', 8),
  ChartSplineData('Sa', 1),
  ChartSplineData('Su', 3)
];

final List<ChartSplineData> chartData3 = <ChartSplineData>[
  ChartSplineData('Mo', 7),
  ChartSplineData('Tu', 4),
  ChartSplineData('We', 1),
  ChartSplineData('Th', 5),
  ChartSplineData('Fr', 3),
  ChartSplineData('Sa', 6),
  ChartSplineData('Su', 2)
];

final List<ChartSplineData> chartData4 = <ChartSplineData>[
  ChartSplineData('Mo', 4),
  ChartSplineData('Tu', 5),
  ChartSplineData('We', 6),
  ChartSplineData('Th', 8),
  ChartSplineData('Fr', 2),
  ChartSplineData('Sa', 1),
  ChartSplineData('Su', 5)
];

final List<ChartSplineData> chartData5 = <ChartSplineData>[
  ChartSplineData('Mo', 5),
  ChartSplineData('Tu', 5),
  ChartSplineData('We', 3),
  ChartSplineData('Th', 8),
  ChartSplineData('Fr', 1),
  ChartSplineData('Sa', 3),
  ChartSplineData('Su', 8)
];

final List<ChartSplineData> chartData6 = <ChartSplineData>[
  ChartSplineData('Mo', 9),
  ChartSplineData('Tu', 7),
  ChartSplineData('We', 8),
  ChartSplineData('Th', 3),
  ChartSplineData('Fr', 5),
  ChartSplineData('Sa', 2),
  ChartSplineData('Su', 1)
];

final List<ChartSplineData> chartData7 = <ChartSplineData>[
  ChartSplineData('Mo', 5),
  ChartSplineData('Tu', 8),
  ChartSplineData('We', 2),
  ChartSplineData('Th', 4),
  ChartSplineData('Fr', 6),
  ChartSplineData('Sa', 1),
  ChartSplineData('Su', 9),
];

final List<ChartSplineData> chartData8 = <ChartSplineData>[
  ChartSplineData('Mo', 3),
  ChartSplineData('Tu', 9),
  ChartSplineData('We', 6),
  ChartSplineData('Th', 2),
  ChartSplineData('Fr', 7),
  ChartSplineData('Sa', 5),
  ChartSplineData('Su', 1),
];

final List<ChartSplineData> chartData9 = <ChartSplineData>[
  ChartSplineData('Mo', 7),
  ChartSplineData('Tu', 2),
  ChartSplineData('We', 4),
  ChartSplineData('Th', 1),
  ChartSplineData('Fr', 8),
  ChartSplineData('Sa', 3),
  ChartSplineData('Su', 6),
];

final List<ChartSplineData> chartData10 = <ChartSplineData>[
  ChartSplineData('Mo', 1),
  ChartSplineData('Tu', 5),
  ChartSplineData('We', 7),
  ChartSplineData('Th', 3),
  ChartSplineData('Fr', 9),
  ChartSplineData('Sa', 2),
  ChartSplineData('Su', 4),
];

final List<ChartSplineData> chartData11 = <ChartSplineData>[
  ChartSplineData('Mo', 6),
  ChartSplineData('Tu', 3),
  ChartSplineData('We', 9),
  ChartSplineData('Th', 5),
  ChartSplineData('Fr', 1),
  ChartSplineData('Sa', 7),
  ChartSplineData('Su', 2),
];

final List<ChartSplineData> chartData12 = <ChartSplineData>[
  ChartSplineData('Mo', 8),
  ChartSplineData('Tu', 4),
  ChartSplineData('We', 1),
  ChartSplineData('Th', 7),
  ChartSplineData('Fr', 2),
  ChartSplineData('Sa', 6),
  ChartSplineData('Su', 3),
];
