import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/model/SuraModel.dart';
import 'package:islami/style/assets_manger.dart';
import 'package:islami/style/color_manger.dart';
import 'package:islami/style/string_manger.dart';
import 'package:islami/ui/home/widgets/SuraWidget.dart';

import '../../../style/constans.dart';
import '../widgets/RecentlySuraWidget.dart';

class qran_taps extends StatefulWidget {

  @override
  State<qran_taps> createState() => _qran_tapsState();
}

class _qran_tapsState extends State<qran_taps> {
  List<SuraModel> fillterList = [];
  String searchvalue = "" ;
  List<SuraModel>mostRecentlyLst =[];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(assets_manger.quranbackground),
                  fit: BoxFit.fill)),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(assets_manger.Logo)),
                //
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 15),
                  child: TextField(
                    onChanged: (value){
                      setState(() {
                        searchvalue = value ;
                        searshsura(value);
                      });
                    },
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: color_manger.search,
                        fontFamily: "janna"),
                    decoration: InputDecoration(
                      fillColor: color_manger.scandery.withOpacity(0.7),
                      filled: true,
                      hintText: (" sura name"),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: color_manger.search,
                          fontFamily: "janna"),
                      prefixIconConstraints:
                          BoxConstraints(maxHeight: 55, maxWidth: 55),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(14),
                        child: SvgPicture.asset(assets_manger.quransearch),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: color_manger.primary,
                          )),
                      focusedBorder: OutlineInputBorder(
                          //لما ادوس عليه
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: color_manger.primary,
                          )),
                    ),
                  ),
                ),
                SizedBox    (
                  height: 20,
                ),
                if(searchvalue.isEmpty)
                  ...[
                Text(
                  strings_manger.mostRecently,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "janna",
                      color: color_manger.search),
                ),
                Expanded(
                  child: ListView.separated(

                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => RecentlySuraWidget(
                          suraModel: mostRecentlyLst[index]),
                      separatorBuilder: (context, index) => SizedBox(width: 10,),
                      itemCount: mostRecentlyLst.length),
                ),
                Text(
                  strings_manger.suralist,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "janna",
                      color: color_manger.search),
                ),
                SizedBox(
                  height: 20,
                ),],
                Expanded(
                  flex: 2,
                  child: ListView.separated(
                    itemCount: searchvalue.isNotEmpty
                        ? fillterList.length
                        : suraList.length,
                    itemBuilder: (context, index) => SuraWidget(
                      addtorecent: (){
                        mostRecentlyLst.insert(0, searchvalue.isNotEmpty
                            ?fillterList[index]
                            :suraList[index]);
                        setState(() {

                        });

                      },
                      suraModel: searchvalue.isNotEmpty
                          ?fillterList[index]
                          :suraList[index]
                    ),
                    separatorBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: Divider(
                        color: color_manger.teritary,
                        height: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  searshsura(String searchtext){
    fillterList = [];
    /*for(int i=0;i<suraList.length;i++){
      if(suraList[i].)
        fillterList.add(suraList[i]);
    }*/
    fillterList = suraList.where((element) =>
    element.suraNameEn.toLowerCase().contains(searchtext.toLowerCase())
        || element.suraNameAr.contains(searchtext)).toList();
    print(" filllestlen : ${fillterList.length}");
  }

}

