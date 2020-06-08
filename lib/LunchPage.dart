import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LunchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LunchPageState();
  }
}

class LunchPageState extends State<LunchPage> {
  initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return null; //FirstPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff329cef),
      body: Center(
        child: Image.asset(
          "images/start.PNG",
          width: width,
          height: height,
        ),
      ),
    );
  }
}
