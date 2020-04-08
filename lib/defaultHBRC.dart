import 'package:flutter/material.dart';
import 'package:flutter_multiselect/flutter_multiselect.dart';
import 'package:myapp/cganalyser.dart';
import 'package:myapp/interest.dart';


class DefaultHBRC extends StatefulWidget {
DefaultHBRC(
      {Key key,
      this.language1,
      this.language2,
      this.math,
      this.social,
      this.science,
      this.subject6,
      this.grouptype})
      : super(key: key);

  var language1, science, math, language2, social,subject6,grouptype;

  @override
  _DefaultHBRCState createState() => _DefaultHBRCState();
}

class _DefaultHBRCState extends State<DefaultHBRC> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intrest"),
      ),
      body: Center(
        child: new Form(
          key: _formKey,
          autovalidate: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new MultiSelect(
                    autovalidate: true,
                    initialValue: [],
                    titleText: 'Select your preference',
                    maxLength: 5, // optional
                    validator: (dynamic value) {
                      if (value == null) {
                        return 'Please select one or more option(s)';
                      }
                      return null;
                    },
                    errorText: 'Please select one or more option(s)',
                    dataSource: [
    {"name": "Drawing", "code": "Civil Enginner"},
     {"name": "sketching", "code": "Animation Designer"},
     {"name": "speech", "code": "law"},
    
    ],
                    textField: 'name',
                    valueField: 'code',
                    filterable: true,
                    required: true,
                    onSaved: (text) {
                      print('The value is $text');


                      showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("We would recommend you to take "),
          content: new Text('$text '),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () 
              {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InterestPage(
                                      language1: widget.language1,
                                  language2: widget.language2,
                                  math: widget.math,
                                  science: widget.science,
                                  social: widget.social,
                                  subject6:widget.subject6,
                                  grouptype:widget.grouptype,
                                        
                                        )));
                          }
            ),
          ],
        );
      },
    );




                      // {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => InterestPage(
                      //                 language1: widget.language1,
                      //             language2: widget.language2,
                      //             math: widget.math,
                      //             science: widget.science,
                      //             social: widget.social,
                      //             subject6:widget.subject6,
                      //             grouptype:widget.grouptype,
                                        
                      //                   )));
                      //     }
                    }),
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                child: Text('Save'),
                color: Colors.white,
                onPressed: () {
                  _onFormSaved();
                },
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onFormSaved() {
    final FormState form = _formKey.currentState;
    form.save();
  }
}
