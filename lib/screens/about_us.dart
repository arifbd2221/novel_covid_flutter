import 'package:flutter/material.dart';
import 'package:html_color/html_color.dart';

class About extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.perm_contact_calendar,color: Colors.pinkAccent,),
          title: Text("মহিদুল হক আরিফ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87)),
          subtitle: Text("http://arifbd2221.pythonanywhere.com/",style: TextStyle(color: Colors.black87),),
        ),
        ListTile(
          leading: Icon(Icons.email,color: Colors.pinkAccent),
          title: Text("mohidulhoque216@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
          subtitle: Text('''ইমেলের মাধ্যমে যোগাযোগ করুন''',style: TextStyle(color: Colors.black87)),
        ),
        ListTile(
          leading: Icon(Icons.school,color: Colors.pinkAccent),
          title: Text("সফ্টওয়্যার প্রকৌশল",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87)),
          subtitle: Text('''ড্যাফোডিল আন্তর্জাতিক বিশ্ববিদ্যালয়''',style: TextStyle(color: Colors.black87)),
        )
      ],
    );
  }

}