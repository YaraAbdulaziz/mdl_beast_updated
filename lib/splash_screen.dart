import 'package:flutter/material.dart';
import 'package:mdl_beast_updated/home_page.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => home()
      )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Image.asset("assets/splash_screen.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          //height: double.infinity,
        ),
      ),
    );
  }
}