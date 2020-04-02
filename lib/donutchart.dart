import 'dart:io';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/interest.dart';
import 'package:pie_chart/pie_chart.dart';

void enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}


class Graph extends StatefulWidget {
  Graph(
      {Key key,
      this.language1,
      this.language2,
      this.math,
      this.social,
      this.science})
      : super(key: key);

  var language1, science, math, language2, social;
  

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
    dataMap.putIfAbsent("language1", () => double.parse(widget.language1));
    dataMap.putIfAbsent("language2", () => double.parse(widget.language2));
    dataMap.putIfAbsent("social", () => double.parse(widget.social));
    dataMap.putIfAbsent("Math", () => double.parse(widget.math));
    dataMap.putIfAbsent("Science", () => double.parse(widget.science));

  }

  @override
  Widget build(BuildContext context) {
    var controller;
        return Scaffold(
          appBar: AppBar(
            title: Text("Analysis based on 10th Mark"),
         
          ),
          body:  FabCircularMenu(
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
                                      language1: widget.language1,
                                  language2: widget.language2,
                                  math: widget.math,
                                  science: widget.science,
                                  social: widget.social,
                                        
                                        )));
                          },
                           iconSize: 48.0, color: Colors.black),
          ],
        ),
      // body: Container(
      //   child: Center(
      //     child: toggle
      //         ? PieChart(
      //             dataMap: dataMap,
      //             animationDuration: Duration(milliseconds: 800),
      //             chartLegendSpacing: 40.0,
      //             chartRadius: MediaQuery.of(context).size.width / 2.7,
      //             showChartValuesInPercentage: true,
      //             showChartValues: true,
      //             showChartValuesOutside: false,
      //             chartValueBackgroundColor: Colors.grey[200],
      //             colorList: colorList,
      //             showLegends: true,
      //             legendPosition: LegendPosition.right,
      //             decimalPlaces: 1,
      //             showChartValueLabel: true,
      //             initialAngle: 0,
      //             chartValueStyle: defaultChartValueStyle.copyWith(
      //               color: Colors.blueGrey[900].withOpacity(0.9),
      //             ),
      //             chartType: ChartType.disc,
      //           )
      //         : Text("Press FAB to show chart"),
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: togglePieChart,
      //   child: Icon(Icons.insert_chart),
      // ),
    );
  }

  void togglePieChart() {
    setState(() {
      toggle = !toggle;
    });
  }
}
