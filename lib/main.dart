import 'package:flutter/material.dart';
import 'package:islami/ui/home/screen/homeScreen.dart';
import 'package:islami/ui/splash/screen/splash_Screen.dart';
import 'package:islami/ui/sura_details/screen/suradetails_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        splashScreen.routeName:(_)=>splashScreen(),
        homescreen.routeName:(_)=>homescreen(),
        suradetails_screen.routename:(_)=>suradetails_screen(),
      },
      initialRoute: splashScreen.routeName,
    );
  }
}
