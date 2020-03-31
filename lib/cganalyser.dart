import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class CgAnalyser extends StatefulWidget {
  @override
  _CgAnalyserState createState() => _CgAnalyserState();
}

class _CgAnalyserState extends State<CgAnalyser> {
  List<CgAnalyserList> _list = List<CgAnalyserList>();
  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  bool _isSearching;
  String _searchText = "";
  List<CgAnalyserList> searchresult = List<CgAnalyserList>();

  // _CgAnalyserState() {
  //   _controller.addListener(() {
  //     if (_controller.text.isEmpty) {
  //       setState(() {
  //         _isSearching = false;
  //         _searchText = "";
  //       });
  //     } else {
  //       setState(() {
  //         _isSearching = true;
  //         _searchText = _controller.text;
  //       });
  //     }
  //   });
  // }

  Widget appBarTitle = new Text(
    "",
  );
  Future<List<CgAnalyserList>> fetchNotes() async {
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
    /*...*/searchOperation("(90, 90, 90, 90, 90)");
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

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color: Colors.white,
      );
      this.appBarTitle = new Text(
        "",
        style: new TextStyle(color: Colors.white),
      );
      _isSearching = false;
      _controller.clear();
      searchresult.clear();
    });
  }

  void searchOperation(String searchText) {
    searchresult.clear();
    if (_isSearching != null) {
      for (int i = 0; i < _list.length; i++) {
        String data = _list[i].input;
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult.add(_list[i]);
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
              child:  ListView.builder(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                    )
                  // : ListView.builder(
                  //     shrinkWrap: true,
                  //     itemCount: _list.length,
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
                  //                   _list[index].input,
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
                  //   ))
          )
        ],
      )),
    );
  }
}

class CgAnalyserList {
  
  String input;
  String output;
  
  CgAnalyserList(this.input,this.output);

  CgAnalyserList.fromJson(Map<String, dynamic> json) {
    
    input=json['input'];
    output=json['output'];
    
  }
}