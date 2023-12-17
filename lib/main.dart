import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Pie Chart Example'),
        ),
        body: Center(
          child: PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                  value: 30,
                  color: Colors.blue,
                  title: 'A',
                  radius: 80,
                  titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                PieChartSectionData(
                  value: 20,
                  color: Colors.green,
                  title: 'B',
                  radius: 80,
                  titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                PieChartSectionData(
                  value: 50,
                  color: Colors.orange,
                  title: 'C',
                  radius: 80,
                  titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
              borderData: FlBorderData(
                show: false,
              ),
              centerSpaceRadius: 50,
            ),
          ),
        ),
      ),
    );
  }
}
