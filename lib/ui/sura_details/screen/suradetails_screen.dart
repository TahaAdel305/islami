import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/assets_manger.dart';
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
         scrolledUnderElevation: 0,
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  Row(
                  children: [
                    Image.asset(
                      assets_manger.left_corner,
                    ),
                    Expanded(
                      child: Text(suraModel.suraNameAr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "janna",
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: color_manger.primary
                        ),),
                    ),
                    Image.asset(
                      assets_manger.right_corner,
                    ),
                  ],
                ),
                  SizedBox(height: 19),
                  Expanded(
                    child:suratext.isEmpty
                        ?Center(child: CircularProgressIndicator(
                      color: color_manger.primary,
                    ),):SingleChildScrollView(
                      child: Text(suratext,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: color_manger.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "janna"
                        ),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(assets_manger.img_bottom_decoration,
          width: double.infinity,

          )
        ],
      ),
    );
  }

  loadfile(String suraNamper)async{
    suratext = await rootBundle.loadString("assets/files/$suraNamper.txt");
    List<String>lins = suratext.split("\n");
    String temp = "";
    for(int i=0;i<lins.length;i++){
      temp+=lins[i].trim();
      temp+=" (${i+1}) ";
    }
    suratext = temp;
    setState(() {


    });
  }
}
