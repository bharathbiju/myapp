import 'package:flutter/material.dart';

import 'donutchart.dart';

class Ten extends StatefulWidget{
  Tenthmark createState()=> Tenthmark();
}

class Tenthmark extends State<Ten>{
  var english,math,science;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("thenth mark"),
      ),
      body: Form (
        child:Column ( 
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 16.0),
          new Text("English"),
           DropdownButton<String>(
            value: english,
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                              english = newValue;
                            });
                          },
                          items: <String>['100', '50','0']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 16.0),
                         new Text("Math"),
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
                          items: <String>['100', '50','0']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                          SizedBox(height: 16.0),
                         new Text("Science"),
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
                          items: <String>['100', '50','0']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 20.0),
                         new RaisedButton(
              child: new Text('done'),
              onPressed:(){
                  {
       Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Graph(english: english, math: math , science: science,)),
      );
    }
              }
            ),

        ]
                    ),
                  ),
    );
                }
              
               
}