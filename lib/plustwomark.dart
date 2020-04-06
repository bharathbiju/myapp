import 'package:flutter/material.dart';
import 'package:myapp/donutchart12.dart';

class Plustwomark extends StatefulWidget {
  Plustwomarkthmark createState() => Plustwomarkthmark();
}

class Plustwomarkthmark extends State<Plustwomark> {
  var mark1, subject1;

  var mark2;

  var subject2;

  var subject6;
  var mark6;

  String subject3;

  var mark3;

  String mark4;

  String subject4;

  var mark5;

  var subject5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plustwo Mark Details"),
      ),
      body: Form(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              new Row(children: <Widget>[
                DropdownButton<String>(
                  value: subject6,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                       subject6 = newValue;
                    });
                  },
                  items: <String>[
                    'Language1',
                    'Language2',
                    'CompSci',
                    'Physics',
                    'Chemistry',
                    'Maths',
                    'Biology',
                    'economics',
                    'commerce',
                    'accountancy'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: mark6,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      mark6 = newValue;
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
                DropdownButton<String>(
                  value: subject1,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      subject1 = newValue;
                    });
                  },
                  items: <String>[
                    'Language1',
                    'Language2',
                    'CompSci',
                    'Physics',
                    'Chemistry',
                    'Maths',
                    'Biology',
                    'economics',
                    'commerce',
                    'accountancy'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: mark1,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      mark1 = newValue;
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
                DropdownButton<String>(
                  value: subject2,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      subject2 = newValue;
                    });
                  },
                  items: <String>[
                    'Language1',
                    'Language2',
                    'CompSci',
                    'Physics',
                    'Chemistry',
                    'Maths',
                    'Biology',
                    'economics',
                    'commerce',
                    'accountancy'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: mark2,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      mark2 = newValue;
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
                DropdownButton<String>(
                  value: subject3,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      subject3 = newValue;
                    });
                  },
                  items: <String>[
                    'Language1',
                    'Language2',
                    'CompSci',
                    'Physics',
                    'Chemistry',
                    'Maths',
                    'Biology',
                    'economics',
                    'commerce',
                    'accountancy'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: mark3,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      mark3 = newValue;
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
                DropdownButton<String>(
                  value: subject4,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      subject4 = newValue;
                    });
                  },
                  items: <String>[
                    'Language1',
                    'Language2',
                    'CompSci',
                    'Physics',
                    'Chemistry',
                    'Maths',
                    'Biology',
                    'economics',
                    'commerce',
                    'accountancy'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: mark4,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      mark4 = newValue;
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
                DropdownButton<String>(
                  value: subject5,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      subject5 = newValue;
                    });
                  },
                  items: <String>[
                    'Language1',
                    'Language2',
                    'CompSci',
                    'Physics',
                    'Chemistry',
                    'Maths',
                    'Biology',
                    'economics',
                    'commerce',
                    'accountancy'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: mark5,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      mark5 = newValue;
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
              new RaisedButton(
                  child: new Text('done'),
                  onPressed: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Graphpt(
                                subject1: subject1,
                                m1: mark1,
                                subject2: subject2,
                                m2: mark2,
                                subject3: subject3,
                                m3: mark3,
                                subject4: subject4,
                                m4: mark4,
                                subject5: subject5,
                                m5: mark5,
                                subject6: subject6,
                                m6: mark6)),
                      );
                    }
                  }),
            ]),
      ),
    );
  }
}
