import 'package:flutter/material.dart';
import 'package:my_food/food/theme_data.dart';
import 'package:my_food/homepage/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildThemeData(),
      title: 'My Food',
      home: LandingPage(),
    );
  }

}

