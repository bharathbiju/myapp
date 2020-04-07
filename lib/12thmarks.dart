import 'package:flutter/material.dart';
import 'donutchart.dart';
import 'donutchart12.dart';

class PlusTwo extends StatefulWidget {
  String GroupType;

  String subject1;

  var subject2;

  var subject4;

  var subject6;

  var subject5;

  var subject3;

    PlusTwo({
    Key key,
    this.GroupType,
    this.subject1,
    this.subject2,
    this.subject3,
    this.subject4,
    this.subject5,
    this.subject6,
  }) : super(key: key);

  

  PlusTwothmark createState() => PlusTwothmark();

  
}

class PlusTwothmark extends State<PlusTwo> {

 
  var m1,m2,m3,m4,m5,m6;

  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
          appBar: AppBar(
            title: Text("Group" +widget.GroupType+" marks"),
          ),
          body: Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Row(children: <Widget>[
                    SizedBox(width: 16.0),
                    new Text(widget.subject1),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: m1,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      m1 = newValue;
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
                Text(widget.subject2),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: m2,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      m2 = newValue;
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
                new Text(widget.subject3),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: m3,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      m3 = newValue;
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
                Text(widget.subject4),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: m4,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      m4 = newValue;
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
                new Text(widget.subject5),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: m5,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      m5 = newValue;
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
                Text(widget.subject6),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: m6,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      m6 = newValue;
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
                            builder: (context) => Graphpt(
                              subject1:widget.subject1,
                              subject2:widget.subject2,
                              subject3:widget.subject3,
                              subject4:widget.subject4,
                              subject5:widget.subject5,
                              subject6:widget.subject6,    
                                  m1: m1,
                                  m2: m2,
                                  m3: m3,
                                  m4: m4,
                                  m5: m5,
                                  m6: m6,
                                  gt:widget.GroupType

                                )),
                      );
                    }
                  }),
            ]),
      ),
    );
  }

}
