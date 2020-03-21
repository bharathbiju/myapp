import 'package:flutter/material.dart';
import 'package:myapp/course_details.dart';

class ImagePage extends StatefulWidget {
  final IngredientList list;
  ImagePage({Key key, this.list}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
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
          Expanded(child: Text("Content:\n\n"+widget.list.content+"\n\nEligibility:\n\n"+widget.list.eligibility+"\n\nwork:\n\n"+widget.list.work+"\n\nBest collage:\n\n"+widget.list.bestclg),
          )

        ],
       ),
    );
  }
}
