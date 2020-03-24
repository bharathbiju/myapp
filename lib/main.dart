import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/registration.dart';

 
void main() => runApp(SplashHandler());

class SplashHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcom to CG.",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcom to ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: "Poppins-Bold",
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "\nCGs",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 50,
                fontFamily: "Poppins-Bold",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
