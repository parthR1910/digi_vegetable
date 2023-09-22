import 'package:shared_preferences/shared_preferences.dart';

class SharePrefService{

  SharePrefService._private();
  static SharePrefService prefService = SharePrefService._private();
  late SharedPreferences pref;

  Future<void> init()async{
    pref =  await SharedPreferences.getInstance();
  }

  // List<String> getData(String key) {
  //   return pref.getStringList(key)?? [];
  // }
    bool getBool(String key) {
    return pref.getBool(key)?? false;
  }

  // Future<void> setData(String key,List<String> value) async{
  //   pref.setStringList(key, value);
  // }
  Future<void> setBool(String key,bool value) async{
    pref.setBool(key, value);
  }

}