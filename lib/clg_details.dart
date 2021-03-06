import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/clg_details_explained.dart';
import 'dart:convert';

class Clg extends StatefulWidget {
  @override
  _ClgState createState() => _ClgState();
}

class _ClgState extends State<Clg> {
  List<ClgList> _listClg = List<ClgList>();
  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  bool _isSearching;
  String _searchText = "";
  List<ClgList> searchresult = List<ClgList>();

  _ClgState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchText = _controller.text;
        });
      }
    });
  }

  Widget appBarTitle = new Text(
    "Collage Details",
  );
  Future<List<ClgList>> fetchNotes() async {
    var url =
        'https://raw.githubusercontent.com/Samson-Antony/final-project/master/json/clg_list.json';
    var response = await http.get(url);

    var ingList = List<ClgList>();
    if (response.statusCode == 200) {
      var ingListJson = json.decode(response.body);
      for (var ingListJson in ingListJson) {
        ingList.add(ClgList.fromJson(ingListJson));
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
      new IconButton(
        icon: icon,
        onPressed: () {
          setState(() {
            if (this.icon.icon == Icons.search) {
              this.icon = new Icon(
                Icons.close,
                color: Colors.white,
              );
              this.appBarTitle = new TextField(
                controller: _controller,
                style: new TextStyle(
                  color: Colors.white,
                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search, color: Colors.white),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Colors.white)),
                onChanged: searchOperation,
              );
              _handleSearchStart();
            } else {
              _handleSearchEnd();
            }
          });
        },
      ),
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
      for (int i = 0; i < _listClg.length; i++) {
        String data = _listClg[i].collegename;
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult.add(_listClg[i]);
        }
      }
    }
  }

  @override
  void initState() {
    fetchNotes().then((value) {
      setState(() {
        _listClg.addAll(value);
        _listClg.sort((a, b) => a.collegename.compareTo(b.collegename));
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
              child: searchresult.length != 0 || _controller.text.isNotEmpty
                  ? ListView.builder(
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
                                    searchresult[index].collegename,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClgImagePage(
                                          list: searchresult[index],
                                        )));
                          },
                        );
                      },
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: _listClg.length,
                      itemBuilder: (context, index) {
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
                                    _listClg[index].collegename,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClgImagePage(
                                          list: _listClg[index],
                                        )));
                          },
                        );
                      },
                    ))
        ],
      )),
    );
  }
}

class ClgList {
  String collegename;
  String description;
  String address;
  String longitude;
  String latitude;
  String extra;
  String webpage;

  ClgList(this.collegename, this.description, this.address, this.latitude,
      this.longitude, this.extra, this.webpage);

  ClgList.fromJson(Map<String, dynamic> json) {
    collegename = json['collegename'];
    description= json['description'];
    address= json['address'];
    longitude= json['longitude'];
    latitude= json['latitude'];
    extra= json['extra'];
    webpage= json['webpage'];
  }
}
