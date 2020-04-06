import 'package:flutter/material.dart';
import 'package:myapp/12thmarks.dart';
import 'package:myapp/g1marks.dart';
import 'package:myapp/g2marks.dart';
import 'package:myapp/g3marks.dart';
import 'package:myapp/plustwomark.dart';

class second_page extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("welcome "),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: new Center(
        child: new ButtonBar(
          mainAxisSize: MainAxisSize
              .min, // this will take space as minimum as posible(to center)
          children: <Widget>[
            new RaisedButton(
              child: new Text('G1'),
              onPressed: () {
                var GroupType='1';
                var subject1='computer';
                var subject2='English';
                var subject3='English';
                var subject4='English';
                var subject5='English';
                var subject6='English';
                Navigator.push(context,

                    MaterialPageRoute(builder: ((context) => PlusTwo(GroupType:GroupType,
                    subject1:subject1,subject2:subject2,subject3:subject3,subject4:subject4,subject5:subject5,subject6:subject6,))));
                      
                    }
            ),
            new RaisedButton(
              child: new Text('G2'),
              onPressed: () {
                var GroupType='2';
                 var subject1='bio';
                var subject2='English';
                var subject3='English';
                var subject4='English';
                var subject5='English';
                var subject6='English';
                      Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => PlusTwo(GroupType:GroupType,
                    subject1:subject1,subject2:subject2,subject3:subject3,subject4:subject4,subject5:subject5,subject6:subject6,))));
                    },
            ),
            new RaisedButton(child: new Text('G3'), onPressed: () {
              var GroupType='3';
               var subject1='Eco';
                var subject2='English';
                var subject3='English';
                var subject4='English';
                var subject5='English';
                var subject6='English';
              Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => PlusTwo(GroupType:GroupType,
                    subject1:subject1,subject2:subject2,subject3:subject3,subject4:subject4,subject5:subject5,subject6:subject6,))));
                      
                    }),
             new RaisedButton(child: new Text('Others'), onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Plustwomark())));
              }),
          ],
        ),
      ),
    );
  }
}
