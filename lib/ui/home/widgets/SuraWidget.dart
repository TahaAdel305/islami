import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/assets_manger.dart';
import 'package:islami/ui/sura_details/screen/suradetails_screen.dart';

class SuraWidget extends StatelessWidget {
  final SuraModel suraModel;
  final void Function() addtorecent;
  const SuraWidget({super.key, required this.suraModel,required this.addtorecent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        addtorecent();
        Navigator.pushNamed(context,suradetails_screen.routename,arguments: suraModel);
      },
      child: Row(
          children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              assets_manger.suranumaber,
              height: 52,
              width: 52,
            ),
            Text(
              suraModel.suraNumber.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                fontFamily: "janna",
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(suraModel.suraNameEn,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: "janna",
                    color: Colors.white,
                  )),
              Text("${suraModel.versesNumber} verses",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: "janna",
                    color: Colors.white,
                  )),
            ],
          ),
        ),
            Text(suraModel.suraNameAr,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: "janna",
                  color: Colors.white,
                )
            ),
        ]
      ),
    );
  }
}
