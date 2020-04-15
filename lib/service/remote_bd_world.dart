import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/country_report.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;



void cacheData(
    int t_bd_deaths,int t_bd_confirmed,int t_bd_recovered,
    int bd_deaths,int bd_confimed,int bd_recovered,int world_deaths,
    int world_confirmed ,int world_recovered) async{

  SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setInt('t_bd_deaths', t_bd_deaths);
  await prefs.setInt('t_bd_confirmed', t_bd_confirmed);
  await prefs.setInt('t_bd_recovered', t_bd_recovered);

  await prefs.setInt('bd_deaths', bd_deaths);
  await prefs.setInt('bd_confimed', bd_confimed);
  await prefs.setInt('bd_recovered', bd_recovered);

  await prefs.setInt('world_deaths', world_deaths);
  await prefs.setInt('world_confirmed', world_confirmed);
  await prefs.setInt('world_recovered', world_recovered);

  debugPrint("cache setup ok");
}


Future<List<CountryReport>> getCacheData() async{
  List<CountryReport> list = new List<CountryReport>();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  int t_bd_deaths = await prefs.getInt('t_bd_deaths');
  int t_bd_confirmed = await prefs.getInt('t_bd_confirmed');
  int t_bd_recovered = await prefs.getInt('t_bd_recovered');

  int bd_deaths = await prefs.getInt('bd_deaths');
  int bd_confimed = await prefs.getInt('bd_confimed');
  int bd_recovered = await prefs.getInt('bd_recovered');

  int world_deaths = await prefs.getInt('world_deaths');
  int world_confirmed = await prefs.getInt('world_confirmed');
  int world_recovered = await prefs.getInt('world_recovered');

  list.add(new CountryReport.fromCountryReport("BD",0,bd_confimed,bd_deaths,bd_recovered));
  list.add(new CountryReport.fromCountryReport("BD",0,t_bd_confirmed,t_bd_deaths,t_bd_recovered));
  list.add(new CountryReport.fromCountryReport("WD",0,world_confirmed,world_deaths,world_recovered));

  return list;
}


Future<List<CountryReport>> fetchBD_WorldReports() async {

  final bdAPIUrl = 'https://covid19apis.herokuapp.com/api/v2/nation/bangladesh/';
  final bdNow = 'https://covid19apis.herokuapp.com/api/v2/daily/bangladesh/';
  final worldAPIUrl = 'https://covid19apis.herokuapp.com/api/v2/total/report/';

  try{
    final bdResponse = await http.get(bdAPIUrl);
    final bdNowResponse = await http.get(bdNow);
    final worldResponse = await http.get(worldAPIUrl);

    debugPrint("fetching data");


    if (bdResponse.statusCode == 200 && worldResponse.statusCode == 200 && bdNowResponse.statusCode == 200) {
      List bdjson = json.decode(bdResponse.body);
      List bdnowjson = json.decode(bdNowResponse.body);
      List worldJson = json.decode(worldResponse.body);
      List<CountryReport> bdjsonList =bdjson.map((country) => new CountryReport.fromJson(country)).toList();
      List<CountryReport> bdnowjsonList =bdnowjson.map((country) => new CountryReport.fromJson(country)).toList();
      List<CountryReport> worldJsonList =worldJson.map((country) => new CountryReport.fromJson(country)).toList();
      bdjsonList.add(bdnowjsonList[0]);
      bdjsonList.add(worldJsonList[0]);

      cacheData(
          bdnowjsonList[0].deaths,bdnowjsonList[0].confirmed,bdnowjsonList[0].recovered,
          bdjsonList[0].deaths, bdjsonList[0].confirmed, bdjsonList[0].recovered,
          worldJsonList[0].deaths,worldJsonList[0].confirmed, worldJsonList[0].recovered);

      return bdjsonList;
    } else {
      throw Exception('Failed to load country report from API');
    }


  }catch(socketException){
    debugPrint("has no data");

    Future<List<CountryReport>> list = getCacheData();

   return list;

  }



}


