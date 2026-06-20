import 'package:flutter/material.dart';
import 'package:islami/style/assets_manger.dart';

class time_taps extends StatelessWidget {
  const time_taps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(assets_manger.time_Background),fit: BoxFit.fill)),
    );
  }
}
