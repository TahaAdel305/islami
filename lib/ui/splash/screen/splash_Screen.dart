import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/style/assets_manger.dart';
import 'package:islami/ui/home/screen/homeScreen.dart';

class splashScreen extends StatefulWidget {
  static const String routeName="Splash";
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(
        seconds: 2),
            () {
          Navigator.pushReplacementNamed(context,homescreen.routeName );
        });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Image.asset(assets_manger.SplashScreen,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
