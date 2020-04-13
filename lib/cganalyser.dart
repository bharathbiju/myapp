

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CgAnalyser extends StatefulWidget {
  var language1, science, math, language2, social, text;

  var subject6;

  var grouptype;
  CgAnalyser(
      {Key key,
      this.language1,
      this.language2,
      this.math,
      this.social,
      this.science,
      this.subject6,
      this.grouptype,
      this.text
      })
      : super(key: key);

  @override
  _CgAnalyserState createState() => _CgAnalyserState();
}

class _CgAnalyserState extends State<CgAnalyser> {
  List<CgAnalyserList> _list = List<CgAnalyserList>();
  List<CgAnalyserList2> _list2 = List<CgAnalyserList2>();
  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  bool _isSearching;
  String _searchText = "";
  var fet;
  List<CgAnalyserList> searchresult = List<CgAnalyserList>();
  List<CgAnalyserList2> searchresult2 = List<CgAnalyserList2>();

  String mark = "";
  String text = "";

  Widget appBarTitle = new Text(
    "",
  );

  Future<List<CgAnalyserList2>> fetchNotes2() async {
    
    var url2 =
        'https://raw.githubusercontent.com/Samson-Antony/final-project/master/for%20loop%20prediction/test.json';
    var response2 = await http.get(url2);
    var ingList2 = List<CgAnalyserList2>();

    if (response2.statusCode == 200) {
      var ingListJson2 = json.decode(response2.body);
      for (var ingListJson2 in ingListJson2) {
        ingList2.add(CgAnalyserList2.fromJson(ingListJson2));
      }
    }
    return ingList2;
  }

  Future<List<CgAnalyserList>> fetchNotes() async {
    mark =
        "(${widget.language1.toString()}, ${widget.language1.toString()}, ${widget.language1.toString()}, ${widget.language1.toString()}, ${widget.language1})";
    var url =
        'https://raw.githubusercontent.com/Samson-Antony/final-project/master/for%20loop%20prediction/10th-prediction.json';

    var response = await http.get(url);

    var ingList = List<CgAnalyserList>();

    if (response.statusCode == 200) {
      var ingListJson = json.decode(response.body);
      for (var ingListJson in ingListJson) {
        ingList.add(CgAnalyserList.fromJson(ingListJson));
      }
    }
    return ingList;
  }

  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  Widget buildAppBar(BuildContext context) {
    return new AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
      new FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {
          searchresult.clear();
          searchresult2.clear();
          /*...*/ searchOperation(mark);
          for (var item in widget.text) {
          searchOperation2(item);
          }
         
          setState(() {
            fet = "bmb";
          });
        },
        child: Text(
          "Results",
          style: TextStyle(fontSize: 20.0),
        ),
      )
      // new IconButton(
      //   icon: icon,
      //   onPressed: () {
      //     setState(() {
      //       if (this.icon.icon == Icons.search) {
      //         this.icon = new Icon(
      //           Icons.close,
      //           color: Colors.white,
      //         );
      //         this.appBarTitle = new TextField(
      //           controller: _controller,
      //           style: new TextStyle(
      //             color: Colors.white,
      //           ),
      //           decoration: new InputDecoration(
      //               prefixIcon: new Icon(Icons.search, color: Colors.white),
      //               hintText: "Search...",
      //               hintStyle: new TextStyle(color: Colors.white)),
      //           onChanged: searchOperation,
      //         );
      //         _handleSearchStart();
      //       } else {
      //         _handleSearchEnd();
      //       }
      //     });
      //   },
      // ),
    ]);
  }

  // void _handleSearchStart() {
  //   setState(() {
  //     _isSearching = true;
  //   });
  // }

  // void _handleSearchEnd() {
  //   setState(() {
  //     this.icon = new Icon(
  //       Icons.search,
  //       color: Colors.white,
  //     );
  //     this.appBarTitle = new Text(
  //       "",
  //       style: new TextStyle(color: Colors.white),
  //     );
  //     _isSearching = false;
  //     _controller.clear();
  //     searchresult.clear();
  //   });
  // }

  void searchOperation(String searchText) {
    if (_isSearching != null) {
      for (int i = 0; i < _list.length; i++) {
        String data = _list[i].input;
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult.add(_list[i]);
        }
      }
    }
  }

  void searchOperation2(String searchText) {
    if (_isSearching != null) {
      for (int i = 0; i < _list2.length; i++) {
        String data = _list2[i].input;
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult2.add(_list2[i]);
        }
      }
    }
  }

  @override
  void initState() {
    fetchNotes().then((value) {
      setState(() {
        _list.addAll(value);
        _list.sort((a, b) => a.input.compareTo(b.input));
      });
    });
    fetchNotes2().then((value2) {
      setState(() {
        _list2.addAll(value2);
        _list2.sort((a, b) => a.input.compareTo(b.input));
      });
    });
    super.initState();
    _isSearching = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: buildAppBar(context),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: searchresult.length != 0
                ? new Center(
                    child: Column(
                      children: <Widget>[
                        Expanded(child: new Text("Based on Intrest")),
                        Expanded(child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: searchresult2.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 32.0,
                                      bottom: 32.0,
                                      left: 16.0,
                                      right: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        searchresult2[index].favcour,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => ImagePage(
                                //               list: searchresult[index],
                                //             )));
                              },
                            );
                          },
                        ),),
                        Expanded(child: new Text("Based on marks")),
                        
                        Expanded(
                          
                            
                             child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: searchresult.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 32.0,
                                      bottom: 32.0,
                                      left: 16.0,
                                      right: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        searchresult[index].output,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => ImagePage(
                                //               list: searchresult[index],
                                //             )));
                              },
                            );
                          },
                        ))
                      ],
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "press Result",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
            // : ListView.builder(
            //     shrinkWrap: true,
            //     itemBuilder: (context, index) {
            //       return GestureDetector(
            //         child: Card(
            //           child: Padding(
            //             padding: const EdgeInsets.only(
            //                 top: 32.0,
            //                 bottom: 32.0,
            //                 left: 16.0,
            //                 right: 16.0),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: <Widget>[
            //                 Text(
            //                   "press Result",
            //                   style: TextStyle(
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         onTap: () {
            //           // Navigator.push(
            //           //     context,
            //           //     MaterialPageRoute(
            //           //         builder: (context) => ImagePage(
            //           //               list: _list[index],
            //           //             )));
            //         },
            //       );
            //     },
            //   )
          )
        ],
      )),
    );
  }
}

class CgAnalyserList {
  String input;
  String output;

  CgAnalyserList(this.input, this.output);

  CgAnalyserList.fromJson(Map<String, dynamic> json) {
    input = json['input'];
    output = json['output'];
  }
}

class CgAnalyserList2 {
  String favcour;
  String favcourcorl;
  String input;

  CgAnalyserList2(this.favcour, this.favcourcorl, this.input);

  CgAnalyserList2.fromJson(Map<String, dynamic> json) {
    favcour = json['favcour'];
    favcourcorl = json['favcourcorl'];
    input = json['input'];
  }
}
