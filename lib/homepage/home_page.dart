import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'package:my_food/homepage/current_date.dart';
import 'package:my_food/homepage/home_page_first_section.dart';
import 'package:my_food/homepage/home_page_second_section.dart';

// Colors used
final Color defaultFontColor = Colors.black;
final Color defaultColor = Colors.deepOrange[100];
final Color defaultBackgroundColor = Colors.white;

// Sizes used
final double defaultCircularRadius = 10.0;
final double defaultFontSize = 20.0;

// Styles used
final TextStyle defaultTextStyle =
    TextStyle(fontSize: defaultFontSize, color: defaultFontColor);
final TextStyle secondaryTextStyle =
    TextStyle(fontSize: 15.0, color: defaultFontColor);
final BoxDecoration defaultContainerDecoration = BoxDecoration(
    color: defaultColor,
    borderRadius: BorderRadius.all(Radius.circular(defaultCircularRadius)));

/// Main application being build
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Google Developers Competition 2021",
      home: GoogleDeveloperHomePage(),
    );
  }
}

/// Represents the entire HomePage [Scaffold] containing differnt sections.
class GoogleDeveloperHomePage extends StatelessWidget {
  final String myDashboard = "My Dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultBackgroundColor,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(defaultCircularRadius),
          )),
          backgroundColor: defaultColor,
          toolbarHeight: 100.0,
          title: Row(children: <Widget>[
            Container(
                child: Column(
              // Alligns such that text in column starts from the left
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Text(this.myDashboard, style: defaultTextStyle),
                    // padding separates the top and bottom texts
                    padding: EdgeInsets.only(bottom: 20.0)),
                CurrentDate()
              ],
            )),
            Container(
                child: SizedBox(
                    height: 100.0,
                    width: 100.0,
                    child: Image.asset('lib/image/Logo.png')))
          ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(children: <Widget>[
              Divider(height: 30.0),
              HomePageFirstSection(),
              Divider(height: 30.0),
              HomePageSecondSection(),
              Divider(height: 30.0),
            ])));
  }
}
