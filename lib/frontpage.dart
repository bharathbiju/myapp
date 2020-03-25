import 'package:flutter/material.dart';
import 'package:myapp/clg_details.dart';
import 'package:myapp/registration.dart';

import 'course_details.dart';

class Frontpage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<Frontpage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Career Guidance'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
        body: new CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                      child: Text(
                          "Courses\n\n Get details on all the course before fixing your Goal"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Ingredient())));
                      },
                      color: Colors.red,
                      textColor: Colors.yellow,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      splashColor: Colors.grey,
                    ),
                    color: Colors.blue,
                  ),
                   Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                      child: Text(
                          "Collages\n\n Know which place will help you achive your Goal"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Clg())));
                      },
                      color: Colors.red,
                      textColor: Colors.yellow,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      splashColor: Colors.grey,
                    ),
                    color: Colors.blue,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                      child: Text(
                          "CG Analysor\n\n Let us help you conclude"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>MyApp())));
                      },
                      color: Colors.red,
                      textColor: Colors.yellow,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      splashColor: Colors.grey,
                    ),
                    color: Colors.blue,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: RaisedButton(
                      child: Text(
                          "Quiz"),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: ((context) => Clg())));
                      },
                      color: Colors.red,
                      textColor: Colors.yellow,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      splashColor: Colors.grey,
                    ),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
