import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import '../service/remote_bd_world.dart';
import 'package:novelcovid/models/country_report.dart';
import 'package:html_color/html_color.dart';
import 'package:share/share.dart';
import '../utils/Utility.dart';


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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

    return fetchBD_WorldReports().then((_user) {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("কোভিড-১৯"),
        actions: <Widget>[
          childPopup(context),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
        child: RefreshIndicator(
          key: _refreshIndicatorKey,
          onRefresh: _refresh,
          child: getListView(countryList),
        ),
      ),
    );
  }


  ListView getListView(List<CountryReport> countryList) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEE d MMM').format(now);

    int t_bd_deaths = 0;
    int t_bd_confimed = 0;
    int t_bd_recovered = 0;

    int bd_deaths = 0;//countryList[0].deaths;
    int bd_confimed = 0;//countryList[0].confirmed;
    int bd_recovered = 0;//countryList[0].recovered;

    int world_deaths = 0;//countryList[0].deaths;
    int world_confirmed = 0;
    int world_recovered = 0;//countryList[0].recovered;


    if (countryList != null){
      int i=0;
      for (CountryReport c in countryList){
            if(i==0){
              bd_deaths=c.deaths;
              bd_confimed=c.confirmed;
              bd_recovered=c.recovered;
            }
            if (i==1){
              t_bd_deaths=c.deaths;
              t_bd_confimed=c.confirmed;
              t_bd_recovered=c.recovered;
            }
            else {
              world_deaths = c.deaths;
              world_confirmed = c.confirmed;
              world_recovered = c.recovered;
            }
            i++;
      }

    }

    return ListView(
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(5.0),
                width: 170,
                height: 50,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share),
                      color: Colors.pinkAccent,
                      onPressed: () {
                        //print("clicked");
                        final RenderBox box = context.findRenderObject();
                        Share.share('''
                        বাংলাদেশ -> আজকের মৃত্যুর সংখ্যা : $t_bd_deaths ,আজকে নিশ্চিত হয়েছে : $t_bd_confimed,
                        মোট মৃত্যুর সংখ্যা : $bd_deaths ,মোট নিশ্চিত হয়েছে : $bd_confimed,মোট আরোগ্য হয়েছে : $bd_recovered ($formattedDate)
                        ''',
                            subject: "COVID-19",
                            sharePositionOrigin:
                            box.localToGlobal(Offset.zero) &
                            box.size);
                      },
                    ),
                    Container(
                      width: 10,
                    ),
                    Text("বাংলাদেশ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              height: 25,
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.people,color: Colors.red,),
                      title: Text("মৃত্যুর সংখ্যা : $t_bd_deaths",style: TextStyle(fontSize: 17.0,color: Colors.black)),
                      subtitle: Text(formattedDate,style: TextStyle(fontSize: 10.0,color: Colors.black)),
                      trailing: Text("আজকের",style: TextStyle(color: Colors.indigoAccent)),
                    )
                  ],
                )
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.warning,color: Colors.redAccent,),
                      title: Text("নিশ্চিত হয়েছে : $t_bd_confimed",style: TextStyle(fontSize: 17.0,color: Colors.black)),
                      subtitle: Text(formattedDate,style: TextStyle(fontSize: 10.0,color: Colors.black)),
                      trailing: Text("আজকের",style: TextStyle(color: Colors.indigoAccent)),
                    )
                  ],
                )
            ),
            Container(
              height: 20,
              child: Center(
                child: Icon(Icons.arrow_downward,color: Colors.pinkAccent,),
              ),
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.people,color: Colors.red,),
                      title: Text("মোট মৃত্যুর সংখ্যা : $bd_deaths",style: TextStyle(fontSize: 17.0,color: Colors.black)),
                      subtitle: Text(formattedDate,style: TextStyle(fontSize: 10.0,color: Colors.black)),
                    )
                  ],
                )
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.warning,color: Colors.redAccent,),
                      title: Text("মোট নিশ্চিত হয়েছে : $bd_confimed",style: TextStyle(fontSize: 17.0,color: Colors.black)),
                      subtitle: Text(formattedDate,style: TextStyle(fontSize: 10.0,color: Colors.black)),
                    )
                  ],
                )
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.people,color: Colors.green,),
                      title: Text("মোট আরোগ্য হয়েছে : $bd_recovered",style: TextStyle(fontSize: 17.0,color: Colors.black)),
                      subtitle: Text(formattedDate,style: TextStyle(fontSize: 10.0,color: Colors.black)),
                    )
                  ],
                )
            ),
          ],
        ),
        Container(
          height: 30,
        ),
        Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(5.0),
                width: 200,
                height: 50,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.share),
                      color: Colors.pinkAccent,
                      onPressed: (){
                        final RenderBox box = context.findRenderObject();
                        Share.share("ওয়ার্ল্ড রিপোর্ট -> মোট মৃত্যুর সংখ্যা : $world_deaths,মোট নিশ্চিত হয়েছে : $world_confirmed, মোট আরোগ্য হয়েছে : $world_recovered ($formattedDate)",
                            subject: "COVID-19",
                            sharePositionOrigin:
                            box.localToGlobal(Offset.zero) &
                            box.size);
                      },
                    ),
                    Container(
                      width: 10,
                    ),
                    Text("ওয়ার্ল্ড রিপোর্ট",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              height: 20,
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.people,color: Colors.red,),
                      title: Text("মোট মৃত্যুর সংখ্যা : $world_deaths",style: TextStyle(fontSize: 17.0,color: Colors.black)),
                      subtitle: Text(formattedDate,style: TextStyle(fontSize: 10.0,color: Colors.black)),
                    )
                  ],
                )
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.warning,color: Colors.redAccent,),
                      title: Text("মোট নিশ্চিত হয়েছে : $world_confirmed",style: TextStyle(fontSize: 17.0,color: Colors.black)),
                      subtitle: Text(formattedDate,style: TextStyle(fontSize: 10.0,color: Colors.black)),
                    )
                  ],
                )
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                color: HTMLColor.hex('F1F1F1'),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.people,color: Colors.green,),
                      title: Text("মোট আরোগ্য হয়েছে : $world_recovered",style: TextStyle(fontSize: 17.0,color: Colors.black)),
                      subtitle: Text(formattedDate,style: TextStyle(fontSize: 10.0,color: Colors.black)),
                    )
                  ],
                )
            )
          ],
        )
      ],
    );
  }







}