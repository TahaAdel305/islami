import 'package:flutter/material.dart';
import 'package:islami/style/assets_manger.dart';
import 'package:islami/style/color_manger.dart';

class hades_taps extends StatelessWidget {
  const hades_taps({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
            alignment: Alignment.topCenter,
            height: double.infinity,
            child: Image.asset( assets_manger.ahadesBackground,fit: BoxFit.fill,))
      ],
    );


  }
}
