import 'package:flutter/material.dart';
import 'donutchart.dart';

class Ten extends StatefulWidget {
  Tenthmark createState() => Tenthmark();
}

class Tenthmark extends State<Ten> {
  var language1, math, science, language2, social;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tenth mark"),
      ),
      body: Form(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Row(children: <Widget>[
                SizedBox(width: 16.0),
                new Text("Language 1"),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: language1,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      language1 = newValue;
                    });
                  },
                  items: <String>[
                    '40',
                    '50',
                    '60',
                    '70',
                    '80',
                    '90',
                    '100'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ]),
              SizedBox(height: 16.0),
              new Row(children: <Widget>[
                SizedBox(width: 16.0),
                Text("Language 2"),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: language2,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      language2 = newValue;
                    });
                  },
                  items: <String>[
                   '40',
                    '50',
                    '60',
                    '70',
                    '80',
                    '90',
                    '100'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ]),
              SizedBox(height: 16.0),
              new Row(children: <Widget>[
                SizedBox(width: 16.0),
                new Text("Math"),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: math,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      math = newValue;
                    });
                  },
                  items: <String>[
                   '40',
                    '50',
                    '60',
                    '70',
                    '80',
                    '90',
                    '100'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ]),
              SizedBox(height: 16.0),
              new Row(children: <Widget>[
                SizedBox(width: 16.0),
                Text("Social"),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: social,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      social = newValue;
                    });
                  },
                  items: <String>[
                    '40',
                    '50',
                    '60',
                    '70',
                    '80',
                    '90',
                    '100'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ]),
              SizedBox(height: 16.0),
              new Row(children: <Widget>[
                SizedBox(width: 16.0),
                new Text("Science"),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: science,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      science = newValue;
                    });
                  },
                  items: <String>[
                  '40',
                    '50',
                    '60',
                    '70',
                    '80',
                    '90',
                    '100'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ]),
              SizedBox(height: 20.0),
              new RaisedButton(
                  child: new Text('done'),
                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Graph(
                                  language1: language1,
                                  language2: language2,
                                  math: math,
                                  science: science,
                                  social: social,
                                )),
                      );
                    }
                  }),
            ]),
      ),
    );
  }
}
