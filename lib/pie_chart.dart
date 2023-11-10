import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            'My Chart',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          PieChart(
            swapAnimationDuration: const Duration(milliseconds: 750),
            swapAnimationCurve: Curves.easeInOutQuint,
            PieChartData(
              sections: [
                PieChartSectionData(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.blue.shade900,
                  ),
                  value: 20,
                  color: Colors.blue,
                ),
                PieChartSectionData(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.red.shade900,
                  ),
                  value: 30,
                  color: Colors.red,
                ),
                PieChartSectionData(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.yellow.shade800,
                  ),
                  value: 40,
                  color: Colors.yellow,
                ),
                PieChartSectionData(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.green.shade900,
                  ),
                  value: 50,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
