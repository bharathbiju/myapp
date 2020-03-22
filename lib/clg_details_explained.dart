import 'package:flutter/material.dart';
import 'package:myapp/clg_details.dart';
import 'package:myapp/webpage.dart';

class ClgImagePage extends StatefulWidget {
  final ClgList list;
  ClgImagePage({Key key, this.list}) : super(key: key);

  @override
  _ClgImagePageState createState() => _ClgImagePageState();
}

class _ClgImagePageState extends State<ClgImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.list.collegename),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex:10,
            child: SingleChildScrollView(
            child: Text("Description:\n"+widget.list.description+"\n\nAddress:\n"+widget.list.address+"\n\nextra:\n"+widget.list.extra),
          ),),

        ],
       ),
       floatingActionButton: FloatingActionButton(
      onPressed: () {
                            var webpage=widget.list.webpage;
                            var name=widget.list.collegename;
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) => WikipediaExplorer(
                                                                  webpage:webpage,
                                                                  name:name
                                        )));
                          },
      child: Icon(Icons.chrome_reader_mode),
      backgroundColor: Colors.green,
    ),
       
    );
  }
}
