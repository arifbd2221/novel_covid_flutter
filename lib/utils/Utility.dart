import 'dart:io';

import 'package:flutter/material.dart';
import '../screens/references.dart';
import '../screens/about_us.dart';
import 'package:flutter/services.dart';

Future<bool> checkConnection() async{
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}

void showDialogOnInternet(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("কোন ইন্টারনেট নেই"),
          content: Container(
            height: 100,
            width: 200,
            child: Text(
                "বর্তমান তথ্য আনতে দয়া করে ইন্টারনেটের সাথে সংযুক্ত হন"
            ),
          ),
        );
      }
  );
}


Widget childPopup(BuildContext context) => PopupMenuButton<int>(
  onSelected: (result){
    if (result == 0){
      showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("রেফারেন্স"),
              content: Container(
                height: 350,
                width: 300,
                child: Refrences(),
              ),
            );
          }
      );
    }

    if (result == 1){
      showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("ডেভেলপার সম্পর্কে"),
              content: Container(
                height: 250,
                width: 300,
                child: About(),
              ),
            );
          }
      );
    }
  },
  itemBuilder: (context) => [
    PopupMenuItem(
      value: 0,
      child: new Text("রেফারেন্স", style: TextStyle(
          color: Colors.black87
      ),),

    ),
    PopupMenuItem(
      value: 1,
      child: new Text("ডেভেলপার সম্পর্কে", style: TextStyle(
          color: Colors.black87
      ),),
    ),
  ],
);



void diableScreenRotation(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}