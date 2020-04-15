import 'package:flutter/material.dart';
import 'package:html_color/html_color.dart';

class Refrences extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.info_outline,color: Colors.pinkAccent,),
          title: Text("বিশ্ব স্বাস্থ্য সংস্থা বাংলাদেশ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87)),
          subtitle: Text("https://www.who.int/bangladesh/",style: TextStyle(color: Colors.black87),),
        ),
        ListTile(
          leading: Icon(Icons.info_outline,color: Colors.pinkAccent),
          title: Text("CR_ROYLAB",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
          subtitle: Text('''Published by Google Sheets–Report Abuse–প্রতি 5 মিনিটে স্বয়ংক্রিয়ভাবে আপডেট হয়''',style: TextStyle(color: Colors.black87)),
        ),
        ListTile(
          leading: Icon(Icons.info_outline,color: Colors.pinkAccent),
          title: Text("CSSE COVID-19 Dataset",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87)),
          subtitle: Text('''https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data''',style: TextStyle(color: Colors.black87)),
        ),
        ListTile(
          leading: Icon(Icons.info_outline,color: Colors.pinkAccent),
          title: Text("ভয়েস অফ হিউম্যানিটি ফাউন্ডেশন",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87)),
          subtitle: Text('''https://vhbd.org.com/''',style: TextStyle(color: Colors.black87)),
        )
      ],
    );
  }

}