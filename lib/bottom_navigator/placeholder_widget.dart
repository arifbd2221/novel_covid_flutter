import 'package:flutter/material.dart';
import '../screens/home_screens.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: HomeScreen(),
    );
  }
}