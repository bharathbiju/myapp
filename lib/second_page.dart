import 'package:flutter/material.dart';
import 'package:myapp/12thmarks.dart';
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
        child: new Column(
          children: <Widget>[
          
            Expanded(flex: 1,
              child:new ButtonBar(
          // this will take space as minimum as posible(to center)
          children: <Widget>[
            new RaisedButton(
              child: new Text('Biology'),
              onPressed: () {
                var GroupType='1';
                var subject1='Language 1';
                var subject2='Language 2';
                var subject3='Physics';
                var subject4='Chemistry';
                var subject5='Maths';
                var subject6='Biology';
                Navigator.push(context,

                    MaterialPageRoute(builder: ((context) => PlusTwo(GroupType:GroupType,
                    subject1:subject1,subject2:subject2,subject3:subject3,subject4:subject4,subject5:subject5,subject6:subject6,))));
                      
                    }
            ),
            new RaisedButton(
              child: new Text('Computer'),
              onPressed: () {
                var GroupType='2';
                 var subject1='Language 1';
                var subject2='Language 2';
                var subject3='Compuer Science';
                var subject4='Physics';
                var subject5='Chemistry';
                var subject6='Maths';
                      Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => PlusTwo(GroupType:GroupType,
                    subject1:subject1,subject2:subject2,subject3:subject3,subject4:subject4,subject5:subject5,subject6:subject6,))));
                    },
            ),
            new RaisedButton(child: new Text('Economics'), onPressed: () {
              var GroupType='3';
               var subject1='Language 1';
                var subject2='Language 2';
                var subject3='Computer Science';
                var subject4='Economics';
                var subject5='Commerce';
                var subject6='Accountancy';
              Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => PlusTwo(GroupType:GroupType,
                    subject1:subject1,subject2:subject2,subject3:subject3,subject4:subject4,subject5:subject5,subject6:subject6,))));
                      
                    }),
             new RaisedButton(child: new Text('Others'), onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Plustwomark())));
              }),
          ],
        ), ),
         Expanded(child: new Text("Please Select the Course that you had persuade during 10th \n\n> Bio Stream(Chemistry,Biology,Physics etc)\n\n >Computer Stream(Chemistry,Computer,Physics etc) \n\n >Economics Stream(Accounts,Business Studies,Economics etc)")),
          ],
        )
      )
    );
  }
}
