import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/style/assets_manger.dart';
import 'package:islami/style/color_manger.dart';
import 'package:islami/style/string_manger.dart';
import 'package:islami/ui/home/tabs/hades_taps.dart';
import 'package:islami/ui/home/tabs/qran_taps.dart';
import 'package:islami/ui/home/tabs/radio_taps.dart';
import 'package:islami/ui/home/tabs/sepha_taps.dart';
import 'package:islami/ui/home/tabs/time_taps.dart';

class homescreen extends StatefulWidget {
  static const String routeName = "home";
  homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int selectindex = 0;
  List<Widget>taps = [
    qran_taps(),
    hades_taps(),
    sepha_taps(),
    radio_taps(),
    time_taps(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_manger.scandery,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: NavigationBar(
      selectedIndex: selectindex,
      onDestinationSelected: (index){
        setState(() {
          selectindex = index ;
        });
      },
      backgroundColor: color_manger.primary,
      indicatorColor: color_manger.navItemsback,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      destinations: [
        NavigationDestination(
            icon: SvgPicture.asset(
              assets_manger.qurantaps1,
              colorFilter:
                  ColorFilter.mode(color_manger.scandery, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              assets_manger.qurantaps1,
              colorFilter:
                  ColorFilter.mode(color_manger.teritary, BlendMode.srcIn),
            ),
            label: strings_manger.qurantaps1),
        NavigationDestination(
            icon: SvgPicture.asset(
              assets_manger.qurantaps,
              colorFilter:
                  ColorFilter.mode(color_manger.scandery, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              assets_manger.qurantaps,
              colorFilter:
                  ColorFilter.mode(color_manger.teritary, BlendMode.srcIn),
            ),
            label: strings_manger.Hadith),
        NavigationDestination(
            icon: SvgPicture.asset(
              assets_manger.siphataps,
              colorFilter:
                  ColorFilter.mode(color_manger.scandery, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              assets_manger.siphataps,
              colorFilter:
                  ColorFilter.mode(color_manger.teritary, BlendMode.srcIn),
            ),
            label: strings_manger.sebha),
        NavigationDestination(
            icon: SvgPicture.asset(
              assets_manger.radio,
              colorFilter:
                  ColorFilter.mode(color_manger.scandery, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              assets_manger.radio,
              colorFilter:
                  ColorFilter.mode(color_manger.teritary, BlendMode.srcIn),
            ),
            label: strings_manger.radio),
        NavigationDestination(
            icon: SvgPicture.asset(
              assets_manger.timetaps,
              colorFilter:
                  ColorFilter.mode(color_manger.scandery, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              assets_manger.timetaps,
              colorFilter:
                  ColorFilter.mode(color_manger.teritary, BlendMode.srcIn),
            ),
            label: strings_manger.time),
      ],
    ),
        body: taps[selectindex],
    );
  }
}
