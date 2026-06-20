import 'package:flutter/material.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/assets_manger.dart';
import 'package:islami/style/color_manger.dart';

class RecentlySuraWidget extends StatelessWidget {
  final SuraModel suraModel ;
  const RecentlySuraWidget({super.key,required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color_manger.primary
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(suraModel.suraNameEn,
                  style: TextStyle(
                    fontFamily: "janna",
                    fontSize: 24,
                    color: color_manger.scandery,
                    fontWeight: FontWeight.w700
                  ),),
                Text(suraModel.suraNameAr,
                  style: TextStyle(
                    fontFamily: "janna",
                    fontSize: 24,
                    color: color_manger.scandery,
                    fontWeight: FontWeight.w700
                  ),),
                Text("${suraModel.versesNumber} Verses",
                  style: TextStyle(
                    fontFamily: "janna",
                    fontSize: 14,
                    color: color_manger.scandery,
                    fontWeight: FontWeight.w700
                  ),),
              ],
            ),
          ),
          Image.asset(assets_manger.quran_card)
        ],
      ),
    );
  }
}
