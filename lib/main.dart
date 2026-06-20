import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/style/prefshelper.dart';
import 'package:islami/ui/home/screen/homeScreen.dart';
import 'package:islami/ui/splash/screen/splash_Screen.dart';
import 'package:islami/ui/sura_details/screen/suradetails_screen.dart';

 main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  await PrefHelper.init();

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
