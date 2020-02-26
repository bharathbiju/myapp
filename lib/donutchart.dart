
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

// Sets a platform override for desktop to avoid exceptions. See
// https://flutter.dev/desktop#target-platform-override for more info.
void enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}




class Graph extends StatefulWidget {
  Graph({Key key, this.english, this.math, this.science})
      : super(key: key);
  
  var english;

  var science;

  var math;


  
  @override
  _GraphState createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  
  bool toggle = false;
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];


  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("English", () =>double.parse(widget.english));
    dataMap.putIfAbsent("Math", () => double.parse(widget.math));
    dataMap.putIfAbsent("Sceience", () => double.parse(widget.science));
  }

  @override
  Widget build(BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text("Pie Chart"),
      ),
      body: Container(
        child: Center(
          child: toggle
              ? PieChart(
                  dataMap: dataMap,
                  animationDuration: Duration(milliseconds: 800),
                  chartLegendSpacing: 40.0,
                  chartRadius: MediaQuery.of(context).size.width / 2.7,
                  showChartValuesInPercentage: true,
                  showChartValues: true,
                  showChartValuesOutside: false,
                  chartValueBackgroundColor: Colors.grey[200],
                  colorList: colorList,
                  showLegends: true,
                  legendPosition: LegendPosition.right,
                  decimalPlaces: 1,
                  showChartValueLabel: true,
                  initialAngle: 0,
                  chartValueStyle: defaultChartValueStyle.copyWith(
                    color: Colors.blueGrey[900].withOpacity(0.9),
                  ),
                  chartType: ChartType.disc,
                )
              : Text("Press FAB to show chart"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: togglePieChart,
        child: Icon(Icons.insert_chart),
      ),
    );
  }

  void togglePieChart() {
    setState(() {
      toggle = !toggle;
    });
  }
}