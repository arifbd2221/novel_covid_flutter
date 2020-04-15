import 'package:flutter/material.dart';
import './bottom_navigator/home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'কোভিড-১৯',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.indigo,
            accentColor: Colors.indigoAccent
        ),
      home: Home(),
    );
  }
}