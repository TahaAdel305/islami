import 'package:flutter/material.dart';
import 'package:islami/style/assets_manger.dart';

class radio_taps extends StatelessWidget {
  const radio_taps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(assets_manger.radioBackground),fit: BoxFit.fill)),
    );
  }
}
