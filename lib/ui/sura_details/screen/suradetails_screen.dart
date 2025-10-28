import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/color_manger.dart';

class suradetails_screen extends StatefulWidget {
  static const String routename = "suradetails";

  @override
  State<suradetails_screen> createState() => _suradetails_screenState();
}

class _suradetails_screenState extends State<suradetails_screen> {
  String suratext = "" ;
  late SuraModel suraModel;
@override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if(suratext.isEmpty){
      loadfile(suraModel.suraNumber.toString());
    }

    return Scaffold(
      backgroundColor: color_manger.scandery,

      appBar: AppBar(
        iconTheme: IconThemeData(color: color_manger.primary,),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          suraModel.suraNameEn,
          style: TextStyle(
            fontFamily: "janna",
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: color_manger.primary
          ),
        ),
      ),
      body: Text(suratext,style: TextStyle(
        color: color_manger.primary,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: "janna"
      ),),
    );
  }

  loadfile(String suraNamper)async{
    suratext = await rootBundle.loadString("assets/files/$suraNamper.txt");
    print(suratext);
    setState(() {


    });
  }
}
