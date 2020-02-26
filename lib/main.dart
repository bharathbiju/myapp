import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:intl/intl.dart';

import 'second_page.dart';

void main() {
  runApp(new MaterialApp(
    title: 'title',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(11),
          child: RegisterForm(),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;
  final name = TextEditingController();
  String birthDate = "";
  var dropdownValue;
  var section;
  int age = -1;
  TextStyle valueTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  TextStyle textTextStyle = TextStyle(
    fontSize: 16,
  );
  TextStyle buttonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  selectDate(BuildContext context, DateTime initialDateTime,
      {DateTime lastDate}) async {
    Completer completer = Completer();
    String _selectedDateInString;
    if (Platform.isAndroid)
      showDatePicker(
              context: context,
              initialDate: initialDateTime,
              firstDate: DateTime(1970),
              lastDate: lastDate == null
                  ? DateTime(initialDateTime.year + 10)
                  : lastDate)
          .then((temp) {
        if (temp == null) return null;
        completer.complete(temp);
        setState(() {});
      });
    else
      DatePicker.showDatePicker(
        context,
        dateFormat: 'yyyy-mmm-dd',
        locale: 'en',
        onConfirm2: (temp, selectedIndex) {
          if (temp == null) return null;
          completer.complete(temp);

          setState(() {});
        },
      );
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: 'Nickname',
          //   ),
          //   validator: (String value) {
          //     if (value.trim().isEmpty) {
          //       return 'Nickname is required';
          //     }
          //   },
          // ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Full name',
            ),
            controller: name,
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Full name is required';
              }
            },
          ),
          SizedBox(
            height: 32,
          ),
          Text("gender"),
          DropdownButton<String>(
            value: dropdownValue,
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['Male', 'Female']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
           SizedBox(
            height: 32,
          ),
          Text("class"),
          DropdownButton<String>(
            value: section,
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                section = newValue;
              });
            },
            items: <String>['10', '12']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          (age > -1)
              ? Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(12, 12)),
                          border: Border.all(color: Colors.grey)),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "BirthDate: ",
                            style: textTextStyle,
                          ),
                          Text(
                            "$birthDate",
                            style: textTextStyle,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(12, 12)),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Age: ",
                            style: textTextStyle,
                          ),
                          Text(
                            "$age",
                            style: valueTextStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              : SizedBox(
                  height: 32,
                ),
          RaisedButton(
            color: Colors.blue,
            splashColor: Colors.blue.shade300,
            onPressed: () async {
              DateTime birthDate = await selectDate(context, DateTime.now(),
                  lastDate: DateTime.now());
              final df = new DateFormat('dd-MMM-yyyy');
              this.birthDate = df.format(birthDate);
              this.age = calculateAge(birthDate);

              setState(() {});
            },
            child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Select birthdate".toUpperCase(),
                  style: buttonTextStyle,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(11),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: _agreedToTOS,
                  onChanged: _setAgreedToTOS,
                ),
                GestureDetector(
                  onTap: () => _setAgreedToTOS(!_agreedToTOS),
                  child: const Text(
                    'I promise o have given the right details',
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              const Spacer(),
              OutlineButton(
                highlightedBorderColor: Colors.black,
                onPressed: _submittable() ? _submit : null,
                child: const Text('Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  bool _submittable() {
    return _agreedToTOS;
  }

  void _submit() {
    _formKey.currentState.validate();
    print('Form submitted');
    {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                second_page(name: name.text, dropdownValue: dropdownValue , section: section,)),
      );
    }
  }

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }
}
