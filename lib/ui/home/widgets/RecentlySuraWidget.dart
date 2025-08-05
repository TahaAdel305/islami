import 'package:flutter/material.dart';
import 'package:islami/style/assets_manger.dart';
import 'package:islami/style/color_manger.dart';

class RecentlySuraWidget extends StatelessWidget {
  const RecentlySuraWidget({super.key});

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
                Text("Al-Anbiya",
                  style: TextStyle(
                    fontFamily: "janna",
                    fontSize: 24,
                    color: color_manger.scandery,
                    fontWeight: FontWeight.w700
                  ),),
                Text("الأنبياء",
                  style: TextStyle(
                    fontFamily: "janna",
                    fontSize: 24,
                    color: color_manger.scandery,
                    fontWeight: FontWeight.w700
                  ),),
                Text("112 Verses",
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
