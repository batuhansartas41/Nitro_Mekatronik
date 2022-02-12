import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Charts extends StatelessWidget {
  const Charts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
        minX: 0,
        maxX: 9,
        minY: 0,
        maxY: 10,
        axisTitleData: FlAxisTitleData(
            topTitle: AxisTitle(
          textAlign: TextAlign.left,
          titleText:
              "Balance summary                                        20 July - 27 July 2020",
          showTitle: true,
        )),
        titlesData: FlTitlesData(
          show: false,
        ),
        backgroundColor: Colors.transparent,
        borderData: FlBorderData(border: Border.all(color: Colors.grey)),
        gridData: FlGridData(show: false),
        lineBarsData: [
          LineChartBarData(
              belowBarData: BarAreaData(),
              isCurved: true,
              dotData: FlDotData(show: false),
              spots: [
                const FlSpot(0, 1),
                const FlSpot(2, 2),
                const FlSpot(3, 3),
                const FlSpot(4, 4),
                const FlSpot(7, 5),
                const FlSpot(8, 6),
                const FlSpot(9, 7),
              ]),

          /*LineChartBarData(
              isCurved: true,
              belowBarData: BarAreaData(
                  show: true, colors: [Colors.red.withOpacity(0.3)]),
              dotData: FlDotData(show: false),
              spots: [
                const FlSpot(0, 1),
                const FlSpot(1, 2),
                const FlSpot(2, 3),
                const FlSpot(3, 4),
                const FlSpot(7, 5),
                const FlSpot(8, 6),
                const FlSpot(9, 7),
              ])*/
        ]));
  }
}
