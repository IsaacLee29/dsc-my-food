import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:my_food/constants/constants.dart';

import 'package:my_food/homepage/current_date.dart';
import 'package:my_food/homepage/home_page_first_section.dart';
import 'package:my_food/homepage/home_page_second_section.dart';

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
      backgroundColor: Constants.homePageDefaultBackgroundColor,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              Constants.homePageDefaultCircularRadius,
            ),
          ),
        ),
        backgroundColor: Constants.homePageDefaultColor,
        toolbarHeight: 100.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                // Alligns such that text in column starts from the left
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      this.myDashboard,
                      style: Constants.homePageDefaultTextStyle,
                    ),
                    // padding separates the top and bottom texts
                    padding: EdgeInsets.only(
                      bottom: 20.0,
                    ),
                  ),
                  CurrentDate(),
                ],
              ),
            ),
            Container(
              child: SizedBox(
                height: 100.0,
                width: 100.0,
                child: Image.asset(
                  'lib/image/Logo.png',
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          20,
        ),
        child: ListView(
          children: <Widget>[
            Divider(
              height: 30.0,
            ),
            HomePageFirstSection(),
            Divider(
              height: 30.0,
            ),
            HomePageSecondSection(),
            Divider(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
