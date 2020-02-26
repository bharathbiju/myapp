import 'package:flutter/material.dart';
import 'package:myapp/plustwomark.dart';
import 'package:myapp/tenthmark.dart';


class second_page extends StatelessWidget {
  second_page({Key key, this.name, this.dropdownValue, this.section})
      : super(key: key);
  final String name;
  final String dropdownValue;
  final String section;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("welcome " + name + " of class" + section + "th"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: new Center(
        child: new ButtonBar(
          mainAxisSize: MainAxisSize
              .min, // this will take space as minimum as posible(to center)
          children: <Widget>[
            new RaisedButton(
              child: new Text('marks'),
              onPressed:check() ? (){class10(context);} : (){class12(context);},
            ),
            new RaisedButton(
              child: new Text('intrest'),
              onPressed: null,
            ),
            new RaisedButton(
              child: new Text('result'),
              onPressed: null
            ),
          ],
        ),
      ),
    );
  }
bool check()
{
  if (section=='10')
  return true;
  else
  return false;
}

  void class10(BuildContext context) {
    print('Form submitted');
    {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Ten()),
      );
    }
  }

    void class12(BuildContext context) {
    print('Form submitted');
    {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Plustwomark()),
      );
    }
  }

   
}
