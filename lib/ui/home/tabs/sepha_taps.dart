import 'package:flutter/material.dart';
import 'package:islami/style/assets_manger.dart';

class sepha_taps extends StatelessWidget {
  const sepha_taps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  assets_manger.sebhaBackground),
                  fit: BoxFit.fill)),
    );
  }
}
