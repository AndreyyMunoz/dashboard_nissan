import 'package:dashboard_dpxd/models/chart_column_data.dart';
import 'package:dashboard_dpxd/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartColumn extends StatelessWidget {
  const ChartColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBackgroundColor: Colors.transparent,
      margin: const EdgeInsets.all(0),
      borderWidth: 0,
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        plotOffset: 20,
        axisLine: const AxisLine(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        majorGridLines: const MajorGridLines(width: 1, color: textColor),
        majorTickLines: const MajorTickLines(width: 0),
        axisLine: const AxisLine(width: 0),
        isVisible: true,
        numberFormat: NumberFormat.compactCurrency(
          locale: 'eu', symbol: 'Kcal', decimalDigits: 0
        ),
        minimum: 1000,
        maximum: 5000,
        interval: 1000
      ),
      series: <CartesianSeries>[
        ColumnSeries<ChartColumnData, String>(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)
          ),
          dataSource: chartData,
          width: 0.4,
          gradient: const LinearGradient(colors: [
            gradientEndWF,
            gradientStartWF
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          xValueMapper: (ChartColumnData data, _) => data.x,
          yValueMapper: (ChartColumnData data, _) => data.y,
        ),
        ColumnSeries<ChartColumnData, String>(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)
          ),
          dataSource: chartData,
          width: 0.4,
          gradient: const LinearGradient(colors: [
            gradientMiddleWF,
            gradientStartWF
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          xValueMapper: (ChartColumnData data, _) => data.x,
          yValueMapper: (ChartColumnData data, _) => data.y1,
        )
      ],
    );
  }
}

final List<ChartColumnData> chartData = <ChartColumnData> [
  ChartColumnData("Semana 1", 3100, 4200),
  ChartColumnData("Semana 2", 2100, 2500),
  ChartColumnData("Semana 3", 1100, 4600),
  ChartColumnData("Semana 4", 5000, 1200)
];