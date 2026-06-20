import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static late SharedPreferences prefs ;
  static  init()async{
    prefs = await SharedPreferences.getInstance();
  }

  static addrecentlist(){

}
  static getrecentlist(){

  }


}