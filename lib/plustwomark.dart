import 'package:flutter/material.dart';

class Plustwomark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("plus two mark"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('welcome to collage!'),
        ),
      ),
    );
  }
}