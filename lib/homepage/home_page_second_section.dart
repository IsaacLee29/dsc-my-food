import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_food/constants/constants.dart';

import 'package:my_food/food/share_food.dart';
import 'package:my_food/map/main_map_screen.dart';
import 'package:my_food/donation/donation_main_page.dart';

/// Represents the second [Container] of the [HomePage]..
class HomePageSecondSection extends StatelessWidget {
  final double _heightAndWidth = 80.0;
  final String _discover = "Discover";

  final BoxDecoration _smallerContainerBoxDecoration = BoxDecoration(
    color: Colors.pink[50],
    borderRadius: BorderRadius.all(
      Radius.circular(
        Constants.homePageDefaultCircularRadius,
      ),
    ),
  );

  final Map<String, Icon> _namesIconsMap = {
    "Food Banks": Icon(
      FontAwesome.cutlery,
    ),
    "Make a Donation": Icon(
      FlutterIcons.charity_mco,
      size: 30.0,
    ),
    "Events Around You": Icon(
      FontAwesome5.map,
    )
  };
  final Map<String, Widget> _namesCallbackMap = {
    "Food Banks": ShareFood(),
    "Make a Donation": DonationMainPage(),
    "Events Around You": MapMainScreen(),
  };

  /// Builds the child [Widgets] of the second [Container].
  List<Widget> _getChildWidgets(BuildContext context) {
    List<Widget> childWidgets = [];
    for (var names in this._namesIconsMap.keys) {
      childWidgets.add(
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => this._namesCallbackMap[names],
            ),
          ),
          child: Container(
            height: this._heightAndWidth,
            width: this._heightAndWidth,
            decoration: this._smallerContainerBoxDecoration,
            child: Tooltip(
              message: names,
              child: this._namesIconsMap[names],
              preferBelow: false,
            ),
          ),
        ),
      );
    }
    return childWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.0,
      color: Constants.homePageDefaultBackgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              bottom: 10.0,
            ),
            alignment: Alignment.centerLeft,
            // The text is 23 pixels in height
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.only(
                    right: 10.0,
                  ),
                ),
                Text(
                  _discover,
                  style: Constants.homePageDefaultTextStyle,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(
              10.0,
            ),
            decoration: Constants.homePageDefaultCircularBoxDecoration,
            height: 145.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: this._getChildWidgets(context),
            ),
          ),
        ],
      ),
    );
  }
}
