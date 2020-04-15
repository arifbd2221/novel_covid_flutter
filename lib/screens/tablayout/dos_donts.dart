import 'package:flutter/material.dart';
import 'package:novelcovid/utils/Utility.dart';
import './dos.dart';
import './if_sick.dart';
import './rumours_myths.dart';

class DosDonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    diableScreenRotation();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "নিজেকে রক্ষা",),
                Tab(text: "অসুস্থ হলে",),
                Tab(text: "গুজব,কাল্পনিক",)
              ],
            ),
            title: Text('করণীয়'),
            actions: <Widget>[
              childPopup(context),
            ],
            backgroundColor: Colors.indigo,
          ),
          body: TabBarView(
            children: [
              DOS(),
              IFSick(),
              Rumours(),
            ],
          ),
        ),
      ),
    );
  }
}