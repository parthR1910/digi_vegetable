import 'package:shared_preferences/shared_preferences.dart';

class SharePrefService{

  SharePrefService._private();
  static SharePrefService prefService = SharePrefService._private();
  late SharedPreferences pref;


  Future<void> init()async{
    pref =  await SharedPreferences.getInstance();
  }

  List<String> getData(String key) {
    return pref.getStringList(key)?? [];
  }

  Future<void> setData(String key,List<String> value) async{
    pref.setStringList(key, value);
  }

}