import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/Utility.dart';

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    diableScreenRotation();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("পরামর্শ নিন"),
        actions: <Widget>[
          childPopup(context),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("ডাঃ মোহাম্মদ সরোয়ার জাহান"),
                        ),
                      ),
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("এমবিবিএস ডিএমইউ"),
                        ),
                      ),
                      Container(
                        height:40,
                        child: ListTile(
                          title: Text("01766887558"),
                          trailing: Icon(Icons.call,color: Colors.redAccent,),
                          onTap: (){
                            launch("tel://01766887558");
                          },
                        ),
                      ),
                      Container(
                        height:50,
                        child: ListTile(
                          title: Text("আইএমও এবং হোয়াটসঅ্যাপ নম্বর "),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("ডাঃ মোহাম্মদ সাজ্জাদ হোসেইন"),
                        ),
                      ),
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("এমবিবিএস"),
                        ),
                      ),
                      Container(
                        height:40,
                        child: ListTile(
                          title: Text("01764185264"),
                          trailing: Icon(Icons.call,color: Colors.redAccent,),
                          onTap: (){
                            launch("tel://01764185264");
                          },

                        ),
                      ),
                      Container(
                        height:50,
                        child: ListTile(
                          title: Text("আইএমও এবং হোয়াটসঅ্যাপ নম্বর "),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("ডাঃ আসিফুল হক"),
                        ),
                      ),
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("এমবিবিএস,এমডি"),
                        ),
                      ),
                      Container(
                        height:40,
                        child: ListTile(
                          title: Text("01771478881"),
                          trailing: Icon(Icons.call,color: Colors.redAccent,),
                          onTap: (){
                            launch("tel://01771478881");
                          },

                        ),
                      ),
                      Container(
                        height:50,
                        child: ListTile(
                          title: Text("আইএমও এবং হোয়াটসঅ্যাপ নম্বর "),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("ডাঃ এইচ এম ওমর ফারুক"),
                        ),
                      ),
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("এমবিবিএস"),
                        ),
                      ),
                      Container(
                        height:40,
                        child: ListTile(
                          title: Text("01916179418"),
                          trailing: Icon(Icons.call,color: Colors.redAccent,),
                          onTap: (){
                            launch("tel://01916179418");
                          },

                        ),
                      ),
                      Container(
                        height:50,
                        child: ListTile(
                          title: Text("আইএমও এবং হোয়াটসঅ্যাপ নম্বর "),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("ডাঃ সাবিনা সুমি"),
                        ),
                      ),
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("এমবিবিএস,সিসিডি, সিএমইউ"),
                        ),
                      ),
                      Container(
                        height:40,
                        child: ListTile(
                          title: Text("01764394931"),
                          trailing: Icon(Icons.call,color: Colors.redAccent,),
                          onTap: (){
                            launch("tel://01764394931");
                          },

                        ),
                      ),
                      Container(
                        height:50,
                        child: ListTile(
                          title: Text("আইএমও এবং হোয়াটসঅ্যাপ নম্বর "),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("ডাঃ ফাহমিদা হক কোনোক"),
                        ),
                      ),
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("এমবিবিএস,সিসিডি,ডিএমইউ"),
                        ),
                      ),
                      Container(
                        height:40,
                        child: ListTile(
                          title: Text("01758699377"),
                          trailing: Icon(Icons.call,color: Colors.redAccent,),
                          onTap: (){
                            launch("tel://01758699377");
                          },

                        ),
                      ),
                      Container(
                        height:50,
                        child: ListTile(
                          title: Text("আইএমও এবং হোয়াটসঅ্যাপ নম্বর "),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("ডাঃ নীলারদী গুপ্ত হিমেল"),
                        ),
                      ),
                      Container(
                        height:30,
                        child: ListTile(
                          title: Text("এমবিবিএস"),
                        ),
                      ),
                      Container(
                        height:40,
                        child: ListTile(
                          title: Text("01798505025"),
                          trailing: Icon(Icons.call,color: Colors.redAccent,),
                          onTap: (){
                            launch("tel://01798505025");
                          },

                        ),
                      ),
                      Container(
                        height:50,
                        child: ListTile(
                          title: Text("আইএমও এবং হোয়াটসঅ্যাপ নম্বর "),
                        ),
                      )
                    ],
                  ),
                )

          ],
        ),
      ),
    );
  }

}