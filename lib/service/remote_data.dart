import '../models/country_report.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


void cacheData(List jsonResponse) async{
  SharedPreferences shared_Country = await SharedPreferences.getInstance();

  jsonResponse.map((country) => new CountryReport.fromJson(country)).toList();
  int i=0;
  for (Map c in jsonResponse){
    String country = jsonEncode(CountryReport.fromJson(c));
    await shared_Country.setString("$i", country);
    i++;
  }

  await shared_Country.setInt("total", i);

}


Future<List<CountryReport>> getCacheData() async{
  SharedPreferences shared_Country = await SharedPreferences.getInstance();
  List<CountryReport> countryList = new List<CountryReport>();

  int length = shared_Country.getInt("total");

  for (int i=0; i<length; i++){
    Map m = jsonDecode(shared_Country.getString('$i'));
    countryList.add(CountryReport.fromJson(m));
  }

  return countryList;

}


Future<List<CountryReport>> fetchCountryReports() async {

  final jobsListAPIUrl = 'https://covid19apis.herokuapp.com/api/v2/world/report/';

  try{
    final response = await http.get(jobsListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);

      cacheData(jsonResponse);

      return jsonResponse.map((country) => new CountryReport.fromJson(country)).toList();
    } else {
      throw Exception('Failed to load country report from API');
    }

  }
  catch(se){
      return getCacheData();
  }

}