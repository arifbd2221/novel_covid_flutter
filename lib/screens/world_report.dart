import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html_color/html_color.dart';
import 'package:novelcovid/models/country_report.dart';
import '../service/remote_data.dart';
import 'package:intl/intl.dart';
import '../utils/Utility.dart';


class WorldReport extends StatefulWidget{
  String appbarTitle;

  WorldReport(this.appbarTitle);

  @override
  _WorldReportState createState() => _WorldReportState();
}

class _WorldReportState extends State<WorldReport> {
  int count=5;

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  new GlobalKey<RefreshIndicatorState>();

  List<CountryReport> countryList = new List<CountryReport>(); // = fetchCountryReports() as List<CountryReport>;


  Future<List<CountryReport>> _refresh() {

    checkConnection().then((onValue) {
      if(onValue){
        debugPrint('connected');
      }
      else{
        debugPrint('not connected');
        showDialogOnInternet(context);
      }
    });

    return fetchCountryReports().then((_user) {
      setState(() => countryList = _user);
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _refreshIndicatorKey.currentState.show());
  }

  @override
  Widget build(BuildContext context) {
    diableScreenRotation();
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: Text("ওয়ার্ল্ড রিপোর্ট"),
        actions: <Widget>[
          childPopup(context),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(10.0),
          child: RefreshIndicator(
            key: _refreshIndicatorKey,
            onRefresh: _refresh,
            child: getListView(countryList),
          )
      ),
    );
  }

  ListView getListView(countryList) {
    return ListView.builder(itemCount: countryList.length,
        itemBuilder: (BuildContext context, int position) {
          DateTime now = DateTime.now();
          String formattedDate = DateFormat('EEE d MMM').format(now);

          return getListTiles(
              countryList[position].country, countryList[position].deaths,
              countryList[position].confirmed, countryList[position].recovered,formattedDate);
        });
  }

    Padding getListTiles(String country,int deaths,int confirmed,int recovered,String date) =>
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      child: ListTile(
                        title: Text("$country",style: TextStyle(fontSize: 20.0,color: Colors.black)),
                        trailing: (deaths > 10000)? Container(
                          height: 10,
                          width: 10,
                          color: Colors.red,
                        ) : null,
                      ),
                    ),
                    Container(
                      height: 30,
                      child: ListTile(
                        leading: Icon(Icons.people,color: Colors.red,),
                        title: Text("মৃত্যুর সংখ্যা : $deaths",style: TextStyle(fontSize: 15.0,color: Colors.black)),
                      ),
                    ),
                    Container(
                      height: 30,
                      child: ListTile(
                        leading: Icon(Icons.warning,color: Colors.redAccent,),
                        title: Text("নিশ্চিত হয়েছে : $confirmed",style: TextStyle(fontSize: 15.0,color: Colors.black)),
                      ),
                    ),
                    Container(
                      height: 30,
                      child: ListTile(
                        leading: Icon(Icons.people,color: Colors.green,),
                        title: Text("আরোগ্য হয়েছে : $recovered",style: TextStyle(fontSize: 15.0,color: Colors.black)),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ListTile(
                        leading: Icon(Icons.calendar_today,color: Colors.indigoAccent,),
                        title: Text(date,style: TextStyle(fontSize: 15.0,color: Colors.black)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
}