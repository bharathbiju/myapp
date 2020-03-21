import 'package:flutter/material.dart';
import 'package:myapp/clg_details.dart';

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
        backgroundColor: Colors.white,
        title: Text(widget.list.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(widget.list.title),
          ),
         
          SizedBox(
            height: 1.0,
          ),
          Expanded(child: Text(""),
          )

        ],
       ),
    );
  }
}
