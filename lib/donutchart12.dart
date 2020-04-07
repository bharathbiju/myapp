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
    this.m1,
    this.subject2,
    this.m2,
    this.subject3,
    this.m3,
    this.subject4,
    this.m4,
    this.subject5,
    this.m5,
    this.subject6,
    this.m6,
    this.gt
  }) : super(key: key);

  var subject1,
      m1,
      subject2,
      m2,
      subject3,
      m3,
      subject4,
      m4,
      subject5,
      m5,
      subject6,
      m6,gt;

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
    dataMap.putIfAbsent(widget.subject1, () => double.parse(widget.m1));
    dataMap.putIfAbsent(widget.subject2, () => double.parse(widget.m2));
    dataMap.putIfAbsent(widget.subject3, () => double.parse(widget.m3));
    dataMap.putIfAbsent(widget.subject4, () => double.parse(widget.m4));
    dataMap.putIfAbsent(widget.subject5, () => double.parse(widget.m5));
    dataMap.putIfAbsent(widget.subject6, () => double.parse(widget.m6));
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
                                        language1: widget.m1,
                                  language2: widget.m2,
                                  math: widget.m3,
                                  science: widget.m4,
                                  social: widget.m5,
                                  subject6:widget.m6,
                                  grouptype:widget.gt
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
