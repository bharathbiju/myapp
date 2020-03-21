import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/interest.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

void enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

class Graphpt extends StatefulWidget {
  Graphpt({
    Key key,
    this.subject1,
    this.mark1,
    this.subject2,
    this.mark2,
    this.subject3,
    this.mark3,
    this.subject4,
    this.mark4,
    this.subject5,
    this.mark5,
    this.subject6,
    this.mark6,
  }) : super(key: key);

  var subject1,
      mark1,
      subject2,
      mark2,
      subject3,
      mark3,
      subject4,
      mark4,
      subject5,
      mark5,
      subject6,
      mark6;

  @override
  _GraphptState createState() => _GraphptState();
}

class _GraphptState extends State<Graphpt> {
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
    dataMap.putIfAbsent(widget.subject1, () => double.parse(widget.mark1));
    dataMap.putIfAbsent(widget.subject2, () => double.parse(widget.mark2));
    dataMap.putIfAbsent(widget.subject3, () => double.parse(widget.mark3));
    dataMap.putIfAbsent(widget.subject4, () => double.parse(widget.mark4));
    dataMap.putIfAbsent(widget.subject5, () => double.parse(widget.mark5));
    dataMap.putIfAbsent(widget.subject6, () => double.parse(widget.mark6));
  }

  @override
  Widget build(BuildContext context) {
    final controller = FabCircularMenuController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Analysis based on 12th Mark"),
      ),
      body: 
      
      // floatingActionButton: FloatingActionButton(
      //   onPressed: togglePieChart,
      //   child: Icon(Icons.insert_chart),
      // ),
       FabCircularMenu(
         child :Container(
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
       ringColor: Colors.blue,
          controller: controller,
          options: <Widget>[
            IconButton(icon: Icon(Icons.insert_chart), onPressed: togglePieChart, iconSize: 48.0, color: Colors.black),
            IconButton(icon: Icon(Icons.arrow_forward), onPressed:() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InterestPage(
                                        
                                        )));
                          },
                           iconSize: 48.0, color: Colors.black),
          ],
        ),
      );
  }

  void togglePieChart() {
    setState(() {
      toggle = !toggle;
    });
  }
}
